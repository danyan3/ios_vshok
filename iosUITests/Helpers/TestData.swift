import Foundation

struct User {
    let email: String
    let password: String
    let age: Int
}

struct TestData {
    static let Experiments = (
        youngCat: "Ты молоденький котик",
        oldCat: "Ты старый котик"
    )

    static func randomUser() -> User {
        let randomId = Int.random(in: 1...999)
        let randomAge = Int.random(in: 0...100)
        let randomPassword = "pass\(String(randomId))"
        
        return User(
            email: "u\(randomId)@ex.com",
            password: randomPassword,
            age: randomAge
        )
    }
    
} 
