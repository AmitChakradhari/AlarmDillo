//
//  Group.swift
//  AlarmDillo
//
//  Created by Tricon Infotech on 09/04/18.
//  Copyright © 2018 Tricon Infotech. All rights reserved.
//

import UIKit

class Group: NSObject, NSCoding {
    var id: String
    var name: String
    var playSound: Bool
    var enabled: Bool
    var alarms: [Alarm]
    init(name: String, playSound: Bool, enabled: Bool, alarms: [Alarm]){
        self.id = UUID().uuidString
        self.name = name
        self.playSound = playSound
        self.enabled = enabled
        self.alarms = alarms
    }
    required init?(coder aDecoder: NSCoder) {
        self.id = aDecoder.decodeObject(forKey: "id") as! String
        self.name = aDecoder.decodeObject(forKey: "name") as! String
        self.playSound = aDecoder.decodeBool(forKey: "playSound")
        self.enabled = aDecoder.decodeBool(forKey: "enabled")
        self.alarms = aDecoder.decodeObject(forKey: "alarms") as!
            [Alarm]
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(name, forKey: "name")
        aCoder.encode(playSound, forKey: "playSound")
        aCoder.encode(enabled, forKey: "enabled")
        aCoder.encode(alarms, forKey: "alarms")
    }
}
