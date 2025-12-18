//
//  ChipView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-10-10.
//

import SwiftUI

fileprivate struct RowWrapper: Identifiable {
    let id = UUID()
    let index: Int
    let row: [String]
}


struct ChipView: View {
    
    var content: [String]
    let padding: CGFloat = 28 
    
    let backgroundColor = Color(hex: "#F4F6F8")
    
    private func textWidth(for text: String) -> CGFloat {
        let attribute: [NSAttributedString.Key: Any] = [.font: UIFont.systemFont(ofSize: 14)]
        let size = (text as NSString).size(withAttributes: attribute)
        return size.width + 32
    }
    
    func calculateRows(_ geo: GeometryProxy) -> [[String]] {
        var rows = [[String]]()
        var currentRow = [String]()
        var rowWidth: CGFloat = 0
        let maxWidth: CGFloat = geo.size.width - 32
        
        for item in content {
            var itemWidth = textWidth(for: item)
            
            if currentRow.count > 1 {
                itemWidth += padding + +8
            }
            
            if rowWidth + itemWidth > maxWidth {
                rows.append(currentRow)
                currentRow = [item]
                rowWidth = itemWidth
            } else {
                currentRow.append(item)
                rowWidth += itemWidth
            }
        }
        
        if !currentRow.isEmpty {
            rows.append(currentRow)
        }
        return rows
    }
    
    var body: some View {
        ScrollView {
            GeometryReader { geo in
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(calculateRows(geo).enumerated().map { RowWrapper(index: $0.offset, row: $0.element)}) { row in
                        HStack(alignment: .center, spacing: 8) {
                            ForEach(row.row, id: \.self) { item in
                                Text(item)
                                    .font(.custom("PingFang", size: 17))
                                    .foregroundStyle(Color(hex: "#999999"))
                                    .padding(.vertical, 14)
                                    .padding(.horizontal, padding)
                                    .background {
                                        Capsule()
                                            .fill(backgroundColor)
                                    }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ChipView(content: ["IT",
                       "software",
                       "Digital",
                       "Manufacturing",
                       "Industrial",
                       "Engineering",
                       "Banking",
                       "Finance",
                       "Insurance"])
}

