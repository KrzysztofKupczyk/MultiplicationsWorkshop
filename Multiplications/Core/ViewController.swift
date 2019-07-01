//
//  ViewController.swift
//  Multiplications
//
//  Created by Krzysztof on 12/10/2018.
//  Copyright © 2018 Krzysztof. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    enum AccessibilityID: Identifiable {
        case favouriteCell(String)
        case favouriteReminderButton(String)
    }
}

public protocol Identifiable {
    var identifier: String { get }

    static var selectedValue: String { get }
}

extension Identifiable {
    public var identifier: String {
        return String(describing: self)
    }

    public static var selectedValue: String {
        return "selected"
    }
}
