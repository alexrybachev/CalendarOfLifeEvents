//
//  Model.swift
//  СalendarOfLifeEvents
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
    case text1 = "Не знаешь куда уходят деньги или сколько ты тратишь на сигареты и другие вредные привычки?"
    case text2 = "Просто заведи любое событие из своей жизни или статью расходов, и отмечай его, когда оно повторяется."
    case text3 = "Наблюдай за своими привычками и за тем, сколько на это уходит денег. А может ты просто забыл навестить маму?)"
}

struct About {
    let image: String
    let name: String
    let description: String
    
    static func getAbout() -> [About] {
        [
        About(image: "Pavel", name: "Павел Метелин", description: "Паша самый опытный член команды в плане программирования. За плечами хранит в себе годами накопленный опыт, который помогает ему реализовывать идеи для мобильной разработки. В качестве хоби выбрал для себя мотоцикл."),
        About(image: "AlexKret", name: "Александр Кретов", description: "Саня брутальный парень с бородой из сурового города Челябинска, добрая душа компании, всегда выручит в трудной ситуации. Холодными зимними вечерами любит играть на гитаре, а теплым летом увлекается рыбалкой."),
        About(image: "AlexRyb", name: "Александр Рыбачев", description: "Саша яркий, позитивный молодой мужчина. Какое-то время назад решил сменить сферу деятельности и начал искать себе сферу по душе, сначала смотрел в сторону веб-дизайна, но выбор все же пал на мобильного разработчика. Любит кататься на лыжах в снежную зиму."),
        About(image: "Musyan", name: "Евгения Шевцова", description: "Женя единственный член команды женского пола. Позитивная, улыбчивая и просто генератор шуток в напряженные моменты. Движение - жизнь, ее лозунг. Любит ролики, велик, лыжи, байдарку, походы...всего не перечесть.")
        ]
    }
}