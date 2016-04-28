//
//  ViewController.swift
//  Demo01
//
//  Created by 朱骁雄 on 16/4/5.
//  Copyright © 2016年 朱骁雄. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let view = UIView(frame: CGRect(x: 20, y: 20, width: 300, height: 400))
        
        view.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

