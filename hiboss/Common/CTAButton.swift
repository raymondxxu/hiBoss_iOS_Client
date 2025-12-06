//
//  CTAButton.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-09-21.
//

import SwiftUI

struct CTAButton: View {
    
    var action: () -> Void
    var title: String
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 16))
                .foregroundStyle(.white)
        }.frame(height: 52)
            .frame(maxWidth: Const.screenWidthWithPadding)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle( Color(hex: "#3665EF"))
                .shadow(radius: 5, x: 5, y: 5)
        }
    }
}

#Preview {
    CTAButton(action: { print("hello world") }, title: String(localized: "landing.button.job"))
}

