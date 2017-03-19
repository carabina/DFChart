//
//  DFChartCollection.swift
//  DFChartFlow
//
//  Created by Diego Caridei on 19/03/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import UIKit


class DFChartCollection : UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    var data:[CGFloat] = []
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.delegate = self
        self.dataSource = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func random (){
        data.removeAll()
        for _ in 0...1000{
            let  rand : CGFloat = CGFloat (arc4random() % 30000)
            data.append(rand)
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DFChartCell
        
        if let max = data.max(){
            let value = data[indexPath.item]
            let ratio = value/max
            cell.topConstraint?.constant = collectionView.frame.height * ratio
            UIView.animate(withDuration: 1, animations: {
                cell.layoutIfNeeded()
            })
        }
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: collectionView.frame.height)
    }
}
