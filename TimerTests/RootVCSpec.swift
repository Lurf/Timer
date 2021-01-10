//
//  RootVCSpec.swift
//  TimerTests
//
//  Created by Lurf on 2021/01/09.
//

import UIKit
import Quick
import Nimble
@testable import Timer

final class RootVCSpec: QuickSpec {
    override func spec() {
        var subject: RootVC!
        var keyWindow: UIWindow? {
            return UIApplication.shared.connectedScenes
                .filter({$0.activationState == .foregroundActive})
                .map({$0 as? UIWindowScene})
                .compactMap({$0})
                .first?.windows
                .filter({$0.isKeyWindow}).first
        }
        
        describe("表示要素") {
            beforeEach {
                subject = RootVC.viewController()
            }
            context("ロードが完了した場合") {
                beforeEach {
                    keyWindow?.rootViewController = subject
                }
                it("タブバーを表示する") {
                    let tabbar = subject.view.findSubview(ofType: UITabBar.self)
                    expect(tabbar).toNot(beNil())
                }
                it("1分タイマーボタンを表示する") {
                    let button = subject.view.findButton(
                        withAccessibilityId: "oneMinuteButton"
                    )
                    expect(button?.titleLabel?.text).to(equal("1分タイマー"))
                }

            }
        }
    }
}
