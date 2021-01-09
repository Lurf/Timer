//
//  UIView+findSubview.swift
//  Timer
//
//  Created by Lurf on 2021/01/09.
//

import UIKit

public extension UIView {
    func findSubview<T: UIView>(ofType subviewType: T.Type) -> T? {
        return subviews.compactMap {
            $0 as? T ?? $0.findSubview(ofType: subviewType.self)
        }.first
    }
}
