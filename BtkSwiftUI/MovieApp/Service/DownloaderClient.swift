import Foundation

class DownloaderClient  {
    func downloadMovies(search: String, completion: @escaping
    (Result<[MovieModel],DownloaderError>) -> Void){
        guard let url = URL(string:
            "https://www.omdbapi.com/?i=tt3896198&apikey=f00eedfd")
        else {
            return completion(.failure(.wrongUrl))
        }

   }
}

enum DownloaderError : Error {
    case wrongUrl
    case noIncomingData
    case notProcessData
}
