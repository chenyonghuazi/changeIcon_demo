//
//  ViewController.swift
//  changeIcon_demo
//
//  Created by Edwin on 2018/3/20.
//  Copyright © 2018年 Edwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func changeicon(_ sender: UIButton) {
        changeIcon(iconName: "Icon1")
    }
    @IBAction func changeicon2(_ sender: UIButton) {
        changeIcon(iconName: "Icon2")
    }
    
    func changeIcon(iconName:String?) {
        
        if #available(iOS 10.3, *) {
            if UIApplication.shared.supportsAlternateIcons {//判断设备是否支持更换图标
                print("支持更换图标！")
                //开始更换
                UIApplication.shared.setAlternateIconName(iconName, completionHandler: { (error) in
                    
                    if error != nil {
                        print("替换icon失败(String(describing: error?.localizedDescription))")
                    }
                })
                
            }else {
                
                print("设备不支持更换图标")
            }
        } else {
            // Fallback on earlier versions
        }
    }

}

