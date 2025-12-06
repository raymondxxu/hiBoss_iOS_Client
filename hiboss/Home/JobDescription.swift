//
//  JobDescription.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-11-20.
//

import SwiftUI
import MapKit

struct JobDescriptionView: View {
    
    let position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 49.2820, longitude: -123.1171),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    )
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack(alignment: .firstTextBaseline, spacing: 16) {
                    Text("Software Engineer job")
                        .font(.custom("Futura", size: 23))
                    Spacer()
                    HStack(alignment: .lastTextBaseline, spacing: 0) {
                        Text("$18000")
                            .font(.custom("Futura", size: 17))
                            .foregroundStyle(Color(hex: "3665EF"))
                        Text("/month")
                            .font(.custom("Futura", size: 12))
                            .foregroundStyle(Color(hex: "3665EF"))
                    }.padding(.trailing, 19)
                }
                HStack(alignment: .lastTextBaseline) {
                    Image(systemName: "location.circle.fill")
                        .frame(width: 14, height: 14)
                    Text("Jing 'an District, Shanghai")
                        .font(.custom("Futura", size: 13))
                    Spacer()
                    Image(systemName: "cablecar.fill")
                        .frame(width: 14, height: 14)
                    Text("2.3km")
                        .font(.custom("Futura", size: 13))
                    Spacer()
                }.padding(.top, 22)
                Divider()
                    .padding([.top, .bottom], 16)
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
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .padding(.trailing, 14)
                    VStack(alignment: .leading) {
                        Text("Raymond Xu")
                            .foregroundStyle(Color(hex: "#1E1920"))
                            .font(.custom("Futura", size: 17))
                        Text("Hr")
                            .foregroundStyle(Color(hex: "#222222"))
                            .font(.custom("PingFang", size: 13))
                    }
                    Spacer()
                    HStack(spacing: 28) {
                        Image(systemName: "ellipsis.message")
                            .resizable()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(hex: "#3665EF"))
                                    .frame(width: 31, height: 31)
                            }
                        Image(systemName: "phone")
                            .resizable()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(hex: "#3665EF"))
                                    .frame(width: 31, height: 31)
                            }
                    }
                }.padding()
                    .background {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(hex: "#F6F8FA"))
                    }.padding([.top], 18)
                Divider()
                    .padding([.top, .bottom], 16)
                HStack() {
                    VStack(alignment: .leading, spacing: 9) {
                        Text("Qualitfication")
                            .font(.custom("Futura", size: 18))
                            .foregroundColor(Color(hex: "#1E1920"))
                        HStack {
                            Text("Quality Engineer 1")
                                .font(.custom("PingFang", size: 14))
                                .foregroundColor(Color(hex: "#999999"))
                            Spacer()
                            Image(systemName: "checkmark")
                                .foregroundColor(Color(hex: "#3665EF"))
                        }
                        HStack {
                            Text("Quality Engineer 2")
                                .font(.custom("PingFang", size: 14))
                                .foregroundColor(Color(hex: "#999999"))
                            Spacer()
                            Image(systemName: "checkmark")
                                .foregroundColor(Color(hex: "#3665EF"))
                        }
                        HStack {
                            Text("Quality Engineer 3")
                                .font(.custom("PingFang", size: 14))
                                .foregroundColor(Color(hex: "#999999"))
                            Spacer()
                            Image(systemName: "checkmark")
                                .foregroundColor(Color(hex: "#3665EF"))
                        }
                        HStack {
                            Text("Quality Engineer 4")
                                .font(.custom("PingFang", size: 14))
                                .foregroundColor(Color(hex: "#999999"))
                            Spacer()
                            Image(systemName: "checkmark")
                                .foregroundColor(Color(hex: "#3665EF"))
                        }
                        HStack {
                            Text("Quality Engineer 5")
                                .font(.custom("PingFang", size: 14))
                                .foregroundColor(Color(hex: "#999999"))
                            Spacer()
                            Image(systemName: "checkmark")
                                .foregroundColor(Color(hex: "#3665EF"))
                        }
                        Spacer()
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.white)
                            .shadow(color: Color(red: 186/255, green: 196/255, blue: 228/255, opacity: 0.2), radius: 7, x: 5, y: 5)
                    }
                    VStack(alignment: .leading) {
                        Text("AI")
                            .font(.custom("Futura", size: 18))
                        Text("Matching degree")
                            .font(.custom("Futura", size: 14))
                        Text("98")
                            .font(.custom("Futura", size: 40))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "#3665EF"))
                        HStack{
                            Spacer()
                            Image("AI")
                                .resizable()
                                .frame(width: 97, height: 87)
                        }
                    }
                    .aspectRatio(1.37/2, contentMode: .fit)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.white)
                            .shadow(color: Color(red: 186/255, green: 196/255, blue: 228/255, opacity: 0.2), radius: 7, x: 5, y: 5)
                    }
                }
                Text("Description")
                    .font(.custom("Futura", size: 30))
                    .padding(.top, 23)
                    .padding(.bottom, 15)
                Text("Job description")
                    .font(.custom("Futura", size: 23))
                    .padding(.bottom, 7)
                Text("it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed")
                    .font(.custom("Futura", size: 14))
                    .foregroundColor(Color(hex: "#999999"))
                Text("it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed")
                    .font(.custom("Futura", size: 14))
                    .foregroundColor(Color(hex: "#999999"))
                Map(initialPosition: position)
                    .aspectRatio(4/2, contentMode: .fit)
                    .mapStyle(.standard)
                ZStack{
                    Image("mapBackground")
                        .resizable()
                        .aspectRatio(712/128, contentMode: .fit)
                        .frame(maxWidth: .infinity)
                    HStack {
                        VStack(alignment: .leading, spacing: 6) {
                            Text("121 the Peart Road")
                                .font(.custom("Futura", size: 14))
                            Text("Subway：2.45km 15min")
                                .font(.custom("PingFang", size: 14))
                                .foregroundColor(Color(hex: "#666666"))
                        }
                        .padding(.leading, 56)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Label("GO", systemImage: "location.fill")
                                .font(.custom("Futura", size: 14))
                        }).tint(Color(hex: "#222222"))
                            .padding(8)
                            .background {
                                Capsule()
                                    .fill(Color.clear)
                                    .stroke(Color(hex: "#222222"))
                            }
                    }
                    .frame(maxWidth: .infinity)
                }
                .frame(maxWidth: .infinity)
                CTAButton(action: {}, title: "Communicate Now")
                    .padding(.top, 38)
                Spacer()
            }.padding([.leading, .trailing], 19)
        }
        
    }
}

#Preview {
    JobDescriptionView()
}

