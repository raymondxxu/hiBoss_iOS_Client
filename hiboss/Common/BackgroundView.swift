//
//  BackgroundView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-11-11.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            // 1) base wash (very light blue → white)
            LinearGradient(
                colors: [Color(hex: 0xEEF4FF), .white],
                startPoint: .top, endPoint: .bottom
            )

            // 2) big blurry blobs
            Circle()
                .fill(Color(hex: 0x8AA5FF))           // soft blue
                .frame(width: 460, height: 460)
                .blur(radius: 160)
                .offset(x: -120, y: -60)

            Circle()
                .fill(Color(hex: 0xCBB7FF))           // lilac
                .frame(width: 420, height: 420)
                .blur(radius: 170)
                .offset(x: 190, y: -40)

            Circle()
                .fill(Color.white)                     // brightening at bottom
                .frame(width: 520, height: 520)
                .blur(radius: 180)
                .offset(y: 260)
                .opacity(0.7)
        }
        .ignoresSafeArea()
    }
}


struct LightBackgroundView: View {
    var headerHeight: CGFloat = 220

    var body: some View {
        ZStack {
            // Page surface (very light grey, like the screenshot body)
            Color(hex: 0xF3F6FA)

            // Top misty header
            VStack(spacing: 0) {
                ZStack {
                    // gentle sky → white
                    LinearGradient(
                        colors: [Color(hex: 0xEAF3FF), .white.opacity(0.85)],
                        startPoint: .top, endPoint: .bottom
                    )

                    // blurry color blobs to give that “soft cloud” look
                    Circle()
                        .fill(Color(hex: 0x9DBBFF))
                        .frame(width: 420, height: 420)
                        .blur(radius: 140)
                        .offset(x: 120, y: -140)
                        .opacity(0.55)

                    Circle()
                        .fill(Color(hex: 0xF6F8FA)) // very light lilac
                        .frame(width: 360, height: 360)
                        .blur(radius: 150)
                        .offset(x: -140, y: -120)
                        .opacity(0.45)
                }
                .frame(height: headerHeight)
                .mask(
                    LinearGradient(
                        colors: [.white, .white, .clear],
                        startPoint: .top, endPoint: .bottom
                    )
                )
                Spacer()
            }
        }.ignoresSafeArea()

    }
}


#Preview {
    BackgroundView()
}

#Preview {
    LightBackgroundView()
}
