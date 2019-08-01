
import AppKit
import PlaygroundSupport

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

print("----- InputString -----")
print(inputString)
print("----- InputString END -----\n")

print("----- outputPositiveIntegers -----")
print(outputPositiveIntegers)
print("----- outputPositiveIntegers END -----\n")

/***** Zadania do wykonania *****

 # Wyświetlać "Number X is/isNot prime" (lvl:1/5)

 # Przemapować elementy na InputElement (lvl:3/5)
 Podpowiedź:
 Najpierw mapujemy na int, potem na double, potem na green creatue
 dopiero w przypadku, gdy mapowanie nie uda się na żadne powyżej, należy skorzystać z custom(value:)

 # Wypisać jeden z komunikatów (X to wynik): IntegerVal: X, DoubleVal: X, CreatureGreen: X, Custom: X (lvl 2/5)

 # Korzystając z tablicy (4/5)
 let digitsAsStringArray = ["zero", "jeden", "dwa", "trzy", "cztery", "pięć", "sześć", "siedem", "osiem", "dziewięć"]
 Wypisać na ekranie liczby "per cyfra". Przykład: 17 -> "jeden siedem"

 Pomysły na kolejne workshopy:
 - Przedstawić czym jest silna i słaba referencja
 ***** End zadania do wykonania *****/

