//
//  DFChartCell.swift
//  DFChartFlow
//
//  Created by Diego Caridei on 19/03/17.
//  Copyright © 2017 Diego Caridei. All rights reserved.
//

import UIKit

class DFChartCell: UICollectionViewCell {
    var topConstraint: NSLayoutConstraint?
    var chartView:UIView = {
        let vista = UIView(frame: .zero)
        vista.backgroundColor = .orange
        vista.translatesAutoresizingMaskIntoConstraints = false
        return vista
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //self.backgroundColor = .yellow
        
        addSubview(chartView)
        setupView()
    }
    
    func setupView(){
        topConstraint = chartView.heightAnchor.constraint(equalToConstant: 300)
        topConstraint?.isActive = true
        chartView.bottomAnchor.constraint(equalTo:bottomAnchor).isActive = true
        chartView.leftAnchor.constraint(equalTo:leftAnchor).isActive = true
        chartView.rightAnchor.constraint(equalTo:rightAnchor).isActive = true
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
