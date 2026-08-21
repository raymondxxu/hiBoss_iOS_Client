//
//  DropDownButton.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-10-05.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        var rgbValue: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&rgbValue)
        
        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}


struct DropDownMenu: View {
    
    var fieldStr: String
    var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(fieldStr)
                .font(.custom("PingFang TC", size: 17.6))
                .fontWeight(.semibold)
                .padding(.bottom, 13)
            HStack {
                Text(title)
                    .font(.custom("PingFang", size: 17.6))
                    .foregroundStyle(Color(hex: "#999999"))
                    .padding(.leading, 18)
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundStyle(Color(hex: "#999999"))
                    .padding(.trailing, 19)
            }.padding(.vertical)
                .background {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(Color(hex: "#F4F6F8"))
                }
        }
    }
}

struct ShortTextField: View {
    
    var fieldStr: String
    var title: String
    @State var userInput: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(fieldStr)
                .font(.custom("PingFang TC", size: 17.6))
                .fontWeight(.semibold)
                .padding(.bottom, 13)
            TextField(title, text: $userInput, prompt:
                        Text("\(title) \(fieldStr) information")
                .foregroundStyle(Color(hex: "#999999"))
                .font(.custom("PingFang", size: 17.6)))
            .padding(.leading, 18)
            .padding(.vertical)
            .background {
                RoundedRectangle(cornerRadius: 14)
                    .fill(Color(hex: "#F4F6F8"))
            }
        }
    }
}

struct LongTextField: View {
    
    var fieldStr: String
    var title: String
    @State var userInput: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(fieldStr)
                .font(.custom("PingFang TC", size: 17.6))
                .fontWeight(.semibold)
                .padding(.bottom, 13)
            ZStack(alignment: .topLeading){
                RoundedRectangle(cornerRadius: 14)
                    .fill(Color(hex: "#F4F6F8"))
                    .frame(height: 168)
                TextField(title, text: $userInput, prompt:
                            Text("\(title)")
                            .font(.custom("PingFang", size: 17.6))
                            .foregroundStyle(Color(hex: "#999999")))
                .padding(.top)
                .padding(.leading, 18)
            }
        }
    }
}


#Preview {
    VStack {
        DropDownMenu(fieldStr: "Name",
                     title: "Please select your name")
        .padding(.bottom, 24)
        ShortTextField(fieldStr: "School", title: "Please Enter")
            .padding(.bottom, 24)
        LongTextField(fieldStr: "Campus Experience",
                      title: "Please Enter")
    } .padding()
}
