import Foundation

struct CityModel : Identifiable {
    var id : UUID = UUID()
    var name : String
    var imageName : String
    var region : String
}

extension CityModel{
    static let cities = [
        CityModel(name: "Şehir: Kütahya", imageName: "kütahya", region: "Bölge: Aegon"),
        CityModel(name: "Şehir: Düzce", imageName: "düzce", region: "Bölge: Black Sea"),
        CityModel(name: "Şehir: Sinop", imageName: "sinop", region: "Bölge: Aegon"),
    ]
    
    static let fakeCity = CityModel(name: "test", imageName: "kütahya", region: "test")
}
