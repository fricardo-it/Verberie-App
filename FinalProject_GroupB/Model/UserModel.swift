import Foundation

class User {
    
    var fullName : String?
    var email : String?
    var password : String?
    
    init(fullName: String, email: String, password: String) {
        self.fullName = fullName
        self.email = email
        self.password = password
    }
    
}
