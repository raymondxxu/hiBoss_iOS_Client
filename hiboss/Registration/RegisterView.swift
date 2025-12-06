//
//  RegisterView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-09-22.
//

import SwiftUI

class RegisterViewModel: ObservableObject {
    
    @Published var fName: String = ""
    @Published var lName: String = ""
    @Published var phoneNumber: String = ""
    
    init() {
        
    }
}

struct RegisterView: View {

    enum Route {
        case profileCreationLocationView
    }
    
    @EnvironmentObject var navVM: NavigationViewModel
    @ObservedObject var vm: RegisterViewModel = RegisterViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Register Your Account")
                    .font(.system(size: 24))
                Text("Please enter your real name and phone number our privacy is fully protected")
                    .font(.system(size: 14))
                    .foregroundStyle(Color(red: 102/255, green: 109/255, blue: 128/255))
                    .padding([.top, .bottom], 8)
                Text("First Name")
                    .font(.system(size: 14))
                    .padding([.top, .bottom])
                TextField("", text: $vm.fName)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            .frame(height: 48)
                    }
                Text("Last Name")
                    .font(.system(size: 14))
                    .padding([.top, .bottom])
                TextField("", text: $vm.lName)
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
                Text("Phone Number")
                    .font(.system(size: 14))
                    .padding([.top, .bottom])
                TextField("", text: $vm.lName)
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
                Text("Emaill address")
                    .font(.system(size: 14))
                    .padding([.top, .bottom])
                TextField("", text: $vm.lName)
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
                Text("Password")
                    .font(.system(size: 14))
                    .padding([.top, .bottom])
                TextField("", text: $vm.lName)
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
                Text("Confirm Password")
                    .font(.system(size: 14))
                    .padding([.top, .bottom])
                TextField("", text: $vm.lName)
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
                    CTAButton(action: {
                        navVM.path.append(RegisterView.Route.profileCreationLocationView)
                    }, title: "Register")
                        .padding([.top, .bottom])
                HStack {
                    Spacer()
                    VStack{
                        Text("By registering an account, you agreed to")
                            .font(.system(size: 14))
                            .foregroundStyle(Color(red: 129/255, green: 136/255, blue: 152/255))
                        HStack{
                            Button(action: {
                                
                            }, label: {
                                Text("privacy Policy")
                                    .font(.system(size: 14))
                                    .foregroundStyle(Color.themeMain)
                            })
                            Text("and")
                                .font(.system(size: 14))
                                .foregroundStyle(Color(red: 129/255, green: 136/255, blue: 152/255))
                            Button(action: {
                                
                            }, label: {
                                Text("GDPR")
                                    .font(.system(size: 14))
                                    .foregroundStyle(Color.themeMain)
                            })
                        }
                        
                    }
                    Spacer()
                }
                
            }
            Spacer()
        }.padding(16)
            .navigationDestination(for: RegisterView.Route.self) { route in
                switch route {
                case .profileCreationLocationView:
                    ProfileCreationLocationView()
                }
                
            }
    }
}

#Preview {
    RegisterView()
}
