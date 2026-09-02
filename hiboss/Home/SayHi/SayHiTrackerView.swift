//
//  SayHiTrackerView.swift
//  hiboss
//
//  Created by Raymond Xu on 2026-09-02.
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
    
    @State var isForInterview: Bool = false
    
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
                        if isForInterview {
                            HStack(alignment: .firstTextBaseline, spacing: 0) {
                                Text("$18000")
                                    .font(.custom("Futura", size: 17))
                                    .foregroundStyle(Color(hex: "3665EF"))
                                Text("/month")
                                    .font(.custom("Futura", size: 12))
                                    .foregroundStyle(Color(hex: "3665EF"))
                            }
                            
                        }
                    }
                }
                if isForInterview {
                    HStack {
                        Spacer()
                        Button(action: {}, label: {
                            Text("interviews")
                                .font(Font.PingFang(with: 13.5))
                                .foregroundStyle(.white)
                        }).frame(maxWidth: 148.7, maxHeight: 40)
                            .aspectRatio(3.7, contentMode: .fit)
                            .background {
                                RoundedRectangle(cornerRadius: 19.95)
                                    .fill(.themeMain)
                            }
                    }
                } else {
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
}

struct SayHiTrackerView: View {
    @Environment(\.dismiss) private var dismiss
    @State var subViewOption = SegmentedOption.alreadySaidHi
    var body: some View {
        NavigationStack {
            ZStack {
                LightBackgroundView()
                VStack {
                    SegmentedControl(){ newValue in
                        subViewOption = newValue
                    }.padding(.bottom, 18)
                    if subViewOption == .pendingMatters {
                        HStack {
                            CustomTabRow()
                                .padding([.leading, .top])
                            Spacer()
                        }
                    }
                    List {
                        if subViewOption == .alreadySaidHi {
                            SayHiTrackerGreetingRowView()
                            SayHiTrackerGreetingRowView()
                        } else if subViewOption == .collectedPosition {
                            SayHiCompanyRowView()
                            SayHiCompanyRowView()
                        } else {
                            SayHiCompanyRowView(isForInterview: true)
                            SayHiCompanyRowView(isForInterview: true)
                        }
                    }.scrollContentBackground(.hidden)
                        .contentMargins(.top, 0, for: .scrollContent)
                    Spacer()
                }
            }
            .navigationTitle("Say Hi Tracker")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    SayHiTrackerView()
}

#Preview {
    SayHiCompanyRowView()
}

#Preview {
    SayHiCompanyRowView(isForInterview: true)
}

