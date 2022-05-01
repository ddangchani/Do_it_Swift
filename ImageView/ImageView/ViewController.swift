//
//  ViewController.swift
//  ImageView
//
//  Created by 김당찬 on 2022/05/01.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    

    @IBOutlet var imgView: UIImageView! // image
    @IBOutlet var btnResize: UIButton! // button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn // 초기값 > ON
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        // 변수 종류인 CGFloat만 지정함
        
        if (isZoom) {
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            
            btnResize.setTitle("Size Up", for: .normal)
        }
        else {
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            
            btnResize.setTitle("Size Down", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch){
        if sender.isOn{
            imgView.image = imgOn
        } else{
            imgView.image = imgOff
        }
    }
        
}

