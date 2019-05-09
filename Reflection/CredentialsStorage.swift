//
//  CredentialsStorage.swift
//  Reflection
//
//  Created by Artem Lyksa on 5/3/19.
//  Copyright © 2019 lyksa. All rights reserved.
//

import Foundation

protocol Resettable {
    func reset()
}

struct CredentialsStorage: Resettable {
    func reset() {
        
    }
}

struct FavoritesStorage: Resettable {
    func reset() {
        
    }
}

struct SettingsStorage: Resettable {
    func reset() {
        
    }
}
