//
//  Navbar.swift
//  moodjournaldemo
//
//  Created by Adishree Das on 8/17/25.
//

import SwiftUI

struct Navbar: View {
    var body: some View {        
        HStack{
            // logo image
            Image("lotus")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)

            // logo text & font
            Text("Mood Journalling")
                .foregroundStyle(.white)
                .font(.custom("KaushanScript-Regular", size: 30))

        }
        .frame(maxWidth: .infinity)
        .background(Color(red: 188/255, green: 219/255, blue:178/255))
        
    }
}

#Preview {
    Navbar()
}
