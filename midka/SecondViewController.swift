//
//  SecondViewController.swift
//  midka
//
//  Created by Асан Шакабаев on 3/7/20.
//  Copyright © 2020 Асан Шакабаев. All rights reserved.
//

import UIKit

//class SecondViewController: UIViewController {
////    var color: UIColor;
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//    @IBAction func chooseColor(_ sender: UIButton) {
//        print("123")
//        let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
////        self.navigationController?.pushViewController(ViewController, animated: true)
//        self.navigationController?.popViewController(animated: true)
//    }
//
//}
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
