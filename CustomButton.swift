//
//  CustomButton.swift
//  UICustom
//
//  Created by ac1ra on 20.07.2020.
//  Copyright © 2020 ac1ra. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0.0{
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor = .black{
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable var titleLeftPadding: CGFloat = 0.0{
        didSet{
            titleEdgeInsets.left = titleLeftPadding
        }
    }
    @IBInspectable var titleRightPadding: CGFloat = 0.0{
        didSet{
            titleEdgeInsets.right = titleRightPadding
        }
    }
    @IBInspectable var titleTopPadding: CGFloat = 0.0{
        didSet{
            titleEdgeInsets.top = titleTopPadding
        }
    }
    @IBInspectable var titleBottomPadding: CGFloat = 0.0{
        didSet{
            titleEdgeInsets.bottom = titleBottomPadding
        }
    }
    @IBInspectable var imageLeftPadding: CGFloat = 0.0{
        didSet{
            imageEdgeInsets.left = imageLeftPadding
        }
    }
    @IBInspectable var imageRightPadding: CGFloat = 0.0{
        didSet{
            imageEdgeInsets.right = imageRightPadding
        }
    }
    @IBInspectable var imageTopPadding: CGFloat = 0.0{
        didSet{
            imageEdgeInsets.top = imageTopPadding
        }
    }
    @IBInspectable var imageBottomPadding: CGFloat = 0.0{
        didSet{
            imageEdgeInsets.bottom = imageBottomPadding
        }
    }
    @IBInspectable var enableImageRightAligned: Bool = false
    override func layoutSubviews() {
        super.layoutSubviews()
        if enableImageRightAligned, let imageView = imageView {
            imageEdgeInsets.left = self.bounds.width - imageView.bounds.width - imageRightPadding
        }
        
        if enableGradientBackground {
            let gradientLayer = CAGradientLayer()
            
            gradientLayer.frame = self.bounds
            gradientLayer.colors = [gradientColor_1.cgColor, gradientColor_2.cgColor, gradientColor_3.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
            
            self.layer.insertSublayer(gradientLayer, at: 0)
        }
    }
    @IBInspectable var enableGradientBackground: Bool = false
    
    @IBInspectable var gradientColor_1: UIColor = UIColor.black
    @IBInspectable var gradientColor_2: UIColor = UIColor.white
    @IBInspectable var gradientColor_3: UIColor = UIColor.black

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
