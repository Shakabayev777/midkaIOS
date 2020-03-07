//
//  SecondViewController.swift
//  midka
//
//  Created by Асан Шакабаев on 3/7/20.
//  Copyright © 2020 Асан Шакабаев. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var onSave: ((UIColor) -> Void)? = nil

    @IBAction func selectColor(_ sender: UIButton) {
        onSave?(sender.backgroundColor!)
        self.dismiss(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}
