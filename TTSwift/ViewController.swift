//
//  ViewController.swift
//  TTSwift
//
//  Created by Vienta on 14-6-11.
//  Copyright (c) 2014年 Vienta. All rights reserved.
//

import UIKit


let APP_Width = CGRectGetWidth(UIScreen.mainScreen().bounds)
let APP_Height = CGRectGetHeight(UIScreen.mainScreen().bounds)

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.layoutUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func layoutUI(){
        
        /*
        let button = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(100,100,80,40)
        button.exclusiveTouch = true;
        button.setTitle("Hao", forState: UIControlState.Normal)
        button.addTarget(self, action: "Hee:", forControlEvents: UIControlEvents.TouchUpInside)
        button.backgroundColor = UIColor.redColor()
        button.setTitleColor(UIColor.yellowColor(), forState: UIControlState.Normal)
        
        self.view.addSubview(button)
*/
        
        let tableview = UITableView(frame:CGRectMake(0,0,APP_Width,APP_Height),style: UITableViewStyle.Plain) as UITableView
        tableview.delegate = self
        tableview.dataSource = self
        self.view.addSubview(tableview)
        
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat{
        return APP_Height / 10
    }
    
    func tableView(tableView: UITableView!, willDisplayCell cell: UITableViewCell!, forRowAtIndexPath indexPath: NSIndexPath!){
        if (indexPath.row % 2 == 0 ) {
            cell.backgroundColor = UIColor.greenColor()
        } else {
            cell.backgroundColor = UIColor.blueColor()
        }
        
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Identifier")
        cell.text = "\(indexPath.row)"
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        self.TouchTableView(indexPath)
    }
    
    func TouchTableView(indexPath:NSIndexPath!) {
        println(indexPath.row)
    }
/*
    func Hee(sender:UIButton!){
        println(sender)
    }
*/
}

