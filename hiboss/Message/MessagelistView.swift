//
//  ChatView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-11-10.
//

import SwiftUI

struct MessagelistView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            LightBackgroundView()
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Message")
                        .font(.custom("Futura", size: 28))
                    Image("path")
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.black)
                        .fill(Color.white)
                        .frame(height: 53)
                    ZStack(alignment: .trailing) {
                        TextField("", text: $searchText, prompt: Text("Search..."))
                            .font(.custom("PingFang", size: 17))
                            .foregroundStyle(Color(hex: "#999999"))
                            .padding(.leading, 23)
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .foregroundStyle(Color(hex: "#1E1920"))
                            .frame(width: 31, height: 31)
                            .padding(.trailing, 15)
                    }
                  
                }.frame(height: 53)
                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color(hex: "#3665EF"),
                                    Color(hex: "A950AF"),
                                ],
                                startPoint:  .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(maxWidth: .infinity)
                        .aspectRatio(403/146, contentMode: .fit)
                        .shadow(radius: 10, y: 2)
                    ZStack(alignment: .topTrailing) {
                        
                        VStack(alignment: .leading) {
                            Text("System recommendation")
                                .font(.custom("Futura", size: 23))
                                .foregroundStyle(.white)
                            HStack {
                                Image(systemName: "person.crop.square")
                                    .resizable()
                                    .frame(width: 42, height: 42)
                                    .padding(.trailing, 14)
                                    .foregroundStyle(.white)
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack(alignment: .firstTextBaseline) {
                                        Text("Raymong Xu")
                                            .font(.custom("Futura", size: 20))
                                            .foregroundStyle(.white)
                                        Text("[HiBoss hr]")
                                            .font(.custom("PingFang", size: 15))
                                            .foregroundStyle(.white)
                                    }
                                    Text("Hi Long time no see")
                                        .font(.custom("PingFang", size: 15))
                                        .foregroundStyle(.white)
                                }
                                Spacer()
                                
                            }
                        }.padding([.leading, .bottom], 21)
                            .padding(.top, 17)
                        Image("happy")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .padding(.top, 8)
                            .padding(.trailing, 46)
                        
                    }
                }
                
                HStack {
                    Image(systemName: "person.crop.square")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .padding(.trailing, 14)
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(alignment: .firstTextBaseline) {
                            Text("Raymong Xu")
                                .font(.custom("Futura", size: 20))
                            Text("[HiBoss hr]")
                                .font(.custom("PingFang", size: 15))
                                .foregroundStyle(Color(hex: "#999999"))
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("12:23")
                                    .font(.custom("PingFang", size: 15))
                                    .foregroundStyle(Color(hex: "#999999"))
                            }
                        }
                        Text("Hi Long time no see")
                            .font(.custom("PingFang", size: 15))
                            .foregroundStyle(Color(hex: "#999999"))
                    }
                }
                .padding(.top, 25)
                HStack {
                    Image(systemName: "person.crop.square")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .padding(.trailing, 14)
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(alignment: .firstTextBaseline) {
                            Text("Raymong Xu")
                                .font(.custom("Futura", size: 20))
                            Text("[HiBoss hr]")
                                .font(.custom("PingFang", size: 15))
                                .foregroundStyle(Color(hex: "#999999"))
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("12:23")
                                    .font(.custom("PingFang", size: 15))
                                    .foregroundStyle(Color(hex: "#999999"))
                            }
                            
                        }
                        Text("Hi Long time no see")
                            .font(.custom("PingFang", size: 15))
                            .foregroundStyle(Color(hex: "#999999"))
                    }
                }
                .padding(.top, 25)
                HStack {
                    Image(systemName: "person.crop.square")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .padding(.trailing, 14)
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(alignment: .firstTextBaseline) {
                            Text("Raymong Xu")
                                .font(.custom("Futura", size: 20))
                            Text("[HiBoss hr]")
                                .font(.custom("PingFang", size: 15))
                                .foregroundStyle(Color(hex: "#999999"))
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("12:23")
                                    .font(.custom("PingFang", size: 15))
                                    .foregroundStyle(Color(hex: "#999999"))
                            }
                        }
                        Text("Hi Long time no see")
                            .font(.custom("PingFang", size: 15))
                            .foregroundStyle(Color(hex: "#999999"))
                    }
                    
                }
                .padding(.top, 25)
                Spacer()
            }.padding([.leading, .trailing], 18)
            
        }
    }
}

#Preview {
    MessagelistView()
}
