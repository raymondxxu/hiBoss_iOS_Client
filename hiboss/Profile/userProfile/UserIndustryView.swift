//
//  UserIndustryView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-12-13.
//

import SwiftUI

struct UserIndustryView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("What's your industry?")
                .font(.custom("Futura", size: 28))
            Text("Please tell us the industry you are in so we can match you and your dream job quickly")
                .font(.custom("PingFang", size: 18.7))
            ChipView(content: ["IT",
                               "software",
                               "Digital",
                               "Manufacturing",
                               "Industrial",
                               "Engineering",
                               "Banking",
                               "Finance",
                               "Insurance"])
            
            Button(action: {
                
            }, label: {
                Text("Next Step")
                    .font(.custom("PingFang", size: 18))
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
            })
            .frame(maxWidth: .infinity)
            .frame(height: 63)
            .background {
                RoundedRectangle(cornerRadius: 14)
                    .foregroundStyle( Color(hex: "#3665EF"))
            }
            .padding(.vertical, 24)
        }.padding()
    }
}

#Preview {
    UserIndustryView()
}
