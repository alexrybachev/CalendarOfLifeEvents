//
//  Model.swift
//  –°alendarOfLifeEvents
//
//  Created by Pavel Metelin on 3/29/22.
//

import Foundation

struct Event {
    let title: String
    let cost: Int
    let isDelete: Int
    let countFact: Int
    let lastDate: Date
    let amount: Int
    
    static func getEvent() -> [Event] {
        let dm = DataManager.shared
        var newEvents: [Event] = []
        
        for index in 0..<dm.events.count {
            let event = Event(title: dm.events[index].title,
                              cost: dm.events[index].cost,
                              isDelete: dm.events[index].isDelete,
                              countFact: dm.events[index].countFact,
                              lastDate: dm.events[index].lastDate,
                              amount: dm.events[index].amount)
            newEvents.append(event)
        }
        return newEvents
    }
    
    static func getLongTime(_ index: Int) -> Int {
        let dm = DataManager.shared
    
        let lhs = dm.events[index].lastDate
        let rhs = Date.now
        let diffComponents = Calendar.current.dateComponents([.day],
                                                             from: lhs,
                                                             to: rhs)
        let day = diffComponents.day
        return day ?? 0
    }
    
    static func addNewEvent(from addTitle: String, addCost: Int) {
        DataManager.shared.events.append((title: addTitle,
                                          cost: addCost,
                                          isDelete: 0,
                                          countFact: 1,
                                          lastDate: Date.now,
                                          amount: addCost))
    }
    
    static func deleteEvent(for index: Int) {
        let dm = DataManager.shared
        
        dm.events[index].isDelete = 1
    }
    
    static func repeatEvent(for index: Int) {
        let dm = DataManager.shared
        
        dm.events[index].countFact += 1
        dm.events[index].lastDate = Date.now
        dm.events[index].amount += dm.events[index].cost
    }
    
    static func updateCost(for index: Int, cost: Int) {
        let dm = DataManager.shared
        
        dm.events[index].cost = cost
    }
}

enum ImageText: String {
    case text1 = "–Ě–Ķ –∑–Ĺ–į–Ķ—ą—Ć –ļ—É–ī–į —É—Ö–ĺ–ī—Ź—ā –ī–Ķ–Ĺ—Ć–≥–ł –ł–Ľ–ł —Ā–ļ–ĺ–Ľ—Ć–ļ–ĺ —ā—č —ā—Ä–į—ā–ł—ą—Ć –Ĺ–į —Ā–ł–≥–į—Ä–Ķ—ā—č –ł –ī—Ä—É–≥–ł–Ķ –≤—Ä–Ķ–ī–Ĺ—č–Ķ –Ņ—Ä–ł–≤—č—á–ļ–ł?"
    case text2 = "–ü—Ä–ĺ—Ā—ā–ĺ –∑–į–≤–Ķ–ī–ł –Ľ—é–Ī–ĺ–Ķ —Ā–ĺ–Ī—č—ā–ł–Ķ –ł–∑ —Ā–≤–ĺ–Ķ–Ļ –∂–ł–∑–Ĺ–ł –ł–Ľ–ł —Ā—ā–į—ā—Ć—é —Ä–į—Ā—Ö–ĺ–ī–ĺ–≤, –ł –ĺ—ā–ľ–Ķ—á–į–Ļ –Ķ–≥–ĺ, –ļ–ĺ–≥–ī–į –ĺ–Ĺ–ĺ –Ņ–ĺ–≤—ā–ĺ—Ä—Ź–Ķ—ā—Ā—Ź."
    case text3 = "–Ě–į–Ī–Ľ—é–ī–į–Ļ –∑–į —Ā–≤–ĺ–ł–ľ–ł –Ņ—Ä–ł–≤—č—á–ļ–į–ľ–ł –ł –∑–į —ā–Ķ–ľ, —Ā–ļ–ĺ–Ľ—Ć–ļ–ĺ –Ĺ–į —ć—ā–ĺ —É—Ö–ĺ–ī–ł—ā –ī–Ķ–Ĺ–Ķ–≥. –ź –ľ–ĺ–∂–Ķ—ā —ā—č –Ņ—Ä–ĺ—Ā—ā–ĺ –∑–į–Ī—č–Ľ –Ĺ–į–≤–Ķ—Ā—ā–ł—ā—Ć –ľ–į–ľ—É?)"
}

