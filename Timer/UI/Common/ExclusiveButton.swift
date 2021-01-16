//
//  ExclusiveButton.swift
//  Timer
//
//  Created by Lurf on 2021/01/10.
//

import UIKit

final class ExclusiveButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        isExclusiveTouch = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        isExclusiveTouch = true
    }
}
