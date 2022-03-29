//
//  DataManager.swift
//  СalendarOfLifeEvents
//
//  Created by Pavel Metelin on 3/29/22.
//

import Foundation

class DataManager {
    static let shared = DataManager()

    var events = [
                    (
                        title: "Свиданка с Олей",
                        cost: 2500,
                        isDelete: 0,
                        countFact: 15,
                        lastDate: Date.now - 259200,
                        amount: 37500
                    ),
                    (
                        title: "Рыбалка",
                        cost: 5000,
                        isDelete: 0,
                        countFact: 5,
                        lastDate: Date.now - 864000,
                        amount: 25000
                    ),
                    (
                        title: "К маме на блины",
                        cost: 0,
                        isDelete: 0,
                        countFact: 21,
                        lastDate: Date.now - 345600,
                        amount: 0
                    ),
                    (
                        title: "Перекуры",
                        cost: 20,
                        isDelete: 0,
                        countFact: 200,
                        lastDate: Date.now - 518400,
                        amount: 4000
                    ),
                    (
                        title: "Встреча одноклассников",
                        cost: 2500,
                        isDelete: 0,
                        countFact: 2,
                        lastDate: Date.now - 691200,
                        amount: 5000
                    )
                ]
    private init() {}
}
