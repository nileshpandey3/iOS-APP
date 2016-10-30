//
//  CollectionViewCell1.swift
//  Test1
//
//  Created by msidt on 5/30/16.
//  Copyright © 2016 California state university fullerton. All rights reserved.
//

import UIKit

class CollectionViewCell1: UICollectionViewCell {
    
    @IBOutlet weak var imageopenview: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    
    override func prepareForReuse() -> Void {
        imageopenview.image = nil
        titlelabel.text=nil
    }
}
