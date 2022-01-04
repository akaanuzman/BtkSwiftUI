//
//  SpecialCircleImage.swift
//  BtkSwiftUI
//
//  Created by Ahmet Kaan UZMAN on 5.01.2022.
//

import SwiftUI

struct SpecialCircleImage: View {
    let url : String
    let borderColor : Color
    var body: some View {
        Image(url).resizable().aspectRatio(contentMode: .fit)
        // Dynamic height and width
            .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.28, alignment: .center).clipShape(Circle()).overlay(Circle().stroke(borderColor, lineWidth: 5)).shadow(radius: 10).padding()
    }
}

struct SpecialCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        SpecialCircleImage(url: "user_icon2",borderColor: Color.black)
    }
}
