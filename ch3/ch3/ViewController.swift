//
//  ViewController.swift
//  ch3
//
//  Created by 吴耕兆 on 2020/3/2.
//  Copyright © 2020 gengzhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton){
        let emojiDic = [
            "👾":"ghost",
            "👻":"smile",
            "😎":"glass man",
            "🤖":"robot"
            
        ]
        let selectedButton = sender
        
        if let worldToLookUp = selectedButton.titleLabel?.text{
            let meaning = emojiDic[worldToLookUp]
            let uiAlerter = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
            uiAlerter.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(uiAlerter, animated: true, completion: nil)
        }
        
    }


}

