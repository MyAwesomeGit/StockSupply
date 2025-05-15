import Foundation

// MARK: - Models
struct StockResponse: Decodable, Identifiable {
    let id = UUID()
    let branchId: Int
    let productId: Int
    let quantity: Int
    let productDescription: String
    
    enum CodingKeys: String, CodingKey {
        case branchId = "branch_id"
        case productId = "product_id"
        case quantity
        case productDescription = "product_description"
    }
}
