//
//  ViewController.swift
//  SwiftAddTarget
//
//  Created by Seimith on 12/25/16.
//  Copyright © 2016 Seimith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var drinkingCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myCoolButton = UIButton()
        myCoolButton.setTitle("Hey Click Me if You Dare", for: .normal)
        myCoolButton.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        myCoolButton.backgroundColor = UIColor.orange
        self.view.addSubview(myCoolButton)
        
        myCoolButton.addTarget(self, action: #selector(self.handleOnClickOfMyCoolButton), for: .touchUpInside)
    }
    
    func handleOnClickOfMyCoolButton () {
        self.drinkingCount += 1
        print("Hey, I was clicked!", self.drinkingCount)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

