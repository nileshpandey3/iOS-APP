//
//  NewViewController.swift
//  Test1
//
//  Created by msidt on 5/30/16.
//  Copyright © 2016 California state university fullerton. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
@IBOutlet weak var website: UIWebView!
    var strUrl : NSString = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        print(strUrl)
        
        // Do any additional setup after loading the view.
        
        let url = NSURL (string: strUrl as String);
        let requestObj = NSURLRequest(URL: url!);
        website.loadRequest(requestObj)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
