//
//  AnyTransition.swift
//  AnimatingViewsUsingTransition
//
//  Created by Ramill Ibragimov on 31.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

extension AnyTransition {
    static var customTransition: AnyTransition {
        return AnyTransition.asymmetric(
            insertion: AnyTransition.move(edge: .bottom).combined(with: .offset(x: -300)),
            removal: .move(edge: .trailing))
    }
}
