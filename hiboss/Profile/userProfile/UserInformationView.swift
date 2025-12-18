//
//  UserInformationView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-12-06.
//

import SwiftUI

struct UserInformationView: View {
    var body: some View {
        ScrollView {
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
                Text("name")
                    .font(.custom("Futura", size: 17))
                HStack {
                    Text("please select your name")
                        .font(.custom("PingFang", size: 17))
                        .foregroundStyle(Color(hex: "#999999"))
                        .padding(.leading, 18)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundStyle(Color(hex: "#999999"))
                        .padding(.trailing, 46)
                }.padding(.vertical)
                    .background {
                        RoundedRectangle(cornerRadius: 14)
                            .fill(Color(hex: "#F4F6F8"))
                    }
                Text("gender")
                    .font(.custom("Futura", size: 17))
                    .padding(.top, 24)
                HStack {
                    Text("please select your gender")
                        .font(.custom("PingFang", size: 17))
                        .foregroundStyle(Color(hex: "#999999"))
                        .padding(.leading, 18)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundStyle(Color(hex: "#999999"))
                        .padding(.trailing, 46)
                }.padding(.vertical)
                    .background {
                        RoundedRectangle(cornerRadius: 14)
                            .fill(Color(hex: "#F4F6F8"))
                    }
                Text("date of birth")
                    .font(.custom("Futura", size: 17))
                    .padding(.top, 24)
                HStack {
                    Text("please select your date of birth")
                        .font(.custom("PingFang", size: 17))
                        .foregroundStyle(Color(hex: "#999999"))
                        .padding(.leading, 18)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundStyle(Color(hex: "#999999"))
                        .padding(.trailing, 46)
                }.padding(.vertical)
                    .background {
                        RoundedRectangle(cornerRadius: 14)
                            .fill(Color(hex: "#F4F6F8"))
                    }
                Text("email address")
                    .font(.custom("Futura", size: 17))
                    .padding(.top, 24)
                HStack {
                    Text("please select your email address")
                        .font(.custom("PingFang", size: 17))
                        .foregroundStyle(Color(hex: "#999999"))
                        .padding(.leading, 18)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundStyle(Color(hex: "#999999"))
                        .padding(.trailing, 46)
                }.padding(.vertical)
                    .background {
                        RoundedRectangle(cornerRadius: 14)
                            .fill(Color(hex: "#F4F6F8"))
                    }
                Text("Introduce yourself")
                    .font(.custom("Futura", size: 17))
                    .padding(.top, 24)
                Text("Please edit a self-inroduction to enhance your stregeth")
                    .font(.custom("PingFang", size: 17))
                    .foregroundStyle(Color(hex: "#999999"))
                    .padding(.top, 8)
                Button(action: {
                    
                }, label: {
                    Text("Next Step")
                        .font(.custom("PingFang", size: 18))
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                })
                .frame(maxWidth: .infinity, idealHeight: 63.8)
                .background {
                    RoundedRectangle(cornerRadius: 14)
                        .foregroundStyle( Color(hex: "#3665EF"))
                }
                .padding(.vertical, 24)
                
            }.padding([.top, .bottom])
                .padding([.horizontal], 31)
        }
    }
}

struct UserInforViewWithContainer: View {
    var body: some View {
        ZStack {
            UserProfileContainerView()
            UserInformationView()
                .background {
                    RoundedRectangle(cornerRadius: 35.21)
                        .fill(.white)
                        .ignoresSafeArea(edges:.bottom)
                }
        }
    }
}


#Preview {
    UserInforViewWithContainer()
}
