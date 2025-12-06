//
//  SayHiTrackerView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-12-02.
//

import SwiftUI

struct SayHiTrackerGreetingRowView: View {
    var body: some View {
        HStack(spacing: 13) {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 63, height: 63)
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .lastTextBaseline) {
                    Text("Piter")
                        .font(.custom("PingFang", size: 20))
                        .fontWeight(.semibold)
                    Text("[Google Hr]")
                        .font(.custom("PingFang", size: 15))
                        .foregroundStyle(Color(hex: "#999999"))
                }
                Text("hello, long time no see")
                    .font(.custom("PingFang", size: 15))
                    .foregroundStyle(Color(hex: "#999999"))
            }
            Spacer()
            VStack(alignment: .leading, spacing: 4) {
                Text("Yesterday")
                    .font(.custom("PingFang", size: 15))
                    .foregroundStyle(Color(hex: "#999999"))
                Image("sentHi")
                    .resizable()
                    .frame(maxWidth: 62, maxHeight: 30)
                    .aspectRatio(6/3, contentMode: .fit)
            }
            
        }.listRowBackground(Color.clear)
    }
}

struct SayHiCompanyRowView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bookmark")
                .frame(width: 19, height: 19)
                .foregroundStyle(Color(hex: "3665EF"))
            VStack(alignment: .leading) {
                HStack {
                    Image("google")
                        .resizable()
                        .frame(width: 75, height: 75)
                    VStack(alignment: .leading) {
                        Text("UI designer")
                            .font(.custom("Futura", size: 17))
                            .foregroundStyle(Color(hex: "#1E1920"))
                        Text("Alibaba Limited Liability Company")
                            .font(.custom("PingFang", size: 13))
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
                }
                VStack{
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
                    HStack(alignment: .firstTextBaseline, spacing: 0) {
                        Spacer()
                        Text("$18000")
                            .font(.custom("Futura", size: 17))
                            .foregroundStyle(Color(hex: "3665EF"))
                        Text("/month")
                            .font(.custom("Futura", size: 12))
                            .foregroundStyle(Color(hex: "3665EF"))
                    }
                }.padding(.top, 11)
            }
        }
    }
}

struct SayHiTrackerView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            ZStack {
                LightBackgroundView()
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 14)
                            .fill(.white)
                            .frame(maxWidth: .infinity)
                            .aspectRatio(402/112, contentMode: .fit)
                            .padding([.leading, .trailing], 20)
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
                    }
                    List {
//                        SayHiTrackerGreetingRowView()
//                        SayHiTrackerGreetingRowView()
                        SayHiCompanyRowView()
                        SayHiCompanyRowView()
                    }.scrollContentBackground(.hidden)
                        Spacer()
                }
            }
            .navigationTitle("Say Hi Tracker")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 17, weight: .semibold))
                    }
                    .accessibilityLabel("Back")
                }
            }
        }
    }
}

#Preview {
    SayHiTrackerView()
}

