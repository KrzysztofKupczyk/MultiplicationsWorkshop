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

        let arrayOfValues = dictionary.keys
        for airportName in arrayOfValues {
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
                return entry == "DDDD"
        }
    }

    private var dictionary = Dictionary<String, String>()

    init() {

    }

    // If shortcut dictionary is empty, then return true.
    var isDictionaryEmpty: Bool {
        return false
    }

    func add(aiportShort: String, fullName: String) {

    }

    // Only adds new airport shortcut if it doesn't exist yet.
    // return FALSE
    func safeAdd(aiportShort: String, fullName: String) -> Bool {
        return true
    }

    func contains(airportShort: String) -> Bool {
        return true
    }

    func contains(airportName: String) -> Bool {
        return true
    }

    func remove(aiportShort: String) -> Bool {
        return true
    }

    func remove(airportName: String) -> Bool {
        return true
    }

    // Returns all airport shortcuts starts with specific character
    func airportShortcutsWith(firstCharacter character: Character) -> [String] {
        return []
    }

    // Returns all airports names starts with specific character
    func airportNamesWith(firstCharacter character: Character) -> [String] {
        return []
    }

}
