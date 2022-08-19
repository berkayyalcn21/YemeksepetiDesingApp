//
//  PopularGorsel.swift
//  YemekSepetiDesingApp
//
//  Created by Berkay on 19.08.2022.
//

import Foundation


class PopularGorsel {
    
    var poplerId: Int?
    var popularImage: String?
    var populerTitle: String?
    var populerPrice: String?
    var populerIsFree: String?
    
    init(poplerId: Int, popularImage: String, populerTitle: String, populerPrice: String, populerIsFree: String) {
        self.poplerId = poplerId
        self.popularImage = popularImage
        self.populerTitle = populerTitle
        self.populerPrice = populerPrice
        self.populerIsFree = populerIsFree
    }
}
