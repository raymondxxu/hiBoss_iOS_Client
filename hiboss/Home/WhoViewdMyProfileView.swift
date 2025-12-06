//
//  WhoViewdMyProfileView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-11-23.
//

import SwiftUI

struct WhoViewdMyProfileView: View {
    
    @State private var selection = 0
    
    var body: some View {
        ZStack {
            LightBackgroundView()
            VStack(alignment: .leading) {
                HStack {
                    Text("This week")
                        .font(.custom("PingFang", size: 17.6))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background {
                            Capsule()
                                .fill(Color(hex: "3665ef"))
                                .frame(height: 46)
                        }
                    Text("last week")
                        .font(.custom("PingFang", size: 17))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                    Text("last 30 days")
                        .font(.custom("PingFang", size: 17))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                }
                .frame(height: 51)
                .background {
                    Capsule()
                        .fill(.white)
                }
                Text("who's viewed")
                    .font(.custom("Futura", size: 23))
                Text("my profile")
                    .font(.custom("Futura", size: 23))
                    .foregroundStyle(Color(hex: "3665ef"))
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 61, height: 61)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Raymond Xu")
                            .font(.custom("Futura", size: 17))
                        Text("Recruitment of software engineers")
                            .font(.custom("PingFang", size: 14))
                    }
                    Spacer()
                    Image(systemName: "arrow.up.right")
                        .background {
                            Circle()
                                .fill(Color(hex: "#F6F8FA"))
                                .frame(width: 52, height: 52)
                        }
                        .padding(.trailing, 15)

                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.white)
                }
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 61, height: 61)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Raymond Xu")
                            .font(.custom("Futura", size: 17))
                        Text("Recruitment of software engineers")
                            .font(.custom("PingFang", size: 14))
                    }
                    Spacer()
                    Image(systemName: "arrow.up.right")
                        .background {
                            Circle()
                                .fill(Color(hex: "#F6F8FA"))
                                .frame(width: 52, height: 52)
                        }
                        .padding(.trailing, 15)

                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.white)
                }
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 61, height: 61)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Raymond Xu")
                            .font(.custom("Futura", size: 17))
                        Text("Recruitment of software engineers")
                            .font(.custom("PingFang", size: 14))
                    }
                    Spacer()
                    Image(systemName: "arrow.up.right")
                        .background {
                            Circle()
                                .fill(Color(hex: "#F6F8FA"))
                                .frame(width: 52, height: 52)
                        }
                        .padding(.trailing, 15)

                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.white)
                }
                Spacer()
            }.frame(maxWidth: .infinity)
                .padding([.leading, .trailing], 22)
        }
    }
}

#Preview {
    WhoViewdMyProfileView()
}
