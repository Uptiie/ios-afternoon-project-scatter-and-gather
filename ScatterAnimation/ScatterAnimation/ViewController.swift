//
//  ViewController.swift
//  ScatterAnimation
//
//  Created by Uptiie on 9/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageScramble: Bool = false
    var isScramble: Bool = true
    lazy var letters: [UILabel] = [lLabel, aLabel, mLabel, bLabel, dLabel, a2Label]

    @IBOutlet weak var lLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var dLabel: UILabel!
    @IBOutlet weak var a2Label: UILabel!
    
    @IBOutlet weak var lambdaLogoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toggleButtonPressed(_ sender: Any) {
        
   
    }
    
    func animateImage() {
        
        if imageScramble == true {
            UIView.animate(withDuration: 3) {
                self.lambdaLogoImage.alpha = 1 }
            
        } else if imageScramble == false {
            UIView.animate(withDuration: 3) {
                self.lambdaLogoImage.alpha = 0 }
            }
        imageScramble = !imageScramble
        
        }
    
    func animateViews() {
        
        if isScramble {
            
            UIView.animate(withDuration: 3.0) {
                for letter in self.letters {
                    
                    let randomFloatX = CGFloat.random(in: 1 ... self.view.bounds.width)
                    let randomFloatY = CGFloat.random(in: 1 ... self.view.bounds.height)
                    
                    letter.center = CGPoint(x: randomFloatX, y: randomFloatY)
                    letter.backgroundColor = UIColor.random()
                    letter.textColor = UIColor.random()
                    letter.transform = CGAffineTransform(rotationAngle: CGFloat(arc4random_uniform(314)) / 100.0 CGFloat.pi)
                }
            }
        } else {
            
            UIView.animate(withDuration: 3.0) {
                for (index, letter) in self.letters.enumerated() {
                    
                    letter.center = CGPoint(x: CGFloat(index) * 62 + 15, y: 20)
                    letter.backgroundColor = UIColor.white
                    letter.textColor = UIColor.black
                    letter.transform = .identity
                }
            }
        }
    }
    }


