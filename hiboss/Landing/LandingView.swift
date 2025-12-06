//
//  LandingView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-09-07.
//

import SwiftUI

class NavigationViewModel: ObservableObject {
    
    
    @Published var path: NavigationPath = NavigationPath()
    
}

struct LandingView: View {
    
    enum Route: Hashable {
        case talent
        case job
    }
    
   @ObservedObject var navVM = NavigationViewModel()
    
    var body: some View {
        NavigationStack(path: $navVM.path){
            VStack {
                Spacer()
                Image("landing.hi")
                    .resizable()
                    .frame(width: 360, height: 240)
                    .padding(.bottom, 8)
                Text(String(localized: "landing.hiaway"))
                    .font(.system(size: 16))
                Text(String(localized: "landing.helps"))
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16))
                    .padding([.top, .bottom], 32)
                CTAButton(action: {
                    navVM.path.append(LandingView.Route.talent)
                }, title: String(localized: "landing.button.talent"))
                CTAButton(action: {
                    navVM.path.append(LandingView.Route.job)
                }, title: String(localized: "landing.button.job"))
                .padding(.top, 16)
                Spacer()
            }.padding()
                .navigationDestination(for: LandingView.Route.self) { route in
                    switch route {
                    case .talent:
                        Text("hello Wrold")
                    case .job:
                        LoginView()
                    }
                }
        }
        .environmentObject(navVM)
    }
}

#Preview {
    LandingView()
}
