//
//  LoginPageViewModel.swift
//  Eleven
//
//  Created by M Haris Sitompul on 23/02/23.
//

import Foundation
import FirebaseAuth
import Firebase

class FirebaseManager: NSObject {
    
    let auth: Auth
    
    static let shared = FirebaseManager()
    
    override init() {
        FirebaseApp.configure()
        
        self.auth = Auth.auth()
        
        super.init()
    }
    
}

class LoginPageViewModel :ObservableObject{
    
    @Published var phoneNumber = ""
    @Published var countryCode = "+62"
    
//    private var verificationId : String ?
//    
//    public func startAuth (phoneNumber:String,completion: @escaping (Bool)->Void){
//        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil){verificationId, error in
//            guard let verificationId = verificationId, error == nil else{
//                return
//            }
//        }
//    }
    
}
