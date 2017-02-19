//
//  File.swift
//  MySampleApp
//
//  Created by Luke Worley on 2/18/17.
//
//
import AWSMobileHubHelper
import AWSCognito
import AWSCore
import FBSDKLoginKit


class FacebookProvider: NSObject, AWSIdentityProviderManager {
    
    func logins() -> AWSTask<NSDictionary> {
        if let token = FBSDKAccessToken.current(){
            return AWSTask(result: [AWSIdentityProviderFacebook:token])
        }
            
        else{
        return AWSTask(error:NSError(domain: "Facebook Login", code: -1 , userInfo: ["Facebook" : "No current Facebook access token"]))
            
        }
    }
 
}
  
