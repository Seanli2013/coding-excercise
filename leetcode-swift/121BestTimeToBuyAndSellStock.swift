//
//  File.swift
//  CodeExcercise
//
//  Created by XiangLI on 4/13/21.
//
//  https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock/
//

import Foundation
class BestTimeToBuyAndSellStockSolution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count <= 1 {
            return 0
        }
        var maxProfit = 0, minPrice = prices[0]
        for i in 1..<prices.count {
            minPrice = min(minPrice, prices[i])
            maxProfit = max(maxProfit, prices[i] - minPrice)
        }

        return maxProfit
    }
}
