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
                return entry == "DDDD"
        }
    }

    private var dictionary = Dictionary<String, String>()

    init() {

    }

    // If shortcut dictionary is empty, then return true.
    var isDictionaryEmpty: Bool {
        return dictionary.isEmpty
    }

    func add(airportShort: String, fullName: String) {
        dictionary[airportShort] = fullName
    }

    // Only adds new airport shortcut if it doesn't exist yet.
    // return FALSE
    func safeAdd(airportShort: String, fullName: String) -> Bool {
        let tmp = dictionary[airportShort]
        if tmp == nil {
            dictionary[airportShort] = fullName
            return true
        }
        return false

    }

    func contains(airportShort: String) -> Bool {
        let tmp = dictionary[airportShort]
        return tmp != nil

    }

    func contains(airportName: String) -> Bool {
        //        let closure: ((String, String) -> Bool) = { (key: String, value: String) -> Bool in
        //         return value == airportName
        //
        //        }
        //        let tmp = dictionary.contains(where: closure)
        //        return tmp
        for (_, value) in dictionary {
            if value == airportName {
                return true
            }

        }
        return false
    }

    func remove(airportShort: String) -> Bool {
        let tmp = dictionary[airportShort]
        if tmp == nil {
            return false
        }
        dictionary[airportShort] = nil
        return true
    }

    func remove(airportName: String) -> Bool {
        var foundValueInDictionary = false
        for (key, value) in dictionary {
            if value == airportName {
                dictionary[key] = nil
                foundValueInDictionary = true
            }

        }
        return foundValueInDictionary
    }

    // Returns all airport shortcuts starts with specific character
    func airportShortcutsWith(firstCharacter character: Character) -> [String] {
        var shortcuts = [String]()
        for airportPair in dictionary {
            if airportPair.key.first == character {
                shortcuts.append(airportPair.key)

            }

        }
        return shortcuts
    }

    // Returns all airports names starts with specific character
    func airportNamesWith(firstCharacter character: Character) -> [String] {
        var names = [String]()
        for airportPair in dictionary {
            if airportPair.value.first == character {
                names.append(airportPair.value)

            }

        }
        return names
    }
    }


