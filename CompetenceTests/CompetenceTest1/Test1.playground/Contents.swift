/*:
 ## Test nr 1
 Pytania proszę podawać pod pytaniem. Na koniec testu należy przesłać go do mnie.

 Poniżej enumy i strukturę, których będziecie używać w następnych zadaniach.
 */

import Foundation

public struct Tile: Equatable {
    public var assetId: String = ""
    public var endDate: Date?
    public var eventId: String = ""
}

public enum Region: String {

    case austria
    case brazil
    case canada
    case germany
    case italy
    case japan
    case spain
    case switzerland
    case unitedStates

    func printRegion() {
        print(self.rawValue)
    }
}

public enum Language {
    public typealias AllCases = [Language]

    case english
    case french
    case german
    case italian
    case japanese
    case portuguese
    case spanish
    case custom(languageString: String)

    func printLanguageHello() {
        print("HELLO")
    }
}

enum SignupResult {
    case signedUp
    case failed
    case noInternetConnection
}

/*:
 Podaj swoje imię i nazwisko.
 */
//<Twoje imię i nazwisko. Nie usuwaj '//'>
/*:
 # Część pierwsza - pary (touples)
 1.1. Opisz własnymi słowami czym jest podane wyrażenie
 */
typealias CenterPoints = (start: CGPoint, end: CGPoint)
// <Miejsce na Twój opis. Nie usuwaj '//'>
/*:
 1.2. Opisz własnymi słowami czym jest podane wyrażenie
 */
public typealias CompletionInput = (Date?, Bool, Error?)
// <Miejsce na Twój opis. Nie usuwaj '//'>
/*:
 1.3. Zadeklaruj touple gdzie pierwszy argument to Tile a drugi opcjonalny string. Pierwszy argument ma nazywać się tile, drugi railId
 */
// <Miejsce na Twój kod. Usuń '//'>

/*:
 # Część druga - closures
 ## A: Pytania otwarte
 2.1 Opisz własnymi słowami czym jest podane wyrażenie
 */
typealias ShowLoginAction = ((Int) -> Void)
// <Miejsce na Twój opis. Nie usuwaj '//'>

/*:
 2.2 Opisz własnymi słowami czym jest podane wyrażenie
 */
typealias SignOutAction = (() -> Void)
// <Miejsce na Twój opis. Nie usuwaj '//'>

/*:
 2.3 Opisz własnymi słowami poniższe wyrażenie (CompletionInput był opisany w zadaniu 1.2).
 */
typealias CompletionHandler = (CompletionInput) -> Void
// <Miejsce na Twój opis. Nie usuwaj '//'>

/*:
 2.4 Opisz własnymi słowami czym jest podane wyrażenie
 */
typealias ErrorAction = (error: Error, retryAction: (() -> Void)?)
// <Miejsce na Twój opis, nie ze slajdu 🤨. Nie usuwaj '//'>

/*:
 2.5 Opisz własnymi słowami czym jest podane wyrażenie
 */
public typealias MockedRailAmout = [(region: Region, railAmount: Int)]
// <Miejsce na Twój opis. Nie usuwaj '//'>

/*:
 ## B: Część zadaniowa.
 2.6 Zadeklaruj closure z argumentami:
 - firstName typu String
 - lastName typu String, opcjonalny

 Oraz zwracanej wartości:
 - SignupResult (bez nazwy)
 */
// <Miejsce na Twój kod. Usuń '//'>

/*:
 2.7 Zadeklaruj typ (tzw. ClosureType) tak, żeby kod kompilował się.
 */

// Odkomentuj i popraw poniższy kod.
//let closureName: (ClosureType -> Void) = { (region, country) in
//
//    region.printRegion()
//    country.printLanguageHello()
//}

