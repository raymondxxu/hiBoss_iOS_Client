//
//  ProfileCreationVIew.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-10-04.
//

import SwiftUI

struct ProfileCreationLocationView: View {
    
    @State var selection: String = ""
    @State var shouldShowList: Bool = true
    @State var hight: CGFloat = 0
    let title: String = String(format: String(localized: "profile.select"),
                               String(localized: "profile.province"))
    let textColor = Color(red: 129/255, green: 136/255, blue: 152/255)
    let borderColor = Color(red: 223/255, green: 225/255, blue: 231/255)
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Where Do you want to work?")
                .font(.system(size: 24))
            Text("Let us know where we should help you to search for your dream job")
                .font(.system(size: 14))
                .foregroundStyle(textColor)
                .padding(.top, 8)
                .padding(.bottom, 32)
            ZStack(alignment: .top) {
                HStack {
                    Spacer()
                    Button(action: {}, label: {
                        Label("User my current lcoation",
                              systemImage: "location")
                    })
                    .tint(.white)
                    .padding()
                    .frame(height: 42)
                    .background {
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundStyle(.themeSecondary)
                            .shadow(radius: 5, x: 5, y: 5)
                    }
                    Spacer()
                } .offset(y: hight * 3 + 128)
                ForEach(0..<3) { i in
                    VStack(alignment: .leading, spacing: 8) {
                        Text(String(localized: "profile.sub-district").capitalized)
                        DropDownMenu(title: "Please select your province")
                    }  .padding(.bottom, 32)
                        .offset(y: hight * 2 + 64)
                    VStack(alignment: .leading, spacing: 8) {
                        Text(String(localized: "profile.district").capitalized)
                        DropDownMenu(title: "Please select your province")
                            .zIndex(2)
                    }.offset(y: hight + 32)
                        .padding(.bottom, 32)
                    VStack(alignment: .leading, spacing: 8) {
                        Text(String(localized: "profile.province").capitalized)
                        DropDownMenu(title: "Please select your province")
                            .zIndex(3)
                    }.overlay{
                        GeometryReader { geo in
                            Color.clear
                                .onAppear {
                                    hight = geo.frame(in: .global).height
                                }
                        }
                    }
                    .padding(.bottom, 32)
                }
            }
            Spacer()
            CTAButton(action: {
                print("hello world")
            }, title: "Next Step")
        }.padding()
    }
}

#Preview {
    ProfileCreationLocationView()
}
