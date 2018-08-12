//
//  MoviewPosterCollectionViewCell.swift
//  HeadyMoviewBrowser
//
//  Created by Chhaya Tiwari on 8/11/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import UIKit

class MoviewPosterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoName: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func updateConstraints() {
        super.updateConstraints()
        
        photoImageView.snp.makeConstraints {
            $0.centerX.equalTo(contentView.snp.centerX)
            $0.width.equalTo(contentView.snp.width)
            $0.height.equalTo(contentView.snp.height)
        }
    }
    
}
