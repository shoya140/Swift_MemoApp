//
//  ViewController.swift
//  MemoApp
//
//  Created by wadadon on 2015/05/09.
//  Copyright (c) 2015年 DAWA. All rights reserved.
//

import UIKit


class ViewController: UIViewController, CAPSPageMenuDelegate {
    
    var pageMenu : CAPSPageMenu?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        // Array to keep track of controllers in page menu
//        var controllerArray : [UIViewController] = []
//        
//        // Create variables for all view controllers you want to put in the
//        // page menu, initialize them, and add each to the controller array.
//        // (Can be any UIViewController subclass)
//        // Make sure the title property of all view controllers is set
//        // Example:
//        var controller :  ReadTableViewController = ReadTableViewController(nibName: "ReadTableViewController", bundle: nil)
//        controller.title = "ReadTable"
//        controllerArray.append(controller)
//        var controller1 :  WriteViewController = WriteViewController(nibName: "WriteViewController", bundle: nil)
//        controller.title = "WriteTable"
//        controllerArray.append(controller)
//        
//        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
//        // Example:
//        var parameters: [String: AnyObject] = ["menuItemSeparatorWidth": 4.3,
//            "useMenuLikeSegmentedControl": true,
//            "menuItemSeparatorPercentageHeight": 0.1]
//        
//        // Initialize page menu with controller array, frame, and optional parameters
//        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), options: parameters)
//        pageMenu!.delegate = self
//        // Lastly add page menu as subview of base view controller view
//        // or use pageMenu controller in you view hierachy as desired
//        
//        self.view.addSubview(pageMenu!.view)
    
        // Do any additional setup after loading the view.
    }
    
    override func  viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // UI設定　ナビゲーションバーを設定
        
        //self.title = "PAGE MENU"
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
        
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "<-", style: UIBarButtonItemStyle.Done, target: self, action: "didTapGoToLeft")
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "->", style: UIBarButtonItemStyle.Done, target: self, action: "didTapGoToRight")
        
        // Array to keep track of controllers in page menu
        var controllerArray : [UIViewController] = []
        
        var controller1 :  ReadTableViewController = ReadTableViewController(nibName: "ReadTableViewController", bundle: nil)
        controller1.title = "ReadTable"
        controllerArray.append(controller1)
        var controller2 :  WriteViewController = WriteViewController(nibName: "WriteViewController", bundle: nil)
        controller2.title = "WriteTable"
        println("hoge")
        controllerArray.append(controller2)
        var controller3 : WebViewController = WebViewController(nibName: "WebViewController", bundle : nil)
        controller3.title = "WebTable"
        controllerArray.append(controller3)
        println(controllerArray.count)
        
        // Customize menu (Optional)
        var parameters: [String: AnyObject] = ["scrollMenuBackgroundColor": UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0),
            "viewBackgroundColor": UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 1.0),
            "selectionIndicatorColor": UIColor.orangeColor(),
            "bottomMenuHairlineColor": UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0),
            "menuItemFont": UIFont(name: "HelveticaNeue", size: 13.0)!,
            "menuHeight": 80.0,  //メニューの縦幅
            "menuItemWidth": 90.0,
            "centerMenuItems": true]
        
        // Initialize scroll menu
        
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), options: parameters)
        
        
        self.view.addSubview(pageMenu!.view)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //func willMoveToPage(controller: ReadTableViewController, index: Int){}
    
    //func didMoveToPage(controller:ReadTableViewController, index: Int){}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
