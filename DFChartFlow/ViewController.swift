//
//  ViewController.swift
//  DFChartFlow
//
//  Created by Diego Caridei on 19/03/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var collection: DFChartCollection?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collection = DFChartCollection(frame: self.view.frame, collectionViewLayout: layout)
        collection?.backgroundColor = .white
        self.view.addSubview(collection!)
        
        collection?.register(DFChartCell.self, forCellWithReuseIdentifier: "cell")
        
        collection?.random()
        collection?.reloadData()
    }

   

}




