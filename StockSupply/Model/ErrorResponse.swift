import Foundation

// MARK: - Error Response Model
struct ErrorResponse: Decodable {
    let errorDescription: String
    
    enum CodingKeys: String, CodingKey {
        case errorDescription = "error_description"
    }
}
