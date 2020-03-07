//
//  ViewController.swift
//  midka
//
//  Created by Асан Шакабаев on 3/7/20.
//  Copyright © 2020 Асан Шакабаев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var btn: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func viewSelected(_ sender: UIButton) {
        
        btn = sender
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard
            let selectVC = storyboard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController
        else { return }
        selectVC.onSave = { (color) in
            self.btn?.backgroundColor = color
            
        }
        self.navigationController?.pushViewController(selectVC, animated: true)

    }
    
}
