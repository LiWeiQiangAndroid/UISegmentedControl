//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by 李维强 on 2018/9/13.
//  Copyright © 2018 李维强. All rights reserved.
//分布控制器

import UIKit

class ViewController: UIViewController {

//    let segmentedControl = UISegmentedControl(items: ["按钮1",UIImage(named: "image")!.withRenderingMode(UIImage.RenderingMode.alwaysTemplate),"按钮3","按钮4"])
    
    let segmentedControl = UISegmentedControl(items: ["1","按钮","按钮按钮","按钮按按钮按钮按钮"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        segmentedControl.frame = CGRect(x: 20, y: 100, width: 280, height: 30)
        segmentedControl.tintColor = UIColor.red
        
        segmentedControl.addTarget(self, action: #selector(sele), for: UIControl.Event.valueChanged)
        self.view.addSubview(segmentedControl)
        
        //自定义按钮宽度
//        segmentedControl.setWidth(10, forSegmentAt: 0)
//        segmentedControl.setWidth(40, forSegmentAt: 1)
//        segmentedControl.setWidth(100, forSegmentAt: 2)
//        segmentedControl.setWidth(200, forSegmentAt: 3)
        
        //自适应按钮
        segmentedControl.apportionsSegmentWidthsByContent = true
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //按钮插入
//        segmentedControl.insertSegment(withTitle: "new", at: 0, animated: true)
        //删除按钮
//        segmentedControl.removeSegment(at: 0, animated: true)
        //修改按钮
        segmentedControl.setTitle("replace", forSegmentAt: 0)
    }

    @objc func sele(seg:UISegmentedControl){
        print("用户选择了\(seg.selectedSegmentIndex)")
    }
    
}

