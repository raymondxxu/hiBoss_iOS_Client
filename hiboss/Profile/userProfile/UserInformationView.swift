//
//  UserInformationView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-12-06.
//

import SwiftUI

struct UserInformationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Basic information")
                    .font(.custom("Futura", size: 28))
                Spacer()
            }
            HStack {
                Text("Avatar")
                    .font(.custom("Futura", size: 17))
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 37, height: 37)
                Image(systemName: "camera.circle")
                    .resizable()
                    .frame(width: 37, height: 37)
            }
            Text("Name")
                .font(.custom("Futura", size: 17))
            HStack {
                Text("please select your name")
                    .font(.custom("PingFang", size: 17))
                    .foregroundStyle(Color(hex: "#999999"))
                    .padding(.leading, 18)
                Spacer()
                Image(systemName: "chevron.down")
                    .padding(.trailing, 46)
            }.padding(.vertical)
                .background {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(Color(hex: "#F4F6F8"))
                }
            Spacer()
        }.padding([.top, .bottom])
         .padding([.horizontal], 31)
    }
}

#Preview {
    UserInformationView()
}
