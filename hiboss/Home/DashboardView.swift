//
//  DashboardView.swift
//  hiboss
//
//  Created by Raymond Xu on 2026-09-02.
//

import SwiftUI

enum DashboardPath: Hashable {
    case companyDetails
}

struct DashboardView: View {
    
    @State var path: [DashboardPath] = [DashboardPath]()
    
 
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                LightBackgroundView()
                VStack(alignment: .leading) {
                    HStack {
                        Button(action: {
                            print("hello world")
                        }, label: {
                            Label(title: {
                                Text("Bangkok")
                                    .font(Font.PingFang(with: 16.4))
                            }, icon: { Image(systemName: "mappin") })
                        }).tint(.black)
                        Spacer()
                    }
                    SayHiCompanyRowView()
                        .onTapGesture {
                            path.append(.companyDetails)
                        }
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 14.1)
                                .fill(.white)
                        }
                    SayHiCompanyRowView()
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 14.1)
                                .fill(.white)
                        }
                    Spacer()
                }.padding([.leading, .trailing], 31)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button(action: {
                               
                            }, label: {
                                Image(systemName: "magnifyingglass")
                            })
                        }
                    }
            }
            .navigationTitle("UI Designer")
            .navigationBarTitleDisplayMode(.large)
            .navigationDestination(for: DashboardPath.self) { route in
                switch route {
                case .companyDetails:
                    CompanyInfoView()
                    
                }
            }
        }
    }
}

#Preview {
    DashboardView()
}
