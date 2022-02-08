import Foundation
import CoreLocation

struct HeroModel: Identifiable {
    var id: UUID = UUID()
    var name: String
    var realName: String
    var imageUrl: String
    var city: String
    var job: String
    var coordinate: Coordinate
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}

struct Coordinate {
    var latitude: Double
    var longitude: Double
}

extension HeroModel {
    static let heros: [HeroModel] = [
        HeroModel(name: "Batman", realName: "Bruce Wayne", imageUrl: "batman", city: "Gotham", job: "Business Man", coordinate: Coordinate(latitude: 41.8713679, longitude: -87.7669902)),
        HeroModel(name: "Superman", realName: "Clark Kent", imageUrl: "superman", city: "Kansas", job: "Journalist", coordinate: Coordinate(latitude: 39.0865207, longitude: -94.7089592)),
        HeroModel(name: "Spiderman", realName: "Peter Parker", imageUrl: "spiderman", city: "New York", job: "Photographer", coordinate: Coordinate(latitude: 40.7160119, longitude: -74.05244729)),
        HeroModel(name: "Iron Man", realName: "Tony Stark", imageUrl: "ironman", city: "Los Angeles", job: "Business Man", coordinate: Coordinate(latitude: 33.8003309, longitude: -118.2261494))
    ]
    
    static let fakeHero: HeroModel = HeroModel(name: "test", realName: "test", imageUrl: "test", city: "test", job: "test", coordinate: Coordinate(latitude: 0.0, longitude: 0.0))
}

