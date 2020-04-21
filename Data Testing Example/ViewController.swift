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
var timeSelectedHour : Int? = 12


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
                //these lines need to be removed after testing
                print("Yay!")
            } else{
                print("D'oh!")
            }
        }
    }
    @IBAction func recieveButton(_ sender: Any) {
    }
    
}
//View Controller with Picker view
class ViewController2: ViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.selectRow(12, inComponent: 0, animated: false)
    }
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    @IBAction func enterButton(_ sender: Any) {
        if Int(textField.text!) != nil && Int(textField.text!)! < 11 {
            //line below for debugging time
            print(timeSelectedHour!)
            characterNumber = Int(textField.text!)!
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
//Picker stuff, don't touch
extension ViewController2: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return 24
        default:
            return 0
        }
    }
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return pickerView.frame.size.width/3
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return "\(row):00"
        default:
            return""
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            timeSelectedHour = row
        default:
            break;
        }
        
    }
    
}
class secondView: ViewController {
    
    @IBOutlet weak var characterDescriptionLabel: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        characterDescriptionLabel.text = descriptionNameString
        setCharacter()
        // how do I declare characterNumber? Would I do it up in func viewDidLoad?? But what would I be declaring it as? An Int??
    }
    func setCharacter(){
        //ANNA
        if characterNumber == 0 {
            // how do I declare characterNumber? Would I do it up in func viewDidLoad?? But what would I be declaring it as? An Int??
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour : timeSelectedHour!, notificationMinute: 20, notificationContent : notificationContent0[0])
            notification7(notificationHour : timeSelectedHour! + 1, notificationMinute:15, notificationContent: notificationContent0[1])
            notification8(notificationHour : timeSelectedHour! + 1, notificationMinute:25, notificationContent : notificationContent0[2])
            
        }
        //BENJAMIN
        if characterNumber == 1 {
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour : timeSelectedHour!, notificationMinute:05, notificationContent: notificationContent1[0])
            notification7(notificationHour : timeSelectedHour!, notificationMinute:25, notificationContent:notificationContent1[1])
        }
        //HELEN
        if characterNumber == 2 {
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour : timeSelectedHour!, notificationMinute:10, notificationContent:notificationContent2[0])
            notification7(notificationHour : timeSelectedHour! + 1, notificationMinute:00, notificationContent:  notificationContent2[1])
        }
        //KAT
        if characterNumber == 3 {
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour : timeSelectedHour!, notificationMinute:10, notificationContent: notificationContent3[0])
            notification7(notificationHour: timeSelectedHour! + 1, notificationMinute:00, notificationContent: notificationContent3[1])
            notification8(notificationHour : timeSelectedHour! + 1, notificationMinute:10, notificationContent: notificationContent3[2])
            notification9(notificationHour : timeSelectedHour! + 1, notificationMinute:15, notificationContent: notificationContent3[3])
            notification10(notificationHour: timeSelectedHour! + 1, notificationMinute:25, notificationContent: notificationContent3[4])
        }
        //MERIDA
        if characterNumber == 4 {
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour : timeSelectedHour!, notificationMinute:55, notificationContent: notificationContent4[0])
            notification7(notificationHour : timeSelectedHour! + 1, notificationMinute: 05, notificationContent: notificationContent4[1])
        }
        //LILI
        if characterNumber == 5 {
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour : timeSelectedHour!, notificationMinute:30, notificationContent: notificationContent5[0])
            notification7(notificationHour : timeSelectedHour! + 1, notificationMinute:05, notificationContent: notificationContent5[1])
        }
        //TONI
        if characterNumber == 6 {
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour : timeSelectedHour!, notificationMinute:35, notificationContent: notificationContent6[0])
        }
        //CAMILA
        if characterNumber == 7 {
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour: timeSelectedHour!, notificationMinute: 10, notificationContent: notificationContent7[0])
            notification7(notificationHour: timeSelectedHour!, notificationMinute:25, notificationContent: notificationContent7[1])
            notification8(notificationHour : timeSelectedHour! + 1, notificationMinute:25, notificationContent: notificationContent7[2])
        }
        //TORI
        if characterNumber == 8 {
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour: timeSelectedHour!, notificationMinute:20, notificationContent: notificationContent8[0])
            notification7(notificationHour : timeSelectedHour!, notificationMinute:50, notificationContent: notificationContent8[1])
        }
        //FRED
        if characterNumber == 9 {
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour: timeSelectedHour!, notificationMinute:40, notificationContent: notificationContent9[0])
            notification7(notificationHour: timeSelectedHour! + 1, notificationMinute:00, notificationContent: notificationContent9[1])
        }
        //ELSA
        if characterNumber == 10 {
            notification1()
            notification2()
            notification3()
            notification4()
            notification5()
            notification6(notificationHour: timeSelectedHour!, notificationMinute:35, notificationContent: notificationContent10[0])
        }
    }
    
    func notification1(){
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "Spanish Flu UPDATE"
        content.body = "The Spanish flu has been killing people for a few years now and someone in this group of friends has the cure! It is up to this eleven to figure out who it is to end the spread of this pandemic!"
        content.categoryIdentifier = "alarm"
        content.sound = .default
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = timeSelectedHour!
        dateComponents.minute = 1
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
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = timeSelectedHour!
        dateComponents.minute = 35
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
        print ("notification 1 scheduled")
        }
    
    func notification3(){
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "Spanish Flu UPDATE"
        content.body = "Elsa Parkinson and Toni Blossom are both dead from the Spanish flu."
        content.categoryIdentifier = "alarm"
        content.sound = .default
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = timeSelectedHour!
        dateComponents.minute = 50
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
            
    }
    
    func notification4(){
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "Spanish Flu UPDATE"
        content.body = "Helen and Fred Borden have both died from the Spanish Flu."
        content.categoryIdentifier = "alarm"
        content.sound = .default
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = timeSelectedHour! + 1
        dateComponents.minute = 05
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    func notification5(){
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "Spanish Flu UPDATE"
        content.body  = "The Spanish flu has ended! You found the cure!"
        content.categoryIdentifier = "alarm"
        content.sound = .default
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        dateComponents.hour = timeSelectedHour! + 1
        dateComponents.minute = 30
        let trigger = UNCalendarNotificationTrigger(dateMatching:dateComponents, repeats:false)
        let request = UNNotificationRequest(identifier:UUID().uuidString, content:content, trigger:trigger)
        center.add(request)
        
        
    }
    
    func notification6(notificationHour: Int, notificationMinute: Int, notificationContent: String){
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
    func notification7(notificationHour: Int, notificationMinute: Int, notificationContent: String){
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
    func notification8(notificationHour: Int, notificationMinute: Int, notificationContent: String){
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
    func notification10(notificationHour: Int, notificationMinute: Int, notificationContent: String){
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
}
