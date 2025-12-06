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

fileprivate struct DropdownLabelStyle: LabelStyle {
    
    let color = Color(red: 129/255, green: 136/255, blue: 152/255)
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
                .font(.system(size: 16))
                .foregroundStyle(color)
                .frame(height: 48)
                .frame(maxWidth: .infinity)
                .padding(.leading)
            Spacer()
            configuration.icon
                .foregroundStyle(color)
                .padding(.trailing)
        }
    }
}

struct DropDownMenu: View {
    
    let options = ["Bangkok", "Krabi", "Kanchanaburi", "Kalasin"]
    let title: String
    @State var selected: String = ""
    @State var hight: CGFloat = 0.0
    @State var shouldShowDropDown: Bool = false
    let borderColor = Color(red: 223/255, green: 225/255, blue: 231/255)
    
    var body: some View {
        HStack {
            Label(title, systemImage: "chevron.down")
                .labelStyle(DropdownLabelStyle())
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(borderColor)
                        .fill(.white)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.1),
                            radius: 4, x: 0, y: 4)
                }
                .onTapGesture {
                    shouldShowDropDown.toggle()
                }
                .overlay {
                    GeometryReader { pickerGeo in
                        if shouldShowDropDown {
                            VStack(alignment: .leading) {
                                List(options, id: \.self) { item in
                                    HStack{
                                        Text(item)
                                            .frame(height: 44)
                                            .onTapGesture {
                                                selected = item
                                            }
                                        Spacer()
                                        if selected == item {
                                            Image(systemName: "checkmark")
                                        }
                                    }
                                    .listRowBackground(Color.clear)
                                    .listRowSeparator(.hidden)
                                }
                                .background(.clear)
                                .listStyle(.plain)
                                .listRowSeparator(.hidden)
                                .frame(height: 192)
                                .zIndex(1000)
                                .background {
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(borderColor)
                                        .fill(.white)
                                }
                                .onAppear {
                                    hight = pickerGeo.frame(in: .global).height
                                }
                            }.padding(.top, 4)
                                .zIndex(1000)
                        }
                    }.offset(x: 0, y: hight)
                }
            
        }.frame(maxWidth: .infinity)
    }
}


#Preview {
    DropDownMenu(title: "Please select your province")
        .padding()
}
