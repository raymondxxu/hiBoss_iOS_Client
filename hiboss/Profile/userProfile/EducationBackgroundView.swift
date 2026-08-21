//
//  EducationBackgroundView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-12-14.
//

import SwiftUI

struct EducationBackgroundView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 24) {
                Text("Educational Background")
                    .font(.custom("Futura", size: 28))
                    .padding(.top, 31)
                    .padding(.bottom, 18)
                
                ShortTextField(fieldStr: "School", title: "Please enter")
                ShortTextField(fieldStr: "Major", title: "Please enter")
                DropDownMenu(fieldStr: "Start/Graduation Date", title: "Please select")
                ShortTextField(fieldStr: "GPA", title: "Please enter")
                LongTextField(fieldStr: "Campus Experience", title: "Please Enter")
                HStack {
                    CTAButton(action: {
                        
                    }, title: "Back", style: .secondary)
                    CTAButton(action: {
                        
                    }, title: "Next", style: .primary)
                }
            }
        }.padding()
    }
}

struct EducationBackgroundViewWithContainer: View {
    var body: some View {
        ZStack {
            UserProfileContainerView()
            EducationBackgroundView()
                .background {
                    RoundedRectangle(cornerRadius: 35.21)
                        .fill(.white)
                        .ignoresSafeArea(edges:.bottom)
                }
        }
    }
}


#Preview {
    EducationBackgroundViewWithContainer()
}
