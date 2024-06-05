//
//  CWButton.swift
//  CardWorkOut-Programatic
//
//  Created by Phuthanet on 3/5/2567 BE.
//

import UIKit

class CWButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String,systemImageName:String){
        super.init(frame:.zero)
        
        configuration = .tinted()
        configuration?.baseForegroundColor = backgroundColor
        configuration?.baseBackgroundColor = backgroundColor
        configuration?.cornerStyle = .medium
        configuration?.title = title
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePlacement = .trailing
        //self.backgroundColor = backgroundColor
        //setTitle(title, for: .normal)
        configure()
    }

    func configure(){
        //layer.cornerRadius = 8
        //titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        //setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }

}
