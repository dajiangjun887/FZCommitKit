//
//  Int+Extension.swift
//  FZCommitKit
//
//  Created by Jack on 2022/1/20.
//

import Foundation

public extension Int {
    
    /// 转换成价格
    var priceStr: String {
        // 小于0的情况下返回0展示
        guard self >= 0 else { return "0" }
        
        if self % 10 > 0 {
            //结果需要保留2位小数
            let str = String(format: "%.2f", CGFloat(self) / 100.0)
            return str
        }
        
        if self % 100 > 0 {
            //结果保留一位小数
            let str = String(format: "%.1f", CGFloat(self) / 100.0)
            return str
        }

        return String(format: "%.f", CGFloat(self) / 100.0)
    }
    
    var price: CGFloat {
        return self.priceStr.cgFloat() ?? 0
    }
}
