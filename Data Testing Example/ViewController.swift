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
var characterNumber : Int?

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

}
    @IBAction func beginGameButton(_ sender: Any) {
        registerLocal()
        //scheduleLocal()
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
  
    @IBAction func recieveButton(_ sender: Any) {
    }
    
    @IBOutlet weak var textField: UITextField!

    
    @IBAction func enterButton(_ sender: Any) {
        if Int(textField.text!) != nil && Int(textField.text!)! < 26 {
        generateCharacter (charNumber: Int(textField.text!)!,
                           descriptionNumber: Int(textField.text!)!)
        } else {
            print("A PROBLEM")
        }
    }
    func generateCharacter(charNumber: Int, descriptionNumber: Int) {
        characterNumber = charNumber
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
        setCharacter()
    }
    
    func setCharacter(){
    
        //Anna
    if characterNumber == 0 {
       // let notificationHour4 = 18
       // let notificationMinute4 = 25
        _ = notificationContent0[0]
        notification1()
        notification2()
        notification3()
   // notification4(notificationHour : notificationHour4, notificationMinute : notitificationMinute4, notificationContent : notificationContentBody)
    }
      
        //Ben
        if characterNumber == 1 {
          //  let notificationHour4 = 18
          //  let notificationMinute4 = 25
            _ = notificationContent0[0]
            notification1()
            notification2()
            notification3()
          //  notification4(notificationHour: notificationHour4, notificationMinute: notificationMinute4, notificationContent: notificationContentBody)
        }
        //HELEN
        if characterNumber == 2 {
          //  let notificationHour4 = 18
           // let notificationMinute4 = 25
            _ = notificationContent1[0]
            
           // let notificationHour5 = 18
           // let notificationMinute5 = 35
            _ =  notificationContent1[1]
            
           // let notificationHour6 = 18
           // let notificationMinute6 = 55
            _ = notificationContent1[2]
            
          //  let notificationHour7 = 19
          //  let notificationMinute7 = 10
            _ = notificationContent1[3]
            
         //   let notificationHour8 = 19
         //   let notificationMinute8 = 25
            _ = notificationContent1[4]
            
          //  let notificationHour9 = 19
          //  let notificationMinute9 = 55
            _ = notificationContent1[5]
            
           // let notificationHour10 = 20
           // let notificationMinute10 = 20
            _ = notificationContent1[6]
            
            notification1()
            notification2()
            notification3()
           // notification4(notificationHour: notificationHour4, notificationMinute: notificationMinute4, notificationContent: notificationContentBody)
          //  notification5(notificationHour: notificationHour5, notificationMinute: notificationMinute5, notificationContent: notificationContentBody2)
         //   notification6(notificationHour: notificationHour6, notificationMinute: notificationMinute6, notificationContent: notificationContentBody3)
        //    notification7(notificationHour: notificationHour7, notificationMinute: notificationMinute7, notificationContent: notificationContentBody4)
          //  notification8(notificationHour: notificationHour8, notificationMinute: notificationMinute8, notificationContent: notificationContentBody5)
        //    notification9(notificationHour: notificationHour9, notificationMinute: notificationMinute9, notificationContent: notificationContentBody6)
         //   notification10(notificationHour: notificationHour10, notificationMinute: notificationMinute10, notificationContent: notificationContentBody7)
            
        }
        //KATNISS
    if characterNumber == 3 {
            //let notificationHour4 = 18
           // let notificationMinute4 = 35
        _ = notificationContent1[0]
            
          //  let notificationHour5 = 18
           // let notificationMinute5 = 45
        _ =  notificationContent1[1]
        
          //  let notificationHour6 = 19
          //  let notificationMinute6 = 10
        _ = notificationContent1[2]
        
           // let notificationHour7 = 20
           // let notificationMinute7 = 20
        _ = notificationContent1[3]
        
          //  let notificationHour8 = 20
          //  let notificationMinute8 = 30
        _ = notificationContent1[4]
            
            notification1()
            notification2()
            notification3()
           // notification4(notificationHour: notificationHour4, notificationMinute: notificationMinute4, notificationContent: notificationContentBody)
          //  notification5(notificationHour: notificationHour5, notificationMinute: notificationMinute5, notificationContent: notificationContentBody2)
            //notification6(notificationHour: notificationHour6, notificationMinute: notificationMinute6, notificationContent: notificationContentBody3)
           // notification7(notificationHour: notificationHour7, notificationMinute: notificationMinute7, notificationContent: notificationContentBody4)
           // notification8(notificationHour: notificationHour8, notificationMinute: notificationMinute8, notificationContent: notificationContentBody5)
        }
        //CAMILA
        if characterNumber == 17 {
               // let notificationHour4 = 18
               // let notificationMinute4 = 35
            _ = notificationContent1[0]
                
                //let notificationHour5 = 19
               // let notificationMinute5 = 40
            _ =  notificationContent1[1]
            
              //  let notificationHour6 = 19
              //  let notificationMinute6 = 50
            _ = notificationContent1[2]
            
              //  let notificationHour7 = 20
             //   let notificationMinute7 = 05
            _ = notificationContent1[3]
                
                notification1()
                notification2()
                notification3()
            //    notification4(notificationHour: notificationHour4, notificationMinute: notificationMinute4, notificationContent: notificationContentBody)
            //    notification5(notificationHour: notificationHour5, notificationMinute: notificationMinute5, notificationContent: notificationContentBody2)
            //    notification6(notificationHour: notificationHour6, notificationMinute: notificationMinute6, notificationContent: notificationContentBody3)
           //     notification7(notificationHour: notificationHour7, notificationMinute: notificationMinute7, notificationContent: notificationContentBody4)
            }
        //TONI
        if characterNumber == 10 {
             //   let notificationHour4 = 18
          //      let notificationMinute4 = 45
            _ = notificationContent1[0]
                
           //     let notificationHour5 = 19
          //      let notificationMinute5 = 40
            _ =  notificationContent1[1]
            
             //   let notificationHour6 = 20
             //   let notificationMinute6 = 20
            _ = notificationContent1[1]
            
                notification1()
                notification2()
                notification3()
            //    notification4(notificationHour: notificationHour4, notificationMinute: notificationMinute4, notificationContent: notificationContentBody)
            //    notification5(notificationHour: notificationHour5, notificationMinute: notificationMinute5, notificationContent: notificationContentBody2)
            //    notification6(notificationHour: notificationHour6, notificationMinute: notificationMinute6, notificationContent: notificationContentBody3)
            }
        //ELSA
        if characterNumber == 25 {
              //  let notificationHour4 = 18
             //   let notificationMinute4 = 45
            _ = notificationContent1[0]
                
                notification1()
                notification2()
                notification3()
             //   notification4(notificationHour: notificationHour4, notificationMinute: notificationMinute4, notificationContent: notificationContentBody)

            }
        //LILI
        if characterNumber == 7 {
           // let notificationHour4 = 18
            //let notificationMinute4 = 45
            _ = notificationContent1[0]
            
            notification1()
            notification2()
            notification3()
           // notification4(notificationHour: notificationHour4, notificationMinute: notificationMinute4, notificationContent: notificationContentBody)
        }
        //FRED
        if characterNumber == 25 {
          //  let notificationHour4 = 18
          //  let notificationMinute4 = 55
            _ = notificationContent1[0]
            
            notification1()
            notification2()
            notification3()
        //    notification4(notificationHour: notificationHour4, notificationMinute: notificationMinute4, notificationContent: notificationContentBody)
        }
        //MERIDA
        if characterNumber == 5 {
           // let notificationHour4 = 19
          //  let notificationMinute4 = 15
            _ = notificationContent1[0]
            
            notification1()
            notification2()
            notification3()
        //    notification4(notificationHour: notificationHour4, notificationMinute: notificationMinute4, notificationContent: notificationContentBody)
        }
        //TORI
        if characterNumber == 22 {
         //   let notificationHour4 = 19
         //   let notificationMinute4 = 45
            _ = notificationContent1[0]
            
            notification1()
            notification2()
            notification3()
         //   notification4(notificationHour: notificationHour4, notificationMinute: notificationMinute4, notificationContent: notificationContentBody)
        }
        //ABOVE THIS LINE WRITE OUT ALL THE IF CHARACTERNUMBER EQUATIONS
    }
    }
    //BELOW THIS LINE IS WHERE WE SCHEDULE NOTIFICATIONS
    func notification1(){
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Murder Mystery UPDATE"
        content.body = "Welcome to Anna Weatherbee and Benjamin Topaz's engagement party! As you know, all of you are dear friends or family members of this joyful couple and they would like you to join them in this moment of happiness."
        content.categoryIdentifier = "alarm"
        content.sound = .default
        
        let dateComponents = DateComponents()
      //  dateComponents.hour = 18
     //   dateComponents.minute = 10
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    func notification2(){
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Murder Mystery UPDATE"
        content.body = "Camila Weatherbee's reasoning makes sense. Toni has always been in love with Anna and yet Anna was in love with Benjamin. He could have murderered Benjamin so that he could have Anna."
        content.categoryIdentifier = "alarm"
        content.sound = .default
        
        let dateComponents = DateComponents()
       // dateComponents.hour = 18
      //  dateComponents.minute = 10
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    func notification3(){
       let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Murder Mystery UPDATE"
        content.body = "Was Camila right? She's lying dead on the couch. It would make sense for him to kill her after she accused him in front of everyone..."
        content.categoryIdentifier = "alarm"
        content.sound = .default

        let dateComponents = DateComponents()
    //    dateComponents.hour = 18
     //   dateComponents.minute = 10
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    func notification4(notificationHour: Int, notificationMinute: Int, notificationContent: String){
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Murder Mystery UPDATE"
        content.body = notificationContent
        content.categoryIdentifier = "alarm"
        content.sound = .default
        
        var dateComponents = DateComponents()
        dateComponents.hour = notificationHour
        dateComponents.minute = notificationMinute
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    func notification5(notificationHour: Int, notificationMinute: Int, notificationContent: String){
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Murder Mystery UPDATE"
        content.body = notificationContent
        content.categoryIdentifier = "alarm"
        content.sound = .default
        
        let dateComponents = DateComponents()
     //   dateComponents.hour = notificationHour
      //  dateComponents.minute = notificationMinute
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    func notification6(notificationHour: Int, notificationMinute: Int, notificationContent: String){
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Murder Mystery UPDATE"
        content.body = notificationContent
        content.categoryIdentifier = "alarm"
        content.sound = .default
        
        var dateComponents = DateComponents()
        dateComponents.hour = notificationHour
        dateComponents.minute = notificationMinute
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    func notification7(notificationHour: Int, notificationMinute: Int, notificationContent: String){
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Murder Mystery UPDATE"
        content.body = notificationContent
        content.categoryIdentifier = "alarm"
        content.sound = .default
        
        var dateComponents = DateComponents()
        dateComponents.hour = notificationHour
        dateComponents.minute = notificationMinute
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    func notification8(notificationHour: Int, notificationMinute: Int, notificationContent: String){
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Murder Mystery UPDATE"
        content.body = notificationContent
        content.categoryIdentifier = "alarm"
        content.sound = .default
        
        var dateComponents = DateComponents()
        dateComponents.hour = notificationHour
        dateComponents.minute = notificationMinute
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    func notification9(notificationHour: Int, notificationMinute: Int, notificationContent: String){
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Murder Mystery UPDATE"
        content.body = notificationContent
        content.categoryIdentifier = "alarm"
        content.sound = .default
        
        var dateComponents = DateComponents()
        dateComponents.hour = notificationHour
        dateComponents.minute = notificationMinute
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    func notification10(notificationHour: Int, notificationMinute: Int, notificationContent: String){
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Murder Mystery UPDATE"
        content.body = notificationContent
        content.categoryIdentifier = "alarm"
        content.sound = .default
        
        var dateComponents = DateComponents()
        dateComponents.hour = notificationHour
        dateComponents.minute = notificationMinute
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)

}
