//
//  ViewController.swift
//  BusyBoard
//
//  Created by Igor Denisiuk on 12/13/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redButton: UISlider!{
    didSet {
        redButton.value = 0
        redButton.thumbTintColor = .red
        }
    }
    
    @IBOutlet var greenButton: UISlider! {
        didSet {
            greenButton.value = 0
            greenButton.thumbTintColor = .green
        }
    }
    
    @IBOutlet var blueButton: UISlider! {
        didSet {
        blueButton.value = 0
        blueButton.thumbTintColor = .blue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = .black
      
    }
    
    
    @IBAction func colorView(_ sender: UISlider) {
        colorView.backgroundColor = UIColor(red: CGFloat(redButton.value) / 255, green: CGFloat(greenButton.value) / 255, blue: CGFloat(blueButton.value) / 255, alpha: 1.0)
        }
}
