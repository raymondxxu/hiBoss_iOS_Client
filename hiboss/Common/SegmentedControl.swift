//
//  SegmentedControl.swift
//  hiboss
//
//  Created by Raymond Xu on 2026-08-21.
//

import SwiftUI

enum SegmentedOption {
    
    case alreadySaidHi
    case collectedPosition
    case pendingMatters
}

struct SegmentedControlOption: View {
    
    let optionImg: String
    let optionTitle: String
    let optionNumber: String
    let isSelected: Bool
    let onSelect: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Image(optionImg)
                    .resizable()
                    .frame(width: 21, height: 21)
                Text(optionNumber)
                    .font(.custom("Futura", size: 28))
            }
            Text(optionTitle)
                .font(.custom("PingFang", size: 13))
                .background {
                    if isSelected {
                        VStack {
                            Spacer()
                            Rectangle()
                                .fill(.themeMain)
                                .frame(height: 1)
                        }
                    }
                }
        }
        .contentShape(Rectangle())
        .onTapGesture { onSelect() }
    }
}

struct SegmentedControl: View {
    
    @State var selection: SegmentedOption = .alreadySaidHi {
        willSet {
            onSelect(newValue)
        }
    }
    
    var onSelect: ((SegmentedOption) -> Void)
    
    var body: some View {
        HStack {
            SegmentedControlOption(optionImg: "hi",
                                   optionTitle: "Already said Hi",
                                   optionNumber: "123",
                                   isSelected: selection == .alreadySaidHi, onSelect: { selection = .alreadySaidHi
            })
            Spacer()
            SegmentedControlOption(optionImg: "star", optionTitle: "Collected Positions", optionNumber: "123", isSelected: selection == .collectedPosition, onSelect: { selection = .collectedPosition })
            Spacer()
            SegmentedControlOption(optionImg: "doc", optionTitle: "Pending matters", optionNumber: "123", isSelected: selection == .pendingMatters, onSelect: { selection = .pendingMatters })
        }
        .padding(.horizontal, 8)
        .frame(maxHeight: 112)
        .background(
            RoundedRectangle(cornerRadius: 14)
                .fill(.white)
        )
        .padding(.horizontal, 20)

    }
}

#Preview {
    VStack {
        SegmentedControl() { newValue in
            print(newValue)
        }
        Spacer()
    }  .background(.yellow)
}
