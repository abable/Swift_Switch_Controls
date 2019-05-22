//
//  ViewController.swift
//  Switch
//
//  Created by Seungjun Lim on 22/05/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bulbImageView: UIImageView!
    
    @IBOutlet weak var testSwitch: UISwitch!
    
    
    @IBAction func stateChanged(_ sender: UISwitch) {
        bulbImageView.isHighlighted = sender.isOn
    }
    
    @IBAction func toggle(_ sender: Any) {
        
//        testSwitch.isOn = !testSwitch.isOn
        // 동작이 너무 빠르게 되서 애니메이션 을 넣음
        testSwitch.setOn(!testSwitch.isOn, animated: true)
        
        // 전구 까지 연결..
        stateChanged(testSwitch)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testSwitch.isOn = bulbImageView.isHighlighted
    }


}

