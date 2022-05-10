//
//  ViewController.swift
//  AlertTimer
//
//  Created by 김당찬 on 2022/05/10.
//

import UIKit

class ViewController: UIViewController {

    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime : String!
    
    @IBOutlet var lblCurrentTIme: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
        
        lblPickerTime.text = "선택시간 : " + alarmTime
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm aaa"
        
        let currentTime = formatter.string(from: date as Date)
        lblCurrentTIme.text = "현재시간 : " + currentTime
        
        if (alarmTime == currentTime) {
            let alarmAlert = UIAlertController(title: "알림", message: "설정된 시간입니다!", preferredStyle: UIAlertController.Style.alert)
            let alarmAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: {
                ACTION in self.alarmTime = nil
                self.lblPickerTime.text = "선택시간 : "
            })
            
            alarmAlert.addAction(alarmAction)
            present(alarmAlert, animated: true, completion: nil)
            
        }
        
    }
    
    


}

