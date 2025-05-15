import Foundation

enum StockServiceError: Error {
    case invalidServerResponse
    case noDataReceived
    case serverError(statusCode: Int, message: String)
    
    var localizedDescription: String {
        switch self {
        case .invalidServerResponse:
            return "Invalid server response"
        case .noDataReceived:
            return "No data received"
        case .serverError(let statusCode, let message):
            return "Error \(statusCode): \(message)"
        }
    }
}
