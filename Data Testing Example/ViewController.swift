//
//  ViewController.swift
//  Data Testing Example
//
//  Created by The Delta School Student on 2/5/20.
//  Copyright © 2020 The Delta School Student. All rights reserved.
//

import UIKit
import UserNotifications
//Bethany's Character Data
var characterNameString : String?
var descriptionNameString : String?

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

}
    @IBAction func beginGameButton(_ sender: Any) {
        registerLocal()
        scheduleLocal()
    }


    @objc func registerLocal(){
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            if granted {
                print("Yay!")
            } else{
                print("D'oh!")
            }
        }
    }
         func scheduleLocal(){
            let center = UNUserNotificationCenter.current()
            
            let content = UNMutableNotificationContent()
            content.title = "Murder Mystery UPDATE"
            content.body = "Welcome to Anna Weatherbee and Benjamin Topaz's engagement party!"
            content.categoryIdentifier = "alarm"
            content.userInfo = ["customData" : "fizzbuzz"]
            content.sound = .default
            
            var dateComponents = DateComponents()
            dateComponents.hour = 14
            dateComponents.minute = 08
            let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
            
            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
            center.add(request)
        }
    
    @IBAction func recieveButton(_ sender: Any) {
    }
    
    @IBOutlet weak var textField: UITextField!

 //
    

    
    @IBAction func enterButton(_ sender: Any) {
        if Int(textField.text!) != nil && Int(textField.text!)! < 26 {
        generateCharacter (charNumber: Int(textField.text!)!,
                           descriptionNumber: Int(textField.text!)!)
        } else {
            print("A PROBLEM")
        }
    }
    func generateCharacter(charNumber: Int, descriptionNumber: Int) {
        characterNameString = characterNameArray[charNumber]
        descriptionNameString = descriptionArray[descriptionNumber]
    }
    
    
}

class SecondView: ViewController {
    
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterDescriptionLabel: UITextView!
            
    override func viewDidLoad() {
        super.viewDidLoad()
        characterNameLabel.text = characterNameString
        characterDescriptionLabel.text = descriptionNameString
    }
    
}
    

