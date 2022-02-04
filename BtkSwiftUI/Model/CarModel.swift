//
//  CarModel.swift
//  BtkSwiftUI
//
//  Created by Ahmet Kaan UZMAN on 13.01.2022.
//

import Foundation


struct CarModel: Identifiable {
    var id: UUID = UUID()
    var brand: String
    var model: String
    var hp: Int
    var price: Int
}

extension CarModel {
    static let cars: [CarModel] = [
        CarModel(brand: "Toyota", model: "Corolla", hp: 150, price: 200000),
        CarModel(brand: "Toyota", model: "Avensis", hp: 175, price: 100000),
        CarModel(brand: "BMW", model: "320i", hp: 200, price: 500000),
        CarModel(brand: "BMW", model: "520d", hp: 225, price: 600000)
    ]

    static let fakeCar: CarModel = CarModel(brand: "Fake", model: "Car", hp: 10, price: 1)
}
