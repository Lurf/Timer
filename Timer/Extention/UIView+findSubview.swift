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
    
    func findSubviews<T: UIView>(withCondition condition: (T) -> Bool) -> [T] {
        return subviews.flatMap{ subView -> [T] in
            var result: [T] = subView.findSubviews(withCondition: condition)
            if let view = subView as? T {
                result.append(view)
            }
            return result
        }.filter(condition)
    }
    
    func findButton(withAccessibilityId identifier: String) -> UIButton? {
        return findSubviews { (subview: UIButton) -> Bool in
            subview.accessibilityIdentifier == identifier
        }.first
    }
}
