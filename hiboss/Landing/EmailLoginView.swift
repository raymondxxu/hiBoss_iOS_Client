//
//  EmailLoginView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-09-22.
//

import SwiftUI

class EmailLoginViewModel: ObservableObject {
    
    init() {}
    
    @Published var emaill: String = ""
    @Published var password: String = ""
}

struct EmailLoginView: View {
    
    @ObservedObject var vm: EmailLoginViewModel = EmailLoginViewModel()
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome back 👋")
                .font(.system(size: 24))
            Text("Thousands of jobs across all industries and regions — find the one you love with ease")
                .font(.system(size: 14))
                .foregroundStyle(Color(red: 102/255, green: 109/255, blue: 128/255))
                .padding([.top, .bottom], 8)
            Text("Email address")
                .font(.system(size: 14))
                .padding([.top, .bottom])
            TextField("", text: $vm.emaill)
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        .frame(height: 48)
                }
            Text("password")
                .font(.system(size: 14))
                .padding([.top, .bottom])
            TextField("", text: $vm.password)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(height: 48)
                        .foregroundColor(.white)
                }
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        .frame(height: 48)
                }
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("Forget password")
                        .tint(Color.themeMain)
                        .font(.system(size: 14))
                }
            }.padding([.top, .bottom])
            CTAButton(action: {
                
            }, title: "Login")
            HStack{
                VStack {
                    Divider()
                        .padding([.top, .bottom])
                }
                Text("or")
                    .font(.system(size: 12))
                    .foregroundStyle(Color(red: 102/255, green: 109/255, blue: 128/255))
                VStack{
                    Divider()
                        .padding([.top, .bottom])
                }
            }
            LoginButton(action: {
                
            }, imgResource: "google",
                        title: String(localized: "login.google"))
            LoginButton(action: {}, imgResource: "facebook",
                        title: String(localized: "login.facebook"))
            Spacer()
            HStack {
                Spacer()
                Text(String(localized: "login.noAccount"))
                    .font(.system(size: 14))
                    .foregroundStyle(Color(red: 129/255, green: 136/255, blue: 152/255))
                Button(action: {
                    
                }, label: {
                    Text(String(localized: "login.registerNow"))
                        .font(.system(size: 14))
                        .foregroundStyle(Color.themeMain)
                })
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    EmailLoginView()
}
