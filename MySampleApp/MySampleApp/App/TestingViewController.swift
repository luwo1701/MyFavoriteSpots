//
//  TestingViewController.swift
//  MySampleApp
//
//  Created by Luke Worley on 2/18/17.
//
//

import UIKit
import AWSCore
import FBSDKCoreKit
import FBSDKLoginKit


class TestingViewController: UIViewController {

    @IBOutlet weak var testText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let credentialProvider = AWSCognitoCredentialsProvider(regionType: .usWest2, identityPoolId: "us-west-2:a8ed7db7-feaf-4016-b66c-2f3c7df17dec")
        
        let configuration = AWSServiceConfiguration(region: .usWest2, credentialsProvider: credentialProvider)
        AWSServiceManager.default().defaultServiceConfiguration = configuration
        if FBSDKAccessToken.current() != nil {
            print("user is logged in")
            print(String(describing: credentialProvider.identityId))
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
