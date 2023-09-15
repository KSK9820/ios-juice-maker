//
//  JuiceMaker - FruitStore.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class FruitStore {
    private var fruitBox: [Fruits:Int] = [.strawberry : 10, .banana : 10, .pineapple : 10, .kiwi : 10 , .mango : 10]
    
    //현재 재고량 보내줌
    func giveFruitQuantity(_ fruitNames: Fruits) throws -> Int {
        guard let quantity = fruitBox[fruitNames] else {
            throw ErrorPrinter.invalidInput
        }
        
        return quantity
    }
    
    //3. 재고량이 존재하면 필요한 개수만큼 뺀다.
    func stockCalculator(_ consumeQuantity: [Fruits:Int]) {
        for (fruit, needs) in consumeQuantity {
            guard let current = fruitBox[fruit] else {
                return
            }
            fruitBox[fruit] = current - needs
        }
        
        print("주문하신 음료가 제작되었습니다.")
    }
    
    //재고량 관리
    func stockManager(_ fruitName: Fruits, _ isPlus: Bool) {
        guard let current = fruitBox[fruitName] else { return }
        
        if isPlus {
            fruitBox[fruitName] = current + 1
            print("과일: \(fruitName), 수량: \(fruitBox[fruitName])")
        } else if current > 0 {
            fruitBox[fruitName] = current - 1
            print("과일: \(fruitName), 수량: \(fruitBox[fruitName])")
        }
    }
}


