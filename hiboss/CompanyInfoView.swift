//
//  CompanyInfoView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-12-05.
//

import SwiftUI

struct CompanyInfoView: View {
    
    
    var body: some View {
        ZStack {
            LightBackgroundView()
            ScrollView(.vertical) {
                ZStack {
                    RoundedRectangle(cornerRadius: 14)
                        .fill( Color(hex: "3665EF"))
                        .frame(height: 187)
                    Image(systemName: "play.rectangle")
                        .foregroundStyle(.white)
                }
                PeekingCarouselView()
                    .frame(maxHeight: 96)
                    .padding(.top, 8)
                    .padding(.bottom, 20)
                VStack(spacing: 0) {
                    HStack {
                        Text("Company Introduction")
                            .font(.custom("PingFang", size: 23.5))
                            .foregroundStyle(.white)
                        Spacer()
                        Image("companyicon")
                    }
                    .padding(.leading)
                    .background {
                        RoundedRectangle(cornerRadius: 14)
                            .fill( Color(hex: "3665EF"))
                    }
                    VStack(spacing: 16) {
                        HStack {
                            Image(systemName: "clock")
                            Text("Establishment time")
                                .font(.custom("PingFang", size: 15))
                            
                            Spacer()
                            Text("2017.10.25")
                                .font(.custom("PingFang", size: 15))
                                .fontWeight(.semibold)
                        }
                        HStack {
                            Image(systemName: "chart.xyaxis.line")
                            Text("Industry")
                            Spacer()
                            Text("Internet")
                                .font(.custom("PingFang", size: 15))
                                .fontWeight(.semibold)
                        }
                        HStack {
                            Image(systemName: "person.2")
                            Text("number of employees")
                            Spacer()
                            Text("5678")
                                .font(.custom("PingFang", size: 15))
                                .fontWeight(.semibold)
                        }
                        HStack {
                            Image(systemName: "pin")
                            Text("headquarters")
                            Spacer()
                            Text("Jing 'an District, Shanghai")
                                .lineLimit(2)
                                .font(.custom("PingFang", size: 15))
                                .fontWeight(.semibold)
                        }
                        Text("We are a leading Chinese e-commerce platform specializing in a wide range of products, including fashion, electronics, home goods, and more. Our mission is to provide high-quality products at competitive prices, ensuring a safe and enjoyable shopping experience for our customers.")
                            .font(.custom("PingFang", size: 17))
                            .foregroundStyle(Color(hex: "999999"))
                            
                    }
                    .padding()
                    .background {
                        LinearGradient(gradient:
                                        Gradient(colors: [Color(red: 201/255, green: 212/255, blue: 248/255),
                                                          .white]), startPoint: .top, endPoint: .bottom)
                    }
                }
                
                HStack {
                    Text("Description")
                        .font(.custom("Futura", size: 23))
                    Spacer()
                }
                
                HStack(spacing: 8) {
                    Text("All")
                        .font(.custom("PingFang", size: 15))
                        .foregroundStyle(.white)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 9)
                                .fill( Color(hex: "3665EF"))
                        }
                    Text("Full Time")
                        .font(.custom("PingFang", size: 15))
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 9)
                                .fill(.white)
                        }
                    Text("Part time")
                        .font(.custom("PingFang", size: 15))
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 9)
                                .fill(.white)
                        }
                    Text("Freelance")
                        .font(.custom("PingFang", size: 15))
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 9)
                                .fill(.white)
                        }
                }
                SayHiCompanyRowView()
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 9)
                            .fill(.white)
                    }
                   
                Spacer()
                
            }.padding([.leading, .trailing], 20)
        }
    }
}

#Preview {
    CompanyInfoView()
}

struct PeekingCarouselView: View {
    let items = 1...10
    let cardWidth: CGFloat = 127 // The actual width of each item
    let spacing: CGFloat = 9    // Space between items
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: spacing) {
                ForEach(items, id: \.self) { number in
                    CardView(number: number)
                        .aspectRatio(127/96, contentMode: .fit)
                        .frame(width: cardWidth)
                }
            }
        }
    }
}

// Helper view for the cards
struct CardView: View {
    let number: Int
    let color: Color = Color(hex: "3665EF")
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(color)
            .overlay(
                Text("Item \(number)")
                    .font(.title)
                    .foregroundStyle(.white)
            )
    }
}


