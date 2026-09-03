//
//  MyProfile.swift
//  hiboss
//
//  Created by Raymond Xu on 2026-08-20.
//

import SwiftUI
let buttonColor = Color(red: 0.01, green: 0.77, blue: 0.43)
enum MyProfilePath: Hashable {
    case sayHiTracker
    case userProfile
    case userEducationProfile
}

@Observable
class NavigationRouter {
    
    var myProfilePath = [MyProfilePath]()
    
    func popToRoot() {
        myProfilePath.removeLast(myProfilePath.count)
    }
}

struct MyProfile: View {
    
    @State private var router = NavigationRouter()
    
    var body: some View {
        NavigationStack(path: $router.myProfilePath) {
            ZStack {
                LightBackgroundView()
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack(alignment: .center, spacing: 24)  {
                            Image(systemName: "person.circle")
                                .resizable()
                                .frame(width: 98.59, height: 98.59)
                            VStack(alignment: .leading, spacing: 11) {
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Jake Zoo")
                                        .font(Font.PingFang(with: 23.47))
                                    Text("UIDesigner")
                                        .font(Font.PingFang(with: 14.8))
                                        .foregroundStyle(Color(red: 102/255, green: 102/255, blue: 102/255))
                                }
                                HStack {
                                    Image(systemName: "mappin")
                                    Text("Jing 'an District, Shanghai")
                                        .font(Font.PingFang(with: 12.91))
                                }
                                
                            }
                            Spacer()
                        }
                        ZStack(alignment: .bottom) {
                            ZStack(alignment: .top){
                                RoundedRectangle(cornerRadius: 18.78)
                                    .fill(.themeMain)
                                    .aspectRatio(2.5, contentMode: .fill)
                                HStack(alignment: .center) {
                                    Text("Profile Completion")
                                        .font(Font.PingFang(with: 19.95))
                                        .foregroundStyle(.white)
                                        .padding(.leading, 10)
                                    Spacer()
                                    Button(action: {
                                        router.myProfilePath.append(.userProfile)
                                    }) {
                                        Image(systemName: "pencil")
                                            .foregroundStyle(.white)
                                            .frame(width: 35.56, height: 35.56)
                                            .background(
                                                Circle()
                                                    .fill(buttonColor)
                                            )
                                    }
                                    .accessibilityLabel("Edit Profile")
                                    .padding(.trailing, 10)
                                }.padding(.top, 10)
                            }
                            RoundedRectangle(cornerRadius: 18.78)
                                .fill(.white)
                                .aspectRatio(3.95, contentMode: .fit)
                                .padding(.bottom, 6)
                                .padding(.horizontal, 6)
                                .overlay {
                                    HStack {
                                        Text("85%")
                                            .font(Font.Futura(with: 37.56))
                                        Image("profileIcon")
                                            .resizable()
                                            .scaledToFit()
                                    }
                                }
                        }.padding(.top, 23)
                        SegmentedControl(){ newValue in
                            print(newValue)
                        }
                        .frame(maxWidth: .infinity)
                        .background {
                            RoundedRectangle(cornerRadius: 18.78)
                                .fill(.white)
                        }.padding(.bottom, 18)
                        VStack{
                            HStack {
                                Label.init("Notification", systemImage: "bell")
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 18.78)
                                    .fill(.white)
                            }
                            HStack {
                                Label.init("Privacy Settings", systemImage: "lock")
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 18.78)
                                    .fill(.white)
                            }
                            HStack {
                                Label.init("Account Support", systemImage: "person")
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 18.78)
                                    .fill(.white)
                            }
                            
                        }
                        .background {
                            RoundedRectangle(cornerRadius: 18.78)
                                .fill(.white)
                        }
                        .padding(.bottom, 18)
                        HStack {
                            Spacer()
                            Text("Log out")
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background {
                            RoundedRectangle(cornerRadius: 18.78)
                                .fill(.white)
                            
                        }
                        Spacer()
                    }.padding([.leading, .trailing], 31)
                }
            }.navigationDestination(for: MyProfilePath.self) { dest in
                switch dest {
                case .sayHiTracker:
                    SayHiTrackerView()
                case .userProfile:
                    UserInfoViewWithContainer()
                        .environment(router)
                case .userEducationProfile:
                    EducationBackgroundViewWithContainer()
                        .environment(router)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "gear")
                    })
                }
            }
        }
        
    }
}

#Preview {
    TabView {
        MyProfile()
    }
}

