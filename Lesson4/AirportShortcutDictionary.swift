//
//  Created by Rafal Szastok on 17/03/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import Foundation

final class AirportShortcutDictionary {
    // Methods you will have to use in dictionary (alphabetic order):
    // Method helper is only for workshop purposes. It shouldn't exist.
    private func helper() {
        let value = dictionary["Key"]

        let oldValue = dictionary.updateValue("new value", forKey: "Key")

        let isEmpty = dictionary.isEmpty

        dictionary["Key"] = "new value"

        let arrayOfKeys = dictionary.keys
        for airportName in arrayOfKeys {
            // Do something here.
        }

        let airports = ["Toronto Pearson", "London Heathrow"]
        for airport in airports {
            if airport.first == "L" {
                // Do something
            }
        }

        var array = [String]()
        array.append("dddd")

        for (key, value) in dictionary {
            if value == "Katowice" {
                array.append(key)
            }
        }

        let filteredValues = dictionary
            .values
            .filter {
                entry in
                entry == "DDDD"
            }
    }

    private var dictionary = Dictionary<String, String>()

    init() {}

    // If shortcut dictionary is empty, then return true.
    var isDictionaryEmpty: Bool {
        return false
    }

    func add(airportShort _: String, fullName _: String) {}

    // Only adds new airport shortcut if it doesn't exist yet.
    // return FALSE
    func safeAdd(airportShort _: String, fullName _: String) -> Bool {
        return true
    }

    func contains(airportShort _: String) -> Bool {
        return true
    }

    func contains(airportName _: String) -> Bool {
        return true
    }

    func remove(airportShort _: String) -> Bool {
        return true
    }

    func remove(airportName _: String) -> Bool {
        return true
    }

    // Returns all airport shortcuts starts with specific character
    func airportShortcutsWith(firstCharacter _: Character) -> [String] {
        return []
    }

    // Returns all airports names starts with specific character
    func airportNamesWith(firstCharacter _: Character) -> [String] {
        return []
    }
}
