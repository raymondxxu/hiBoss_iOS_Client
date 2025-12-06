//
//  HomeView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-09-08.
//

import SwiftUI


struct CompanyCardView: View {
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack(alignment: .topTrailing) {
                ZStack {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(.white)
                        .frame(maxWidth: .infinity)
                        .aspectRatio(402/170, contentMode: .fit)
                        .padding([.leading, .trailing], 18)
                    VStack(alignment: .leading) {
                        HStack {
                            Image("google")
                                .resizable()
                                .frame(width: 75, height: 75)
                            VStack(alignment: .leading) {
                                Text("UI Designer")
                                    .font(.custom("Futura", size: 17))
                                Text("Alibaba Limited Liability Company")
                                    .font(.custom("Futura", size: 13))
                                HStack(spacing: 4) {
                                    Text("Urgent")
                                        .font(.custom("Futura", size: 13))
                                        .foregroundStyle(Color(hex: "3665EF"))
                                        .padding(4)
                                        .background {
                                            RoundedRectangle(cornerRadius: 4)
                                                .fill(Color(red: 54/255,
                                                            green: 101/255,
                                                            blue: 239/255,
                                                            opacity: 0.1))
                                        }
                                    Text("Verified")
                                        .font(.custom("Futura", size: 13))
                                        .foregroundStyle(Color(hex: "3665EF"))
                                        .font(.custom("Futura", size: 13))
                                        .foregroundStyle(Color(hex: "3665EF"))
                                        .padding(4)
                                        .background {
                                            RoundedRectangle(cornerRadius: 4)
                                                .fill(Color(red: 54/255,
                                                            green: 101/255,
                                                            blue: 239/255,
                                                            opacity: 0.1))
                                        }
                                    Text("Head Hunter")
                                        .font(.custom("Futura", size: 13))
                                        .foregroundStyle(Color(hex: "3665EF"))
                                        .font(.custom("Futura", size: 13))
                                        .foregroundStyle(Color(hex: "3665EF"))
                                        .padding(4)
                                        .background {
                                            RoundedRectangle(cornerRadius: 4)
                                                .fill(Color(red: 54/255,
                                                            green: 101/255,
                                                            blue: 239/255,
                                                            opacity: 0.1))
                                        }
                                }
                            }
                            Spacer()
                        }
                        HStack(alignment: .lastTextBaseline) {
                            Image(systemName: "location.circle.fill")
                                .frame(width: 14, height: 14)
                            Text("Jing 'an District, Shanghai")
                                .font(.custom("PingFang", size: 13))
                            Spacer()
                        }.padding(.top, 8)
                        HStack(alignment: .lastTextBaseline) {
                            Image(systemName: "cablecar.fill")
                                .frame(width: 14, height: 14)
                            Text("MRT Banqpho 2.3km")
                                .font(.custom("PingFang", size: 13))
                            Spacer()
                        }.padding(.top, 8)
                        Spacer()
                    }
                    .padding(.top, 18)
                    .padding(.leading, 34)
                    .padding(.bottom, 17)
                }.frame(height: 170)
                Image(systemName: "bookmark")
                    .padding(.top, 25)
                    .padding(.trailing, 30)
                
            }
            HStack(alignment: .lastTextBaseline, spacing: 0) {
                Text("$18000")
                    .font(.custom("Futura", size: 17))
                    .foregroundStyle(Color(hex: "3665EF"))
                Text("/month")
                    .font(.custom("Futura", size: 12))
                    .foregroundStyle(Color(hex: "3665EF"))
            } .padding(.trailing, 38)
                .padding(.bottom, 14)
            
        }
    }
    
}

class HomeViewModel: ObservableObject {
    var title: String = "Home"
    let fontSize: CGFloat = 20
    
}

struct HomeView: View {
    
    let vm = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                LightBackgroundView()
                VStack{
                    ZStack(alignment: .topLeading) {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(
                                LinearGradient(
                                    colors: [
                                        Color(hex: "#3665EF"),
                                        Color(hex: "A950AF"),
                                        Color(hex: "#3665EF"),
                                    ],
                                    startPoint:  .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(maxWidth: .infinity)
                            .aspectRatio(402/132, contentMode: .fit)
                            .shadow(radius: 10, y: 5)
                            .padding([.leading, .trailing], 18)
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Dashboard")
                                .foregroundStyle(.white)
                                .font(.custom("Futura", size: 23))
                            HStack(alignment: .firstTextBaseline, spacing: 40) {
                                VStack(alignment: .leading) {
                                    Text("123")
                                        .foregroundStyle(.white)
                                        .font(.custom("Futura", size: 23))
                                    Text("of pending greetings")
                                        .foregroundStyle(.white)
                                        .font(.custom("Futura", size: 14))
                                }
                                VStack(alignment: .leading) {
                                    Text("27")
                                        .foregroundStyle(.white)
                                        .font(.custom("Futura", size: 23))
                                    Text("of pending greetings")
                                        .foregroundStyle(.white)
                                        .font(.custom("Futura", size: 14))
                                }
                            }
                        }
                        .padding(.top, 15)
                        .padding(.leading, 42)
                    }
                    HStack {
                        Text("AI")
                            .foregroundStyle(Color(hex: "#3665EF"))
                            .font(.custom("Futura", size: 23))
                        Text("recommended")
                            .font(.custom("Futura", size: 23))
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .padding(.top, 24)
                    CompanyCardView()
                    CompanyCardView()
                    Spacer()
                }
            }
            
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        print("search")
                    }, label: {
                        Image(systemName: "magnifyingglass")
                    })
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        print("bell")
                    }, label: {
                        Image(systemName: "bell")
                    })
                }
            }
        }
        
    }
}

#Preview {
    HomeView()
}
