//
//  ViewController.swift
//  счетчик
//
//  Created by Apple on 17.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    
    @IBAction func buttom(_ sender: UIButton) {
        counter += 1
        label.text = "\(counter)"
        textView.text = textView.text + "\n \(Date()) значение изменено на +1"
    }
    
   
    @IBAction func minusButtom(_ sender: UIButton) {
        if counter > 0 {counter -= 1
            
            label.text = "\(counter)"
            textView.text = textView.text + "\n \(Date()) значение изменено на -1"
            
            
        } else {
            textView.text = textView.text + "\n \(Date()) попытка умешить значение ниже 0"
        }
    
        
    }
    
    @IBAction func resetButtom(_ sender: UIButton) { 
        counter = 0
        label.text = "\(counter)"
        textView.text = textView.text + "\n \(Date()) значение сброшено"
    }
    
    
    
    @IBOutlet var textView: UITextView!
    
    
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "История изменений:"
        label.text = "\(counter)"
        
    }
}
