//
//  ViewController.swift
//  SwiftAddTarget
//
//  Created by Seimith on 12/25/16.
//  Copyright © 2016 Seimith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myCoolButton = UIButton()
        myCoolButton.setTitle("Hey Click Me if You Dare", for: .normal)
        myCoolButton.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        myCoolButton.backgroundColor = UIColor.cyan
        self.view.addSubview(myCoolButton)
        
        myCoolButton.addTarget(self, action: #selector(self.handleOnClickOfMyCoolButton), for: .touchUpInside)
    }
    
    func handleOnClickOfMyCoolButton () {
        print("Hey, I was clicked!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

