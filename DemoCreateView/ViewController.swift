//
//  ViewController.swift
//  DemoCreateView
//
//  Created by Trần Đức Anh on 10/25/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        redView.center.x -= view.bounds.width
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.5, delay: 0.5, options: [], animations: {
            self.redView.center.x += self.view.bounds.width
        }, completion: nil)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

