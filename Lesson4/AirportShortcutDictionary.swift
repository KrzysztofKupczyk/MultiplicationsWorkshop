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

    }

    private var dictionary = Dictionary<String, String>()

    init() {

    }

    // If shortcut dictionary is empty, then return true.
    var isDictionaryEmpty: Bool {
        return dictionary.isEmpty
    }

    func add(aiportShort: String, fullName: String) {
        dictionary[aiportShort] = fullName
    }

    // Only adds new airport shortcut if it doesn't exist yet.
    // return FALSE
    func safeAdd(aiportShort: String, fullName: String) -> Bool {
        if dictionary[aiportShort] != nil {
            return false
        }
        dictionary[aiportShort] = fullName
        return true
    }

    func contains(airportShort: String) -> Bool {
        return dictionary.contains(where: { (key, value) -> Bool in
            return airportShort == key
        })
    }

    func contains(airportName: String) -> Bool {
        return dictionary.contains(where: { (key, value) -> Bool in
            return airportName == value
        })
    }

    func remove(aiportShort: String) -> Bool {
        if dictionary[aiportShort] != nil {
            dictionary.removeValue(forKey: aiportShort)
            return true
        }
        return false
    }

    func remove(airportName: String) -> Bool {
        for key in dictionary.keys {
            if dictionary[key] == airportName {
                dictionary.removeValue(forKey: key)
                return true
            }
        }
        return false
    }

    // Returns all airport shortcuts starts with specific character
    func airportShortcutsWith(firstCharacter character: Character) -> [String] {
        return ["RNM"]
    }

    // Returns all airports names starts with specific character
    func airportNamesWith(firstCharacter character: Character) -> [String] {
        return ["Random name"]
    }

}
