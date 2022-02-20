//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Caio Teodoro on 09/08/20.
//  Copyright © 2020 Teodoro Corp. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super .awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
        self.setTitleColor(UIColor.gray, for: .disabled)
    }
}
