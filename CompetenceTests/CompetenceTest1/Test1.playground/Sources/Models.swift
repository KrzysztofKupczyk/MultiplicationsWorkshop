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

public enum SignupResult {
    case signedUp
    case failed
    case noInternetConnection
}
