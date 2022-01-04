//
//  ContentView.swift
//  BtkSwiftUI
//
//  Created by Ahmet Kaan UZMAN on 5.01.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack {
            SpecialCircleImage(url: "user_icon1", borderColor: Color.green)
            SpecialCircleImage(url: "user_icon2", borderColor: Color.black)
           
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
