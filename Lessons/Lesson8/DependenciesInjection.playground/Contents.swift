import UIKit

typealias SimpleArray = [Int]
typealias Completion<T> = (Result<T>) -> Void

enum Result<T> {

    case failure(error: Error)
    case success(object: T)
}

enum NetworkError: String, Error {
    
    case noToken
    case geoBlocked
    case serverError
    case unknown
    
    init(code: Int) {
        switch code {
        case 1:
            self = .noToken
        case 2:
            self = .geoBlocked
        case 3:
            self = .serverError
        default:
            self = .unknown
        }
    }
    
    var readableDescription: String {
        return "Network error: \(rawValue)"
    }
}

struct Startup {
    var country: String
    var language: String
}

struct Rail {
    
    typealias Tile = (title: String, desc: String)
    
    var title: String
    var tiles: [Tile]
}

protocol StartupService {
    
    func startup(completion: Completion<Startup>)
}

protocol StartupServiceContainer {
    
    var startupService: StartupService { get }
}

protocol RailsService {
    
    func rails(lang: String) -> Result<[Rail]>
}

protocol RailsServiceContainer {
    
    var railsService: RailsService { get }
}

class MainServicesContainer:
    RailsServiceContainer,
    StartupServiceContainer {
    
    let railsService: RailsService
    let startupService: StartupService
    
    init(railsService: RailsService,
         startupService: StartupService) {
        
        self.railsService = railsService
        self.startupService = startupService
    }
}

enum SampleDataGenerator {
    
    static func rails(lang: String) -> [Rail] {
        
        return SimpleArray(0...5).map { index -> Rail in
            
            let tiles = SimpleArray(0...10).map { tileIndex -> Rail.Tile in
                return ("tile_\(index)_\(tileIndex)", "index is \(tileIndex)")
            }
            
            return Rail.init(title: "title_\(lang)_\(index)", tiles: tiles)
        }
    }
    
    static func startup() -> Startup {
        
        return Startup(country: "de", language: "en")
    }
}

class NetworkService {
    
}

extension NetworkService: RailsService {
    
    func rails(lang: String) -> Result<[Rail]> {
        
        let mrRandomAllowed = Bool.random()
        
        guard mrRandomAllowed else {
            let errorCode = Int.random(in: 0...4)
            return .failure(error: NetworkError.init(code: errorCode))
        }
        
        return .success(object: SampleDataGenerator.rails(lang: lang))
    }
}

extension NetworkService: StartupService {
    
    func startup(completion: Completion<Startup>) {
        
        let mrRandomAllowed = Bool.random()
        
        guard mrRandomAllowed else {
            let errorCode = Int.random(in: 0...4)
            completion(.failure(error: NetworkError.init(code: errorCode)))
            return
        }
        
        completion (.success(object: SampleDataGenerator.startup()))
    }
}

class App {

    typealias DependenciesContainer =
        RailsServiceContainer &
        StartupServiceContainer
    
    let dendencies: DependenciesContainer
    
    init(dendencies: DependenciesContainer) {
        self.dendencies = dendencies
    }
}

let networkService = NetworkService()

let mainContainer = MainServicesContainer(railsService: networkService, startupService: networkService)

let app = App(dendencies: mainContainer)

func fetchRails(with lang: String) {
    let result = app.dendencies.railsService.rails(lang: lang)
    
    switch result {
    case .success(let rails):
        rails.map{$0.title}.forEach { title in
            print(title)
        }
    case .failure(let error):
        print("Error occured: \(error.localizedDescription)")
    }
}

app.dendencies.startupService.startup { result in
    switch result {
    case .success(let response):
        fetchRails(with: response.language)
    case .failure(let error):
        print(((error as? NetworkError)?.readableDescription ?? ""))
    }
}



