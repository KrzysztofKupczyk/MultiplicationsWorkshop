
import AppKit
import PlaygroundSupport


let isPrimeClosure: TransformPrime = { text in
    return true
}

let inputString = "12, a, 241, 39, 2d1, 100500100800, a 2, 0, -213, 4023, 39, 1, 3, 12345678990, 1004003, 9'000, 1300, 30k, 24k, 10M, 342384592M, predator Ooze, trollAscetic, Deadbridge Goliath, championOfLambholt"

let outputPositiveIntegers = inputString
    .split(separator: ",")
    .map { (substring) -> Int? in
        return Int(substring.trimmingCharacters(in: .whitespacesAndNewlines))
    }
    .filter { (optionalInteger) -> Bool in
        return optionalInteger != nil
    }
    .map { (optionalInteger) -> Int in
        return optionalInteger!
    }
    .filter { (integer) -> Bool in
        return integer > 0
    }

typealias GreenCreature = MagicTheGatheringData.Monogreen.Creature

let outputCreatures = inputString
    .split(separator: ",")
    .map { (substring) -> GreenCreature? in
        let trimmedCharacters = substring.trimmingCharacters(in: .whitespacesAndNewlines)
        return GreenCreature(rawValue: trimmedCharacters)
    }
    .filter { (optionalCreature) -> Bool in
        return optionalCreature != nil
    }
    .map { (optionalCreature) -> GreenCreature in
        return optionalCreature!
    }
    .map { (greenCreature) -> String in
        return greenCreature.rawValue
    }

let outputPrimes = outputPositiveIntegers
    .filter { (integer) -> Bool in
        return integer > 0 && integer <= 100
    }
    .map { (integer) -> Int in
        return NextPrime().nextPrime(for: integer)
    }
    .sorted()

print("----- InputString -----")
print(inputString)
print("----- InputString END -----\n")

print("----- outputPositiveIntegers -----")
print(outputPositiveIntegers)
print("----- outputPositiveIntegers END -----\n")


print("----- outputCreatures -----")
print(outputCreatures)
print("----- outputCreatures END -----\n")

print("----- outputPrimes -----")
print(Set(outputPrimes))
print("----- outputPrimes END -----")

//.flatMap
    //.compactMap
    //.filter
    //.reduce
    //.map

/* Zadania:
 # Zamienić deklaraję istniejących closure przy pomocy typealias OK
 # Przenieść cały kod do klasy w Sources OK
 # Zrobić prosty enum w danej klasie do weryfikacji, czy to string, czy int
 # Zrobić typealias na danej klasie
 # Podzielić string na kolejne elementy
 # Przefiltrować wyniki inputString żeby wyświetlać jedynie Int
 # Sprawdzać, czy Int jest Prime
 # Wyświetlać "Number X is/isNot prime"
 # Przemapować string na  gathering green creature
 # Dodać case dla red creature
 # Przerobić sturktury na bardziej skalowalne:
    - wszystkie stwory w jednym miejscu
    - podgrupa stworów dla danego decka

 * Póżniej:
 # Powiedzieć kilka zdań o silnej i słabej referencji.
 */

