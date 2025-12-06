//
//  ProfileIndustryView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-10-12.
//

import SwiftUI

struct ProfileIndustryView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("What is your industry?")
                .font(.system(size: 24))
            Text("Please tell us the industry you are in so we can match your dream job quickly")
                .font(.system(size: 16))
                .padding([.top, .bottom], 8)
            Spacer()
            ChipView(content: ["IT",
                               "software",
                               "Digital",
                               "Manufacturing",
                               "Industrial",
                               "Engineering",
                               "Banking",
                               "Finance",
                               "Insurance"])
            CTAButton(action: {
                
            }, title: "Next")
                
        }.padding()
    }
}

#Preview {
    ProfileIndustryView()
}
