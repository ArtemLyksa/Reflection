//
//  UserSession.swift
//  Reflection
//
//  Created by Artem Lyksa on 5/3/19.
//  Copyright © 2019 lyksa. All rights reserved.
//

import Foundation

class UserSession {
    let credentials: Resettable
    let favorites: Resettable
    let settings: Resettable
    
    init(credentials: Resettable, favorites: Resettable, settings: Resettable) {
        self.credentials = credentials
        self.favorites = favorites
        self.settings = settings
    }
}

extension UserSession {
    func logOut() {
        Mirror.reflectProperties(of: self) { (child: Resettable) in
            child.reset()
        }
    }
}

extension Mirror {
    static func reflectProperties<T>(of target: Any,
                                     matchingType type: T.Type = T.self,
                                     using closure: (T) -> Void) {
        let mirror = Mirror(reflecting: target)
        
        for child in mirror.children {
            (child.value as? T).map(closure)
        }
    }
}
