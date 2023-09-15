//
//  Juice.swift
//  JuiceMaker
//
//  Created by 김수경 on 2023/09/12.
//

import Foundation

enum Juice {
    case strawberryJuice
    case bananaJuice
    case kiwiJuice
    case pineappleJuice
    case mangoJuice
    case strawberryBananaJuice
    case mangoKiwiJuice
    
    var needsFruitForJuice: [Fruits:Int] {
        switch self {
        case .strawberryJuice:
            return [.strawberry:16]
        case .bananaJuice:
            return [.banana:2]
        case .kiwiJuice:
            return [.kiwi:3]
        case .pineappleJuice:
            return [.pineapple:2]
        case .mangoJuice:
            return [.mango:3]
        case .strawberryBananaJuice:
            return [.strawberry:10,.banana:1]
        case .mangoKiwiJuice:
            return [.mango:2,.kiwi:1]
        }
    }
}

