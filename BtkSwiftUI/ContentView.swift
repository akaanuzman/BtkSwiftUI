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
        NavigationView {
            VStack {
                SpecialCircleImage(url: "user_icon1", borderColor: Color.green)
                SpecialCircleImage(url: "user_icon2", borderColor: Color.black)
                Button(action: {
                    print("click")
                }, label: { Text("Click me !") }
                )

                NavigationLink(destination: OtherPage(), label: {
                    Text("Go to next page")
                }).navigationTitle(Text("First Title"))
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
