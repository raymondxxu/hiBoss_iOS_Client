//
//  MessageDetail.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-11-22.
//

import SwiftUI

struct ChatBubble: Shape {
    enum Direction { case left, right }
    var direction: Direction = .left
    func path(in rect: CGRect) -> Path {
        let cornerRadius: CGFloat = 16
        var path = Path()
        let tailWidth: CGFloat = 8
        let tailHeight: CGFloat = 12
        let bubbleRect: CGRect
        switch direction {
        case .left:
            bubbleRect = CGRect(x: rect.minX + tailWidth, y: rect.minY, width: rect.width - tailWidth, height: rect.height)
            // Bubble body
            path.addRoundedRect(in: bubbleRect, cornerSize: CGSize(width: cornerRadius, height: cornerRadius))
            // Tail
            path.move(to: CGPoint(x: bubbleRect.minX, y: bubbleRect.midY - tailHeight/2))
            path.addLine(to: CGPoint(x: bubbleRect.minX - tailWidth, y: bubbleRect.midY))
            path.addLine(to: CGPoint(x: bubbleRect.minX, y: bubbleRect.midY + tailHeight/2))
        case .right:
            bubbleRect = CGRect(x: rect.minX, y: rect.minY, width: rect.width - tailWidth, height: rect.height)
            path.addRoundedRect(in: bubbleRect, cornerSize: CGSize(width: cornerRadius, height: cornerRadius))
            path.move(to: CGPoint(x: bubbleRect.maxX, y: bubbleRect.midY - tailHeight/2))
            path.addLine(to: CGPoint(x: bubbleRect.maxX + tailWidth, y: bubbleRect.midY))
            path.addLine(to: CGPoint(x: bubbleRect.maxX, y: bubbleRect.midY + tailHeight/2))
        }
        return path
    }
}

struct MessageDetail: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LightBackgroundView()
                VStack {
                    HStack {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 46, height: 46)
                        Text("Hello Wrold")
                            .padding(.vertical, 10)
                            .padding(.horizontal, 14)
                            .background {
                                ChatBubble(direction: .left)
                                    .fill(.white)
                            }
                            .shadow(color: Color.black.opacity(0.05), radius: 2, y: 1)
                        Spacer()
                    }.padding(.leading, 19)
                    HStack {
                        Spacer()
                        Text("I just have nothing to do！")
                            .foregroundStyle(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 14)
                            .background {
                                ChatBubble(direction: .right)
                                    .fill(Color(hex: "3665EF"))
                            }
                            .shadow(color: Color.black.opacity(0.05), radius: 2, y: 1)
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 46, height: 46)
                    }.padding(.trailing, 19)
                    HStack(alignment: .top) {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 46, height: 46)
                        VStack(alignment: .leading) {
                            Text("Senior Frontend Developer")
                                .font(.custom("Futura", size: 18))
                            HStack(alignment: .lastTextBaseline, spacing: 0) {
                                Text("$18000")
                                    .font(.custom("Futura", size: 18))
                                    .foregroundStyle(Color(hex: "3665EF"))
                                Text("/month")
                                    .font(.custom("Futura", size: 13))
                                    .foregroundStyle(Color(hex: "3665EF"))
                            }
                            Text("Bangkok·Job time Full-time·React, TypeScript, 5+ years exp")
                                .font(.custom("PingFang", size: 13))
                            HStack {
                                Spacer()
                                Button(action: {
                                    
                                }, label: {
                                    HStack {
                                        Text("view full description")
                                            .font(.custom("PingFang", size: 13))
                                            .foregroundStyle(.white)
                                        Image(systemName: "arrow.up.right")
                                            .resizable()
                                            .frame(width: 13, height: 13)
                                            .padding(8)
                                            .foregroundStyle(.black)
                                            .background {
                                                Circle()
                                                    .fill(.white)
                                            }
                                    }
                                })
                                .padding(.leading)
                                .padding([.top, .trailing, .bottom], 4)
                                .background {
                                    Capsule()
                                        .fill(Color(hex: "3665EF"))
                                }
                                
                            }
                        }
                        .padding()
                        .background {
                            LinearGradient(
                                colors: [
                                    Color(hex: "E5EBFF"),
                                    Color(hex: "FFFFFF")
                                ], startPoint: .top, endPoint: .bottom
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .stroke(Color(hex: "A9BEFF"), lineWidth: 1)
                            )
                        }
                        
                        Spacer()
                    }.padding(.leading, 19)
                    
                    HStack(alignment: .top) {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 46, height: 46)
                        VStack(alignment: .leading) {
                            Text("Calendar invitation")
                                .font(.custom("Futura", size: 18))
                            VStack(alignment: .leading, spacing: 0) {
                                Text("October 16, 2025 2:00pm")
                                    .font(.custom("PingFang", size: 13))
                                Text("Video Call(Google)")
                                    .font(.custom("PingFang", size: 13))
                            }
                            .padding(.top, 10)
                            Divider()
                                .padding([.top, .bottom], 18)
                            HStack {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .frame(width: 46, height: 46)
                                VStack(alignment: .leading) {
                                    Text("Raymond Xu")
                                        .font(.custom("Futura", size: 17))
                                        .foregroundStyle(Color(hex: "#1E1920"))
                                        .padding(.bottom, 5)
                                    Text("Recruitment of Softwre")
                                        .font(.custom("PingFang", size: 14))
                                }
                                Spacer()
                            }
                            HStack {
                                Button(action: {
                                    
                                }, label: {
                                    Text("Add to Calendar")
                                        .font(.custom("PingFang", size: 13))
                                        .tint(.black)
                                })
                                .padding()
                                .background {
                                    Capsule()
                                        .stroke(Color(hex: "3665EF"))
                                        .fill(Color.clear)
                                        .frame(height: 33)
                                }
                                
                                Button(action: {
                                    
                                }, label: {
                                    Text("Join meeting")
                                        .font(.custom("PingFang", size: 13))
                                        .tint(.white)
                                })
                                .padding()
                                .background {
                                        Capsule()
                                            .fill(Color(hex: "3665EF"))
                                            .frame(height: 33)
                                    }
                            }.frame(maxWidth: .infinity)
                        }
                        .padding()
                        .background {
                            LinearGradient(
                                colors: [
                                    Color(hex: "E5EBFF"),
                                    Color(hex: "FFFFFF")
                                ], startPoint: .top, endPoint: .bottom
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .stroke(Color(hex: "A9BEFF"), lineWidth: 1)
                            )
                        }
                        
                        Spacer()
                    }.padding(.leading, 19)
                    Spacer()
                }.padding()
                .navigationTitle("Message")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                        } label: {
                            Image(systemName: "chevron.left")
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        VStack(spacing: 2) {
                            Text("Current Resume")
                                .font(.custom("PingFang", fixedSize: 21))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                            Text("Google hr")
                                .font(.custom("PingFang", fixedSize: 13))
                                .multilineTextAlignment(.center)
                        }
                    }
                    
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button {
                        } label: {
                            Image(systemName: "person.circle")
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    MessageDetail()
}

