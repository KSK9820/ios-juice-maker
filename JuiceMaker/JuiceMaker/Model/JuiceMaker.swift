//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 쥬스 메이커 타입
struct JuiceMaker {
    private var fruitStorage = FruitStore()

    //1. 주문을 받는다.
    func makeJuice(_ juice: Juice) throws {
        let recipe = juice.needsFruitForJuice
        let isPossible = try juiceSoldOutChecker(recipe)

        if isPossible == false {
            throw ErrorPrinter.stockInsufficient
        } else {
            fruitStorage.stockCalculator(recipe)
        }
    }
    
    //2. 현재 재고량을 비교한다. 하나라도 부족하면 false로 넘기고 makeJuice에서 재고부족 알림
    private func juiceSoldOutChecker(_ needFruit: [Fruits:Int]) throws -> Bool {
        for (fruit, needs) in needFruit {
            let currentStock = try fruitStorage.giveFruitQuantity(fruit)
            if currentStock < needs {
                return false
            }
        }
        
        return true
    }
    
    //4. 재고 추가 || 삭제
    func amountManage(_ fruitName: Fruits, _ isAdd: Bool) {
        fruitStorage.stockManager(fruitName, isAdd)
    }
}
