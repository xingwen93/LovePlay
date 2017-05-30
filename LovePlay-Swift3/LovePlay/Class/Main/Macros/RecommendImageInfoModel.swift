//
//  RecommendImageInfoModel.swift
//  LovePlay
//
//  Created by Yuns on 2017/5/30.
//  Copyright © 2017年 yuns. All rights reserved.
//

import UIKit
import HandyJSON

class RecommendImageInfoModel: HandyJSON {
    var address : String?
    var docid : String?
    var imgUrl : String?
    var priority : String?
    var title : String?
    
    required init() {
        
    }
}
