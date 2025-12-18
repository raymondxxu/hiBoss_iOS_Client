//
//  SignUp.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-09-07.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth
import GoogleSignIn
import FacebookLogin

class LoginViewModel: ObservableObject {
    
    let fbAccessToken = "f70787016bc5b869181bff196c65aaed"
    
    func googleSignIn() {
//        guard let presentingViewController = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController else { return }
//        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
//        let config = GIDConfiguration(clientID: clientID)
//        GIDSignIn.sharedInstance.configuration = config
//        GIDSignIn.sharedInstance.signIn(withPresenting: presentingViewController) { result, error in
//            guard error == nil else {
//                debugPrint(error?.localizedDescription)
//                return
//            }
//            guard let user = result?.user,
//                  let idToken = user.idToken?.tokenString
//            else {
//                debugPrint("user is not aviable")
//                return
//            }
//            let credential = GoogleAuthProvider.credential(withIDToken: idToken,
//                                                           accessToken: user.accessToken.tokenString)
//            Auth.auth().signIn(with: credential) { (result, error) in
//                print(result)
//                print(error)
//                
//            }
//        }
    }
    
    func facebookSignIn() {
//        let credential = FacebookAuthProvider.credential(withAccessToken: fbAccessToken)
//        LoginManager().logIn(permissions: ["public_profile", "email"], from: nil) { result, error in
//            if let err = error {
//                debugPrint(err.localizedDescription)
//            }
//            switch result {
//            case .none:
//                debugPrint("NONE")
//            case .some(let result):
//                if let tokenStr = result.token?.tokenString {
//                    let credential = FacebookAuthProvider.credential(withAccessToken: tokenStr)
//                    Auth.auth().signIn(with: credential) { (result, error) in
//                        print(result)
//                        print(error)
//                        
//                    }
//                }
//            }
//        }
    }
    
}

struct LoginView: View {
    
    enum Route: Hashable {
        case google
        case facebook
        case password
        case register
    }
    
    @EnvironmentObject var navVM: NavigationViewModel
    var vm = LoginViewModel()
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 142, height: 106)
                Text(String(localized: "login.welcome"))
                    .font(.system(size: 14))
                    .foregroundStyle(Color(red: 129/255, green: 136/255, blue: 152/255))
                    .padding(.top, 32)
                Spacer()
                VStack(spacing: 8) {
                    LoginButton(action: {
                        vm.googleSignIn()
                    }, imgResource: "google",
                                title: String(localized: "login.google"))
                        .background(.clear)
                    LoginButton(action: {
                        vm.facebookSignIn()
                    }, imgResource: "facebook",
                                title: String(localized: "login.facebook"))
                        .background(.clear)
                }
                .padding([.leading, .trailing], 16)
                CTAButton(action: {
                    navVM.path.append(LoginView.Route.password)
                }, title: String(localized: "login.password"))
                .padding(.top, 16)
                Spacer()
                HStack {
                    Text(String(localized: "login.noAccount"))
                        .font(.system(size: 14))
                        .foregroundStyle(Color(red: 129/255, green: 136/255, blue: 152/255))
                    Button(action: {
                        navVM.path.append(LoginView.Route.register)
                    }, label: {
                        Text(String(localized: "login.registerNow"))
                            .font(.system(size: 14))
                            .foregroundStyle(Color.themeMain)
                    })
                }
            }

        }
        .navigationDestination(for: LoginView.Route.self) { route in
            switch route {
            case .password:
                EmailLoginView()
            case .register:
                RegisterView()
                    .environmentObject(navVM)
            default:
                Text("Hello World")
            }
        }
    }
}

struct LoginButton: View {
    
    var action: () -> Void
    var imgResource: String
    var title: String
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Image(imgResource)
                .resizable()
                .frame(width: 25, height: 25)
            Text(title)
                .foregroundStyle(.black)
        })
        .frame(height: 52)
        .frame(maxWidth: Const.screenWidthWithPadding)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle( Color.white)
                .shadow(radius: 1, x: 1, y: 1)
        }
    }
    
}

#Preview {
    LoginView()
}
