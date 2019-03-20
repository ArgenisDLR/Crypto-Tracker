//
//  CoinData.swift
//  Crypto Tracker
//
//  Created by argenis delarosa on 3/20/19.
//  Copyright © 2019 argenis delarosa. All rights reserved.
//

import UIKit

class CoinData {
    static let shared = CoinData()
    var coins = [Coin]()
    
    private init() {
        let symbols = ["BTC","ETH","LTC"]
        
        for symbol in symbols {
            let coin = Coin(symbol: symbol)
            coins.append(coin)
        }
    }
}

class Coin {
    var symbol = ""
    var image = UIImage()
    var price = 0.0
    var amount = 0.0
    var historicalData = [Double]()
    
    init(symbol: String) {
        self.symbol = symbol
        if let image = UIImage(named: symbol) {
            self.image = image
        }
    }
}