struct About {
    let image: String
    let name: String
    let description: String
    
    static func getAbout() -> [About] {
        [
        About(image: "Pavel", name: "–ü–į–≤–Ķ–Ľ –ú–Ķ—ā–Ķ–Ľ–ł–Ĺ", description: "–ü–į—ą–į —Ā–į–ľ—č–Ļ –ĺ–Ņ—č—ā–Ĺ—č–Ļ —á–Ľ–Ķ–Ĺ –ļ–ĺ–ľ–į–Ĺ–ī—č –≤ –Ņ–Ľ–į–Ĺ–Ķ –Ņ—Ä–ĺ–≥—Ä–į–ľ–ľ–ł—Ä–ĺ–≤–į–Ĺ–ł—Ź. –ó–į –Ņ–Ľ–Ķ—á–į–ľ–ł —Ö—Ä–į–Ĺ–ł—ā –≤ —Ā–Ķ–Ī–Ķ –≥–ĺ–ī–į–ľ–ł –Ĺ–į–ļ–ĺ–Ņ–Ľ–Ķ–Ĺ–Ĺ—č–Ļ –ĺ–Ņ—č—ā, –ļ–ĺ—ā–ĺ—Ä—č–Ļ –Ņ–ĺ–ľ–ĺ–≥–į–Ķ—ā –Ķ–ľ—É —Ä–Ķ–į–Ľ–ł–∑–ĺ–≤—č–≤–į—ā—Ć –ł–ī–Ķ–ł –ī–Ľ—Ź –ľ–ĺ–Ī–ł–Ľ—Ć–Ĺ–ĺ–Ļ —Ä–į–∑—Ä–į–Ī–ĺ—ā–ļ–ł. –í –ļ–į—á–Ķ—Ā—ā–≤–Ķ —Ö–ĺ–Ī–ł –≤—č–Ī—Ä–į–Ľ –ī–Ľ—Ź —Ā–Ķ–Ī—Ź –ľ–ĺ—ā–ĺ—Ü–ł–ļ–Ľ."),
        About(image: "AlexKret", name: "–ź–Ľ–Ķ–ļ—Ā–į–Ĺ–ī—Ä –ö—Ä–Ķ—ā–ĺ–≤", description: "–°–į–Ĺ—Ź –Ī—Ä—É—ā–į–Ľ—Ć–Ĺ—č–Ļ –Ņ–į—Ä–Ķ–Ĺ—Ć —Ā –Ī–ĺ—Ä–ĺ–ī–ĺ–Ļ –ł–∑ —Ā—É—Ä–ĺ–≤–ĺ–≥–ĺ –≥–ĺ—Ä–ĺ–ī–į –ß–Ķ–Ľ—Ź–Ī–ł–Ĺ—Ā–ļ–į, –ī–ĺ–Ī—Ä–į—Ź –ī—É—ą–į –ļ–ĺ–ľ–Ņ–į–Ĺ–ł–ł, –≤—Ā–Ķ–≥–ī–į –≤—č—Ä—É—á–ł—ā –≤ —ā—Ä—É–ī–Ĺ–ĺ–Ļ —Ā–ł—ā—É–į—Ü–ł–ł. –•–ĺ–Ľ–ĺ–ī–Ĺ—č–ľ–ł –∑–ł–ľ–Ĺ–ł–ľ–ł –≤–Ķ—á–Ķ—Ä–į–ľ–ł –Ľ—é–Ī–ł—ā –ł–≥—Ä–į—ā—Ć –Ĺ–į –≥–ł—ā–į—Ä–Ķ, –į —ā–Ķ–Ņ–Ľ—č–ľ –Ľ–Ķ—ā–ĺ–ľ —É–≤–Ľ–Ķ–ļ–į–Ķ—ā—Ā—Ź —Ä—č–Ī–į–Ľ–ļ–ĺ–Ļ."),
        About(image: "AlexRyb", name: "–ź–Ľ–Ķ–ļ—Ā–į–Ĺ–ī—Ä –†—č–Ī–į—á–Ķ–≤", description: "–°–į—ą–į —Ź—Ä–ļ–ł–Ļ, –Ņ–ĺ–∑–ł—ā–ł–≤–Ĺ—č–Ļ –ľ–ĺ–Ľ–ĺ–ī–ĺ–Ļ –ľ—É–∂—á–ł–Ĺ–į. –ö–į–ļ–ĺ–Ķ-—ā–ĺ –≤—Ä–Ķ–ľ—Ź –Ĺ–į–∑–į–ī —Ä–Ķ—ą–ł–Ľ —Ā–ľ–Ķ–Ĺ–ł—ā—Ć —Ā—Ą–Ķ—Ä—É –ī–Ķ—Ź—ā–Ķ–Ľ—Ć–Ĺ–ĺ—Ā—ā–ł –ł –Ĺ–į—á–į–Ľ –ł—Ā–ļ–į—ā—Ć —Ā–Ķ–Ī–Ķ —Ā—Ą–Ķ—Ä—É –Ņ–ĺ –ī—É—ą–Ķ, —Ā–Ĺ–į—á–į–Ľ–į —Ā–ľ–ĺ—ā—Ä–Ķ–Ľ –≤ —Ā—ā–ĺ—Ä–ĺ–Ĺ—É –≤–Ķ–Ī-–ī–ł–∑–į–Ļ–Ĺ–į, –Ĺ–ĺ –≤—č–Ī–ĺ—Ä –≤—Ā–Ķ –∂–Ķ –Ņ–į–Ľ –Ĺ–į –ľ–ĺ–Ī–ł–Ľ—Ć–Ĺ–ĺ–≥–ĺ —Ä–į–∑—Ä–į–Ī–ĺ—ā—á–ł–ļ–į. –õ—é–Ī–ł—ā –ļ–į—ā–į—ā—Ć—Ā—Ź –Ĺ–į –Ľ—č–∂–į—Ö –≤ —Ā–Ĺ–Ķ–∂–Ĺ—É—é –∑–ł–ľ—É."),
        About(image: "Musyan", name: "–ē–≤–≥–Ķ–Ĺ–ł—Ź –®–Ķ–≤—Ü–ĺ–≤–į", description: "–Ė–Ķ–Ĺ—Ź –Ķ–ī–ł–Ĺ—Ā—ā–≤–Ķ–Ĺ–Ĺ—č–Ļ —á–Ľ–Ķ–Ĺ –ļ–ĺ–ľ–į–Ĺ–ī—č –∂–Ķ–Ĺ—Ā–ļ–ĺ–≥–ĺ –Ņ–ĺ–Ľ–į. –ü–ĺ–∑–ł—ā–ł–≤–Ĺ–į—Ź, —É–Ľ—č–Ī—á–ł–≤–į—Ź –ł –Ņ—Ä–ĺ—Ā—ā–ĺ –≥–Ķ–Ĺ–Ķ—Ä–į—ā–ĺ—Ä —ą—É—ā–ĺ–ļ –≤ –Ĺ–į–Ņ—Ä—Ź–∂–Ķ–Ĺ–Ĺ—č–Ķ –ľ–ĺ–ľ–Ķ–Ĺ—ā—č. –Ē–≤–ł–∂–Ķ–Ĺ–ł–Ķ - –∂–ł–∑–Ĺ—Ć, –Ķ–Ķ –Ľ–ĺ–∑—É–Ĺ–≥. –õ—é–Ī–ł—ā —Ä–ĺ–Ľ–ł–ļ–ł, –≤–Ķ–Ľ–ł–ļ, –Ľ—č–∂–ł, –Ī–į–Ļ–ī–į—Ä–ļ—É, –Ņ–ĺ—Ö–ĺ–ī—č...–≤—Ā–Ķ–≥–ĺ –Ĺ–Ķ –Ņ–Ķ—Ä–Ķ—á–Ķ—Ā—ā—Ć.")
        ]
    }
}