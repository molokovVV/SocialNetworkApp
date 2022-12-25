//
//  Button + Ext.swift
//  SocialNetworkApp
//
//  Created by Виталик Молоков on 25.12.2022.
//

import UIKit

extension UIButton {
    func setShadow(_ button: UIButton) {
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.4
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
    }
}
