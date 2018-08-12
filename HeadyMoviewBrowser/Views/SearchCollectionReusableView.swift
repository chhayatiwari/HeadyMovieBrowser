//
//  SearchCollectionReusableView.swift
//  HeadyMoviewBrowser
//
//  Created by Chhaya Tiwari on 8/11/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import UIKit

class SearchCollectionReusableView: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        frame = layoutAttributes.frame
    }
}
