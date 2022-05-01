//
//  ViewController.swift
//  ImageViewrPractice
//
//  Created by 김당찬 on 2022/05/01.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var numImage: Int = 1
    let maxImage: Int = 6
    
    @IBOutlet var btnPrevious: 	UIButton!
    @IBOutlet var btnNext: UIButton!
    @IBOutlet var imgView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imageName = String(numImage)+".png"
        imgView.image = UIImage(named: imageName)
    }
    
    
    @IBAction func nextImage(_ sender: UIButton) {
        numImage += 1
        if (numImage > maxImage) {
            numImage = 1
        }
        if (numImage < 1) {
            numImage = maxImage
        }
        let imageName = String(numImage)+".png"
        imgView.image = UIImage(named: imageName)
    }
    @IBAction func prevImage(_ sender: UIButton) {
        numImage -= 1
        if (numImage > maxImage) {
            numImage = 1
        }
        if (numImage < 1) {
            numImage = maxImage
        }
        let imageName = String(numImage)+".png"
        imgView.image = UIImage(named: imageName)
    }
}

