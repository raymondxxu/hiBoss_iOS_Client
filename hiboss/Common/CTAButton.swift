//
//  CTAButton.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-09-21.
//

import SwiftUI

struct CTAButton: View {
    
    enum Style {
        case primary, secondary
    }
    
    var action: () -> Void
    var title: String
    var style: Style = .primary
    
    var foregroundTextColor: Color {
        return style == .primary ? .white : Theme.primaryColor
    }
    
    var backgroundColor: Color {
        return style == .primary ? Theme.primaryColor : .white
    }
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Font.PingFang(with: 18.77))
                .fontWeight(.semibold)
                .foregroundStyle(foregroundTextColor)
        }.frame(height: 63)
            .frame(maxWidth: Const.screenWidthWithPadding)
        .background {
            RoundedRectangle(cornerRadius: 14.08)
                .stroke(foregroundTextColor)
                .fill(backgroundColor)
                
                
        }
    }
}

struct SkewedTabShape: Shape {
    var isSelected: Bool

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        let cornerRadius: CGFloat = 20

        // Top-left rounded corner
        path.move(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: 0, y: cornerRadius))
        path.addQuadCurve(to: CGPoint(x: cornerRadius, y: 0), control: CGPoint(x: 0, y: 0))
        
        // Top edge
        path.addLine(to: CGPoint(x: width - 25, y: 0))
        
        // Right side angled cut with a smooth curve at the bottom connection
        path.addCurve(
            to: CGPoint(x: width, y: height),
            control1: CGPoint(x: width - 5, y: 0),
            control2: CGPoint(x: width - 2, y: height - 10)
        )
        
        path.closeSubpath()
        return path
    }
}

struct CustomTabRow: View {
    @State private var selectedTab = 0

    var body: some View {
        HStack(spacing: -14) {
            Button(action: { selectedTab = 0 }) {
                Text("interviews")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(selectedTab == 0 ? .white : .primary)
                    .frame(height: 48)
                    .padding(.horizontal, 32)
                    .background(selectedTab == 0 ? Theme.primaryColor : Color(.systemGray6))
                    .clipShape(SkewedTabShape(isSelected: selectedTab == 0))
            }
            .zIndex(selectedTab == 0 ? 2 : 1)

            Button(action: { selectedTab = 1 }) {
                Text("greetings")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(selectedTab == 1 ? .white : .primary)
                    .frame(height: 48)
                    .padding(.horizontal, 32)
                    .background(selectedTab == 1 ? Theme.primaryColor : Color(.systemGray6))
                    .clipShape(SkewedTabShape(isSelected: selectedTab == 1))
            }
            .zIndex(selectedTab == 1 ? 2 : 1)
        }
        
    }
}
#Preview {
    VStack {
        CustomTabRow()
            
    }.background(Color(.yellow))
}
#Preview {
    CTAButton(action: { print("hello world") },
                title: String(localized: "landing.button.job"),
                style: .primary)
}

