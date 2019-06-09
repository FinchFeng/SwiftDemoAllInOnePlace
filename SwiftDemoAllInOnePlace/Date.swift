//
//  Foundation.swift
//  SwiftDemoAllInOnePlace
//
//  Created by 冯奕琦 on 2019/6/6.
//  Copyright © 2019 冯奕琦. All rights reserved.
//

import Foundation

//获取实时时间 格林威治时间

let date = Date()

//获取日期之间的秒数间隔

let date1 = Date()+3000
let date2 = Date()

let gapSecond = date1.timeIntervalSince1970 - date2.timeIntervalSince1970




//获取下一个指定日期

let nextMonday = Calendar.current.nextDate(after: Date(), matching: DateComponents(weekday:2), matchingPolicy: .nextTime)


extension Date {
    var yesterday: Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: noon)!
    }
    var tomorrow: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: noon)!
    }
    var noon: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)!
    }
    var month: Int {
        return Calendar.current.component(.month,  from: self)
    }
    var isLastDayOfMonth: Bool {
        return tomorrow.month != month
    }
}

