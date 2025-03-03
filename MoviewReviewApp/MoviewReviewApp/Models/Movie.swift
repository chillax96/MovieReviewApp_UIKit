import Foundation

struct Movie: Codable {
    var id: UUID
    var title: String
    var director: String
    var releaseDate: String
    var genre: String
    var review: String
}
 
