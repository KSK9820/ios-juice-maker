//
//  ErrorPrinter.swift
//  JuiceMaker
//
//  Created by 전성수 on 2023/09/13.
//

import Foundation

enum ErrorPrinter: Error, CustomDebugStringConvertible {
    case stockInsufficient
    case invalidInput
    
    var debugDescription: String {
        switch self {
        case .stockInsufficient:
            return "주문실패😭 재고가 부족합니다."
        case .invalidInput:
            return "잘못된 입력입니다."
        }
    }
}



