//
//  Helper.swift
//  AlarmDillo
//
//  Created by Tricon Infotech on 10/04/18.
//  Copyright © 2018 Tricon Infotech. All rights reserved.
//

import UIKit

struct Helper {
    static func getDocumentsDirectory() -> URL {
        let paths =
            FileManager.default.urls(for: .documentDirectory,
                                     in: .userDomainMask)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
}
