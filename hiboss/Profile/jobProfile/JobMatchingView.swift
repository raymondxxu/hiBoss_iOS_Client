//
//  JobMatchingView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-11-25.
//

import SwiftUI

struct JobMatchingView: View {
    var body: some View {
        ZStack {
            LightBackgroundView()
            VStack(alignment: .leading, spacing: 10) {
                Text("What job are you looking for?")
                    .font(.custom("Futura", size: 28))
                Text("Adding multiple job expectations can help you get more precise and high-paying job opportunities.")
                    .font(.custom("PingFang", size: 18))
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Job Search Status:")
                            .font(.custom("PingFang", size: 18))
                        Text("Employed - Open to Oppurtunities")
                            .font(.custom("PingFang", size: 14))
                            .foregroundStyle(Color(hex: "#999999"))
                    }
                    Spacer()
                    Image(systemName: "arrow.up.right")
                        .frame(width: 52, height: 52)
                        .background{
                            Circle()
                                .fill(Color(hex: "#F6F8FA"))
                        }
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(.white)
                }
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("[Shanghai] UI Designer")
                            .font(.custom("PingFang", size: 18))
                        Text("Salary Negotiable, Industry Unrestricted")
                            .font(.custom("PingFang", size: 14))
                            .foregroundStyle(Color(hex: "#999999"))
                    }
                    Spacer()
                    Image(systemName: "arrow.up.right")
                        .frame(width: 52, height: 52)
                        .background{
                            Circle()
                                .fill(Color(hex: "#F6F8FA"))
                        }
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(.white)
                }
                Text("+ Continue Adding Job Expectations")
                    .foregroundStyle(Color(hex: "#3665EF"))
                    .frame(height: 70)
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 14)
                            .fill(.white)
                            .stroke(Color(hex: "#3665EF"), style: StrokeStyle(
                                lineWidth: 1,
                                lineCap: .round,
                                dash: [5, 3]
                            ))
                    }
                
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Recommended Positions Below")
                            .font(.custom("Futura", size: 23))
                        Text("Add for More Inbound Chats")
                            .font(.custom("PingFang", size: 14))
                            .foregroundStyle(Color(hex: "#999999"))
                    }
                    Divider()
                        .padding([.top, .bottom], 14)
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("[Shanghai] UI Designer")
                                .font(.custom("PingFang", size: 18))
                            Text("Salary Negotiable, Industry Unrestricted")
                                .font(.custom("PingFang", size: 14))
                                .foregroundStyle(Color(hex: "#999999"))
                        }
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .frame(width: 52, height: 52)
                            .background{
                                Circle()
                                    .fill(Color(hex: "#F6F8FA"))
                            }
                    }
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(.white)
                }
                
                Spacer()
            }.padding([.leading, .trailing], 31)
        }
    }
}

#Preview {
    JobMatchingView()
}
