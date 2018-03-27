//
//  ViewController.swift
//  blerter-mobile
//
//  Created by Rommel Sumpo on 11/10/17.
//  Copyright © 2017 Blerter. All rights reserved.
//

import Foundation
import UIKit
import BlerterService

class ViewController: UIViewController {
    let grpcManager = GrpcManager.instance
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Connect to grpc
        GrpcManager.instance.connect(grpcServer: "grpc.prototype.com")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func createToken(sender: UIButton) {
        let request = Request.init()
        
        grpcManager.blerterService!.generateToken(with: request) { (response, error) in
            if ((response) != nil) {
                if (response!.responseCode == 200) {
                    self.grpcManager.accessToken = response!.info
                    self.showAlert(message: "AccessToken:" + self.grpcManager.accessToken!)
                } else {
                    self.showAlert(message: response!.info)
                }
                
            } else {
                self.showAlert(message: error!.localizedDescription)
            }
        }
    }
   
    @IBAction func validateToken(sender: UIButton) {
        let request = Request.init()
        request.token.token = self.grpcManager.accessToken
        grpcManager.blerterService!.checkToken(with: request) { (response, error) in
            if ((response) != nil) {
                self.showAlert(message: response!.info)
                
            } else {
                self.showAlert(message: error!.localizedDescription)
            }
        }
    }

    @IBAction func getHealthData(sender: UIButton) {
        let request = Request.init()
        request.token.token = self.grpcManager.accessToken
        request.id_p.id_p = 1
        grpcManager.blerterService!.getHealthWith(request) { (response, error) in
            if ((response) != nil) {
                if (response!.responseCode == 200) {
                    if (response!.healthArray_Count > 0) {
                        let health = (response?.healthArray[0])! as! Health
                        self.showAlert(message: health.description)
                        
                    }
                    
                } else {
                    self.showAlert(message: response!.info)
                }
                
            } else {
                self.showAlert(message: error!.localizedDescription)
            }
        }
    }

        
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Message", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

