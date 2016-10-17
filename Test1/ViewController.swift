//
//  ViewController.swift
//  Test1
//
//  Created by msidt on 5/30/16.
//  Copyright © 2016 California state university fullerton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource

{

    @IBOutlet weak var collectionview: UICollectionView!
    
    // An array to create desired number of cells in the home screen collection view 
    
    let category = ["About us", "Program Structure", "Courses", "Community" , "Learning Goals", "Contact Us","Facebook", "Twitter", "Youtube", "Student Portal", "Alumni", "Faculty", "Career center", "Free Software", "Apply Now", "FAQ"]
    
    let imagearray = [UIImage (named: "Entypo_d83d(1)_512"), UIImage (named: "Entypo_d83d(0)_1024-6"), UIImage (named: "Entypo_d83d(0)_1024"), UIImage (named: "Entypo_d83d(0)_1024-1"), UIImage (named: "Entypo_d83c(0)_1024"), UIImage (named: "Entypo_d83d(0)_1024-2"),UIImage (named: "Entypo_f30c(0)_1024"), UIImage (named: "Entypo_f309(0)_1024"), UIImage (named: "Entypo_d83c(0)_1024-1"), UIImage (named: "Entypo_e78e(0)_1024"), UIImage (named: "Entypo_e722(0)_1024"), UIImage (named: "Entypo_270e(0)_1024"), UIImage (named: "Entypo_d83d(0)_1024-3"), UIImage (named: "Entypo_d83d(0)_1024-4"), UIImage (named: "Entypo_e789(0)_1024"), UIImage (named: "Entypo_d83d(0)_1024-5")]
    
    let webarray = ["http://ed.fullerton.edu/msidt/about-our-department/", "http://ed.fullerton.edu/msidt/future-students/program-structure/", "http://ed.fullerton.edu/msidt/future-students/courses/", "http://ed.fullerton.edu/msidt/category/collaborative-research/", "http://ed.fullerton.edu/msidt/future-students/learning-goals-and-student-learning-outcomes/", "http://ed.fullerton.edu/msidt/about-our-department/contact-information/", "https://www.facebook.com/MSIDTFullerton/", "https://twitter.com/msidt", "hhttps://www.youtube.com/watch?v=hAu_Ef22gvA", "https://shibboleth.fullerton.edu/idp/profile/SAML2/Redirect/SSO?execution=e1s1", "http://ed.fullerton.edu/msidt/alumni/", "http://ed.fullerton.edu/msidt/faculty/", "http://www.fullerton.edu/career/", "http://www.fullerton.edu/it/students/software/", "http://ed.fullerton.edu/msidt/apply-now/", "http://ed.fullerton.edu/msidt/future-students/faq/"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    
    }

    //to set the number of cells
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.category.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionview.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell1
        
        cell.imageopenview.image = self.imagearray[indexPath.row]
        
        cell.titlelabel .text = self.category[indexPath.row]
        
        
        return cell
        
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        
        let secondViewController = self.storyboard!.instantiateViewControllerWithIdentifier("newVC") as! NewViewController
        secondViewController.strUrl = webarray[indexPath.item]
        self.navigationController!.pushViewController(secondViewController, animated: true)
        
    }
    
        
    
    
    

}