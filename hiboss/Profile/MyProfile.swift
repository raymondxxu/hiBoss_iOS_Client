//
//  MyProfile.swift
//  hiboss
//
//  Created by Raymond Xu on 2026-08-20.
//

import SwiftUI
let buttonColor = Color(red: 0.01, green: 0.77, blue: 0.43)

struct MyProfile: View {
    var body: some View {
        NavigationStack{
            ZStack {
                LightBackgroundView()
                VStack(alignment: .leading) {
                    HStack(alignment: .center, spacing: 24)  {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 98.59, height: 98.59)
                        VStack(alignment: .leading, spacing: 11) {
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Jake Zoo")
                                    .font(Font.PingFang(with: 23.47))
                                Text("UIDesigner")
                                    .font(Font.PingFang(with: 14.8))
                                    .foregroundStyle(Color(red: 102/255, green: 102/255, blue: 102/255))
                            }
                            HStack {
                                Image(systemName: "mappin")
                                Text("Jing 'an District, Shanghai")
                                    .font(Font.PingFang(with: 12.91))
                            }
                            
                        }
                        Spacer()
                    }
                    ZStack(alignment: .bottom) {
                        ZStack(alignment: .top){
                            RoundedRectangle(cornerRadius: 18.78)
                                .fill(.themeMain)
                                .aspectRatio(2.5, contentMode: .fit)
                            HStack(alignment: .center) {
                                Text("Profile Completion")
                                    .font(Font.PingFang(with: 19.95))
                                    .foregroundStyle(.white)
                                    .padding(.leading, 10)
                                Spacer()
                                Button(action: {
                                    
                                }) {
                                    Image(systemName: "pencil")
                                        .foregroundStyle(.white)
                                        .frame(width: 35.56, height: 35.56)
                                        .background(
                                            Circle()
                                                .fill(buttonColor)
                                        )
                                }
                                .accessibilityLabel("Edit Profile")
                                .padding(.trailing, 10)
                            }.padding(.top, 10)
                        }
                        RoundedRectangle(cornerRadius: 18.78)
                            .fill(.white)
                            .aspectRatio(3.95, contentMode: .fit)
                            .padding(.bottom, 6)
                            .padding(.horizontal, 6)
                            .overlay {
                                HStack {
                                    Text("85%")
                                        .font(Font.Futura(with: 37.56))
                                    Image("profileIcon")
                                        .resizable()
                                        .scaledToFit()
                                }
                            }
                    }.padding(.top, 23)
                    HStack(spacing: 10) {
                        VStack {
                            HStack {
                                Image("hi")
                                    .resizable()
                                    .frame(width: 21, height: 21)
                                Text("123")
                                    .font(.custom("Futura", size: 28))
                            }
                            Text("Alreday said Hi")
                                .font(.custom("PingFang", size: 13))
                        }
                        VStack {
                            HStack {
                                Image("star")
                                    .resizable()
                                    .frame(width: 21, height: 21)
                                Text("13")
                                    .font(.custom("Futura", size: 28))
                            }
                            Text("Collected positions")
                                .font(.custom("PingFang", size: 13))
                        }
                        VStack {
                            HStack {
                                Image("doc")
                                    .resizable()
                                    .frame(width: 21, height: 21)
                                Text("123")
                                    .font(.custom("Futura", size: 28))
                            }
                            Text("Pending matters")
                                .font(.custom("PingFang", size: 13))
                        }
                    }
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 18.78)
                            .fill(.white)
                    }
                    .frame(maxWidth: .infinity)
                    VStack{
                            HStack {
                                Label.init("Notification", systemImage: "bell")
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 18.78)
                                    .fill(.white)
                            }
                            HStack {
                                Label.init("Privacy Settings", systemImage: "lock")
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 18.78)
                                    .fill(.white)
                            }
                            HStack {
                                Label.init("Account Support", systemImage: "person")
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 18.78)
                                    .fill(.white)
                            }
                        
                    }
                    .background {
                        RoundedRectangle(cornerRadius: 18.78)
                            .fill(.white)
                    }
                    .padding(.bottom, 18)
                    HStack {
                        Spacer()
                        Text("Log out")
                        Spacer()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                    .background {
                        RoundedRectangle(cornerRadius: 18.78)
                            .fill(.white)
                        
                    }
                    Spacer()
                }.padding([.leading, .trailing], 31)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        print("search")
                    }, label: {
                        Image(systemName: "gear")
                    })
                }
            }
        }
        
    }
}

#Preview {
    MyProfile()
}

