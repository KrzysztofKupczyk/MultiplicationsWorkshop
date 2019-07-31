
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


/*
 Cel workshopu:
 - Praktyczne zastosowanie closurów
 - Poznanie najpotrzebniejszych funkcji wysokiego rzędu: .flatMap, .compactMap, .filter, .reduce, .map
 - Umiejętność manipulowania złożonymi strukturami oraz enumami
 - Korzystanie z typealiasów
 - Powtórzenie wiedzy nt. tablic, zbiorów, optionali, operacji na boolean
 - Zaznajomienie się z playgroundami
 - Dostępność obiektów (private, public etc.)

 Zadania wykonane powyżej:
 # Zamienić deklaraję istniejących closure przy pomocy typealias
 # Kod klas, struktur i enumów powinien znaleźć się w adekwatnym z pliku Data lub Primes
 # Zrobić prosty enum w danej klasie do weryfikacji, czy to string, czy int
 # Zrobić typealias na danej klasie
 # Podzielić string na kolejne elementy
 # Przefiltrować wyniki inputString żeby wyświetlać jedynie Int
 # Uzyskać next prime dla wybranej liczby
 # Przemapować string na gathering green creature
 # Uzyskane primes posortować następnie usunąć duplikaty

 Zadania do wykonania
 HINT: najlepiej zróbcie duplikat tego playgound, przenieście do katalogu Lesson7 i usuńcie poprzednie
 # Wyświetlać "Number X is/isNot prime" (lvl:1/5)
 # Przemapować elementy na InputElement (lvl:3/5)
 #### Podpowiedź: Najpierw mapujemy na int, potem na double, potem na green creatue
 #### dopiero w przypadku, gdy mapowanie nie uda się na żadne powyżej, należy skorzystać z custom(value:)
 # Wypisać jeden z komunikatów (X to wynik): IntegerVal: X, DoubleVal: X, CreatureGreen: X, Custom: X (lvl 2/5)

 # Korzystając z tablicy (4/5)
 let digitsAsStringArray = ["zero", "jeden", "dwa", "trzy", "cztery", "pięć", "sześć", "siedem", "osiem", "dziewięć"]
 Wypisać na ekranie liczby "per cyfra". Przykład: 17 -> "jeden siedem"

 # Przerobić sturktury na bardziej skalowalne: (5/5)
    - wszystkie stwory w jednym miejscu
    - podgrupa stworów dla danego decka


 Pomysły na kolejne workshopy:
 - Przedstawić czym jest silna i słaba referencja
 */

