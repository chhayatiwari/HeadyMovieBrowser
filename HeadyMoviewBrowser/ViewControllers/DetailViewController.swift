//
//  DetailViewController.swift
//  HeadyMoviewBrowser
//
//  Created by Chhaya Tiwari on 8/13/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import UIKit
import UIKit
import SnapKit
import AlamofireImage

class DetailViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var userRatingLabel: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    
    var photoDetail: Photo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlStr = Constants.imageBaseUrl + photoDetail.imageURL
        let url = URL(string: urlStr)!
        detailImageView.af_setImage(withURL: url)
        
        titleLabel.text = photoDetail.name
        userRatingLabel.text = userRatingLabel.text! + String(photoDetail.userRating)
        releaseDate.text = releaseDate.text! + photoDetail.createdAt
        
        descLabel.text =  photoDetail.description ?? "No Description"
    }

 
}
