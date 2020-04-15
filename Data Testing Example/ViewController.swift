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
var timeSelectedHour : Int?
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
        if Int(textField.text!) != nil && Int(textField.text!)! < 11 {
            generateCharacter (characterNumber: Int(textField.text!)!,
                               descriptionNumber: Int(textField.text!)!)
        } else {
            print("A PROBLEM")
        }
    }
    func generateCharacter(characterNumber: Int, descriptionNumber: Int) {
        characterNameString = characterNameArray[characterNumber]
        descriptionNameString = descriptionArray[descriptionNumber]
    }
}
class SecondView: ViewController {
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterDescriptionLabel: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        characterDescriptionLabel.text = descriptionNameString
        setCharacter()
          // how do I declare characterNumber? Would I do it up in func viewDidLoad?? But what would I be declaring it as? An Int??
    }
    func setCharacter(){
    }
    //Anna
    if characterNumber == 0 {
    // how do I declare characterNumber? Would I do it up in func viewDidLoad?? But what would I be declaring it as? An Int??
    let notificationContent = notificationContent0[0]
    notification1()
    notification2()
    notification3()
    notification4()
    notification5(notificationHour : timeSelectedHour!, notificationMinute: 20, notificationContent : notificationContent0[0])
    notification6(notificationHour : timeSelectedHour! + 1, notificationMinute:15, notificationContent: notificationContent0[1])
    notification7(notificationHour : timeSelectedHour! + 1, notificationMinute:25, notificationContent : notificationContent0[2])
    }
    //Ben
    if characterNumber == 1 {
    let notificationContent = notificationContent1[0]
    notification1()
    notification2()
    notification3()
    notification4()
    notification5(notificationHour : timeSelectHour!, notificationMinute:05, notificationContent: notificationContent1[0])
    notification6(notificationHour : timeSelectHour!, notificationMinute:25, notificationContent:notificationContent1[1])
    }
    //HELEN
    if characterNumber == 2 {
    let notificationContent = notificationContent2[0]
    notification1()
    notification2()
    notification3()
    notification4()
    notification5(notificationHour : timeSelectHour!, notificationMinute:10, notificationContent:notificationContent2[0])
    notification6(notificationHour : timeSelectHour! + 1, notificationMinute:00, notificationContent:  notificationContent2[1])
    }
    //KAT
    if characterNumber == 3 {
    let notificationContent = notificationContent3[0]
    notification1()
    notification2()
    notification3()
    notification4()
    notification5(notificationHour : timeSelectHour!, notificationMinute:10, notificationContent: notificationContent3[0])
    notification6(notificationHour: timeSelectHour! + 1, notificationMinute:00, notificationContent: notificationContent3[1])
    notification7(notificationHour : timeSelectHour! + 1, notificationMinute:10, notificationContent: notificationContent3[2])
    notification8(notificationHour : timeSelectHour! + 1, notificationMinute:15, notificationContent: notificationContent3[3])
    notification9(notificationHour: timeSelectHour! + 1, notificationMinute:25, notificationContent: notificationContent3[4])
    }
    //MERIDA
    if characterNumber == 4 {
    let notificationContent = notificationContent4[0]
    notification1()
    notification2()
    notification3()
    notification4()
    notification5(notificationHour : timeSelectHour!, notificationMinute:55, notificationContent: notificationContent4[0])
    notification6(notificationHour : timeSelectHour! + 1, notificationMinute: 05, notificationContent: notificationContent4[1])
    }
    //LILI
    if characterNumber == 5 {
    let notificationContent = notificationContent5[0]
    notifaction1()
    notifaction2()
    notifaction3()
    notification4()
    notification5(notificationHour : timeSelectHour!, notificationMinute:30, notificationContent: notificationContent5[0])
    notification6(notificationHour : timeSelectHour! + 1, notificationMinute:05, notificationContent: notificationContent5[1])
    }
    //TONI
    if characterNumber == 6 {
    let notificationContent = notificationContent6[0]
    notification1()
    notification2()
    notification3()
    notification4()
    notification5(notificationHour : timeSelectHour!, notificationMinute:35, notificationContent: notificationContent6[0])
    }
    //CAMILA
    if characterNumber == 7 {
    let notificationContent = notificationContent7[0]
    notification1()
    notification2()
    notification3()
    notification4()
    notification5(notificationHour: timeSelectHour!, notificationMinute: 10, notificationContent: notificationContent7[0])
    notification6(notificationHour: timeSelectHour!, notificationMinute:25, notificationContent: notificationContent7[1])
    notification7(notificationHour : timeSelectHour! + 1, notificationMinute:25, notificationContent: notificationContent7[2])
    }
    //TORI
    if characterNumber == 8 {
    let notificationContent = notificationContent8[0]
    notification1()
    notification2()
    notification3()
    notification4()
    notification5(notificationHour: timeSelectHour!, notificationMinute:20, notificationContent: notificationContent8[0])
    notification6(notificationHour : timeSelectHour!, notificationMinute:50, notificationContent: notificationContent8[1])
    }
    //FRED
    if characterNumber == 9 {
    let notificationContent = notificationContent9[0]
    notification1()
    notification2()
    notification3()
    notification4()
    notification5(notificationHour: timeSelectHour!, notificationMinute:40, notificationContent: notificationContent9[0]
    notification6(notificationHour: timeSelectHour! + 1, notificationMinute:00, notificationContent: notificationContent9[1])
    }
    //ELSA
    if characterNumber == 10 {
    let notificationContent = notificationContent10[0]
    notification1()
    notification2()
    notification3()
    notification4()
    notifaction5(notificationHour: timeSelectHour!, notificationMinute:35, notificationContent: notificationContent10[0])
    }
    func notification1(){
    let center = UNUserNotificationCenter.current()
    let content = UNMutableNotificationContent()
    content.title = "Spanish Flu UPDATE"
    content.body = "The Spanish flu has been killing people for a few years now and someone in this group of friends has the cure! It is up to this eleven to figure out who it is to end the spread of this pandemic!"
    content.categoryIdentifier = "alarm"
    content.sound = .default
    let dateComponents = DateComponents()
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    center.add(request)
    }
    func notification2(){
    let center = UNUserNotificationCenter.current()
    let content = UNMutableNotificationContent()
    content.title = "Spanish Flu UPDATE"
    content.body = "Unfortunately, Benjamin Topaz is dead and his aunt, Elsa Parkinson, is beginning to feel the symptoms."
    content.categoryIdentifier = "alarm"
    content.sound = .default
    let dateComponents = DateComponents()
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    center.add(request)
    }
    func notification3(){
    let center = UNUserNotificationCenter.current()
    let content = UNMutableNotificationContent()
    content.title = "Spanish Flu UPDATE"
    content.body = "Elsa Parkinson and Toni Blossom are both dead from the Spanish flu." ,"Helen and Fred Borden have both died from the Spanish Flu."
    content.categoryIdentifier = "alarm"
    content.sound = .default
    let dateComponents = DateComponents()
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    center.add(request)
    }
    func notification4(){
    let center = UNUserNotificationCenter.current()
    let content = UNMutableNotificationContent()
    content.title = "Spanish Flu UPDATE"
    content.body  = "The Spanish flu has ended! You found the cure!"
    content.categoryIdentifier = "alarm"
    content.sound = .default
    let dateComponents = DateComponents()
    let trigger = UNCalendarNotificationTrigger(dateMatching:dateComponents, repeats:false)
    let request = UNNotificationRequest(identifier:UUID().uuidString, content:content, trigger:trigger)
    center.add(request)
    }
    func notification5(notificationHour: Int, notificationMinute: Int, notificationContent: String){
    let center = UNUserNotificationCenter.current()
    let content = UNMutableNotificationContent()
    content.title = "Spanish Flu UPDATE"
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
    func notification6(notificationHour: Int, notificationMinute: Int, notificationContent: String){
    let center = UNUserNotificationCenter.current()
    let content = UNMutableNotificationContent()
    content.title = "Spanish Flu UPDATE"
    content.body = notificationContent
    content.categoryIdentifier = "alarm"
    content.sound = .default
    let dateComponents = DateComponents()
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    center.add(request)
    }
    func notification7(notificationHour: Int, notificationMinute: Int, notificationContent: String){
    let center = UNUserNotificationCenter.current()
    let content = UNMutableNotificationContent()
    content.title = "Spanish Flu UPDATE"
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
    content.title = "Spanish Flu UPDATE"
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

