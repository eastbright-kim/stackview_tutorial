//
//  ViewController.swift
//  stackview_tutorial
//
//  Created by 김동환 on 2021/04/14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet var numberBtns: [CustomButton]!
    @IBOutlet weak var callButton: CustomButton!
    var inputNumber = "" {
        didSet{
            DispatchQueue.main.async { [weak self] in
                guard let self = self else {return}
                self.numberLabel.text = self.inputNumber
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for btn in numberBtns {
            
            btn.addTarget(self, action: #selector(appendNumber(sender:)), for: .touchUpInside)
        }
        
        callButton.addTarget(self, action: #selector(removeAll), for: .touchUpInside)
        
    }

    
    @objc fileprivate func appendNumber(sender: CustomButton){
        self.numberLabel.textColor = .black
        guard let number = sender.titleLabel?.text else { return }
        
        inputNumber.append(number)
        
    }
    
    @objc fileprivate func removeAll(_ sender: CustomButton){
        inputNumber.removeAll()
    }

}

