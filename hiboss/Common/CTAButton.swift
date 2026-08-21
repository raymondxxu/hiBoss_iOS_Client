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
                .foregroundStyle(backgroundColor)
                
                
        }
    }
}

#Preview {
    CTAButton(action: { print("hello world") },
              title: String(localized: "landing.button.job"),
              style: .primary)
}

