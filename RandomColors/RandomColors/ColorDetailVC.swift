//
//  ColorDetailVC.swift
//  RandomColors
//
//  Created by Phuthanet on 3/5/2567 BE.
//

import UIKit

class ColorDetailVC: UIViewController {

    
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
    
    



}
