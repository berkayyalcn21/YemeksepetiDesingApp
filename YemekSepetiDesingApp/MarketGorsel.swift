//
//  MarketGorsel.swift
//  YemekSepetiDesingApp
//
//  Created by Berkay on 20.08.2022.
//

import Foundation


class MarketGorsel {
    
    var marketId: Int?
    var marketImageView: String?
    var marketTitle: String?
    var marketPrice: String?
    var marketLimit: String?
    var marketIsFree: String?
    
    init(marketId: Int, marketImageView: String, marketTitle: String, marketPrice: String, marketLimit: String, marketIsFree: String) {
        self.marketId = marketId
        self.marketImageView = marketImageView
        self.marketTitle = marketTitle
        self.marketPrice = marketPrice
        self.marketLimit = marketLimit
        self.marketIsFree = marketIsFree
    }
}
