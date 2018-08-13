//
//  AppApearance.swift
//  HeadyMoviewBrowser
//
//  Created by Chhaya Tiwari on 8/13/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import Foundation
import UIKit

struct AppAppearance {
    
    static func navigationBar() {
        let navigationAppearance = UINavigationBar.appearance()
        navigationAppearance.barTintColor = UIColor.black
        navigationAppearance.tintColor = UIColor.white
        navigationAppearance.isTranslucent = false
       /* navigationAppearance.titleTextAttributes = [
            NSForegroundColorAttributeName: UIColor.white,
            NSFontAttributeName: UIFont(name: "Helvetica-Light", size: 20.0)!
        ] */
        UIApplication.shared.statusBarStyle = .lightContent
    }
}
