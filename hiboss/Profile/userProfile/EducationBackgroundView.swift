//
//  EducationBackgroundView.swift
//  hiboss
//
//  Created by Raymond Xu on 2025-12-14.
//

import SwiftUI

struct EducationBackgroundView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Educational Background")
                .font(.custom("Futura", size: 28))
            
            Text("School")
                .font(.custom("PingFang TC", size: 17))
                .fontWeight(.semibold)
            Text("Major")
                .font(.custom("PingFang TC", size: 17))
                .fontWeight(.semibold)
            Text("Start/Graducation Year")
                .font(.custom("PingFang TC", size: 17))
                .fontWeight(.semibold)
            Text("GPA")
                .font(.custom("PingFang TC", size: 17))
                .fontWeight(.semibold)
            Text("Campus expericese")
                .font(.custom("PingFang TC", size: 17))
                .fontWeight(.semibold)
            Spacer()
        }
    }
}

#Preview {
    EducationBackgroundView()
}
