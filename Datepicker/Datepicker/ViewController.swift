//
//  ViewController.swift
//  Datepicker
//
//  Created by 김당찬 on 2022/05/01.
//

import UIKit

class ViewController: UIViewController {

    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime: String!
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
        lblPickerTime.text = "선택 시간: " + alarmTime
    }
    
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count += 1
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)
        lblCurrentTime.text = "현재 시간: " + currentTime
        if (alarmTime == currentTime){
            view.backgroundColor = UIColor.red
        } else{
            view.backgroundColor = UIColor.white
        }
    }
    
}

