//
//  ListView.swift
//  BtkSwiftUI
//
//  Created by Ahmet Kaan UZMAN on 6.01.2022.
//

import SwiftUI

struct ListView: View {
    let carList : [String] = ["BMW","Audi","Mercedes","Toyota","Nissan"]
    var body: some View {
        List(carList,id: \.self){
            car in Text(car)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
