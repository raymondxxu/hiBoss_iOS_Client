//
//  JobExpectationView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-11-25.
//

import SwiftUI

struct JobExpectationView: View {
    var body: some View {
        ZStack {
            LightBackgroundView()
            VStack(alignment: .leading, spacing: 10) {
                Text("Add Job Expectations")
                    .font(.custom("Futura", size: 28))
                Text("Different job expectations lead to different recommended positions")
                    .font(.custom("PingFang", size: 18))
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("Job Type")
                            .font(.custom("Futura", size: 17))
                        Spacer()
                    }
                    HStack {
                        Text("Full time")
                            .font(.custom("PingFang", size: 15))
                            .padding()
                            .foregroundStyle(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(hex: "#3665EF"))
                            }
                        Text("Partime time")
                            .font(.custom("PingFang", size: 15))
                            .padding()
                            .foregroundStyle(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(hex: "#3665EF"))
                            }
                        Text("Freelancer")
                            .font(.custom("PingFang", size: 15))
                            .padding()
                            .foregroundStyle(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(hex: "#3665EF"))
                            }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(.white)
                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Desired Work City")
                            .font(.custom("PingFang", size: 14))
                        Text("ShangHai")
                            .font(.custom("Futura", size: 17))
                            .foregroundStyle(Color(hex: "#1E1920"))
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
                        Text("Desired Position")
                            .font(.custom("PingFang", size: 14))
                        Text("Please Select Desired Position")
                            .font(.custom("Futura", size: 17))
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
                        Text("Salary Requirement")
                            .font(.custom("PingFang", size: 14))
                        Text("Please Select Salary Requirement")
                            .font(.custom("Futura", size: 17))
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
                
                Spacer()
            }.padding([.leading, .trailing], 31)
        }
    }
}

#Preview {
    JobExpectationView()
}
