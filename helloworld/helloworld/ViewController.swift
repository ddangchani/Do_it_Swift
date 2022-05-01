//
//  ViewController.swift
//  helloworld
//
//  Created by 김당찬 on 2022/05/01.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var Hello: UILabel!
    
    @IBOutlet var txtname: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// 액션함수는 일반적으로 클래스 맨 마지막 부분에!
    
    
    @IBAction func btnSend(_ sender: UIButton) {
        Hello.text = "Hello, " + txtname.text!
    } // Hello 변수의 text를 바꿈
}

