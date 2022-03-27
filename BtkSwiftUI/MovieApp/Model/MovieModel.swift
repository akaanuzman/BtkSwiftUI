import Foundation

struct MovieModel : Codable {
    let title : String
    let year : String
    let imdbId : String
    let poster : String
    
    private enum CodingKeys : String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imbdbId = "imdbId"
        case poster = "Poster"
    }
}

struct MovieModelList : Codable {
    let movies : [MovieModel]
    
    private enum CodingKeys : String, CodingKey{
        case movies = "Search"
    }
}
