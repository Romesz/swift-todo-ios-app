//
//  ViewController.swift
//  swift-test
//
//  Created by mini on 18/08/2016.
//  Copyright © 2016 mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var newButton: UIButton!
    @IBOutlet var newInput: [UITextField]!
    var yLabel: Int = 110;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func touchHappend(_ sender: AnyObject) {
        self.view.addSubview(addLabel(y:yLabel));
        self.view.addSubview(addSwitch(y:yLabel));
        
        yLabel += 35;
    }
    
    func addLabel(y:Int) -> UILabel {
        let label = UILabel(frame: CGRect(x:150, y:yLabel, width: 80, height: 20));
        label.text = self.newInput[0].text;
        label.textAlignment = NSTextAlignment.center;
        return label;
    }

    func addSwitch(y:Int) -> UISwitch {
        let uiSwitch = UISwitch();
        uiSwitch.frame = CGRect(x:100, y:yLabel, width: 20, height: 10);
        uiSwitch.isOn = true;
        return uiSwitch;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

