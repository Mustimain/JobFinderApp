import Foundation
import FirebaseFirestore

struct User : Codable{
    
    @DocumentID var  userID : String? = UUID().uuidString
    var  firstName : String?
    var  lastName : String?
    var  jobID : String?
    var  email : String?
    var  password : String?
    var  phoneNumber : String?
    var  emailVerification : Bool?
    var  createDate : Date?
    var  updateDate : Date?
    
}
