//
//  DesignableTextField.swift
//  Dawaai
//
//  Created by user1 on 20/12/23.
//
//FOR IMAGES IN ADD PLAN

import UIKit
@IBDesignable
class DesignableTextField: UITextField {
    
    @IBInspectable var leftImage: UIImage?{
        didSet{
            updateView()
        }
    }
    
    func updateView(){
        
        if let image = leftImage {
            leftViewMode = .always
            
            let imageView = UIImageView(frame: CGRect(x: 5, y: 0, width: 30, height: 30))
            imageView.image = image
            
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 30))
            view.addSubview(imageView)
            
            leftView = view
        } else {
//            image is nill
            leftViewMode = .never
        }
    }
}
