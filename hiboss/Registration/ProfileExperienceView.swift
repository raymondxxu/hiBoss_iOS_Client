//
//  ProfileExperienceView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-10-12.
//

import SwiftUI

struct ProfileExperienceView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("What is your industry?")
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
            Text("Please tell us the industry you are in so we can match your dream job quickly")
                .font(.system(size: 16))
                .padding([.top, .bottom], 8)
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
            Spacer()
        }.padding()
    }
}

#Preview {
    ProfileExperienceView()
}
