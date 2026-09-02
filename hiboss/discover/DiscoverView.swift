//
//  DiscoverView.swift
//  hiboss
//
//  Created by Raymond Xu on 2026-09-02.
//

import SwiftUI

enum DiscoverPath: Hashable {
    
}

struct DiscoverView: View {
    
    @State var path: [DiscoverPath] = [DiscoverPath]()
    
 
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                LightBackgroundView()
                VStack {
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
                    SayHiCompanyRowView()
                    Spacer()
                }.padding()
            }
            .navigationTitle("Say Hi Tracker")
            .navigationBarTitleDisplayMode(.large)
            
        }
    }
}

#Preview {
    DiscoverView()
}
