//
//  ResizeLabel.swift
//  app-swoosh
//
//  Created by Caio Teodoro on 09/08/20.
//  Copyright © 2020 Teodoro Corp. All rights reserved.
//

import UIKit

class ResizeLabel: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        adjustsFontSizeToFitWidth = true
    }

}
