import Foundation

public typealias TransformPrime = (Int) -> Bool

public struct MagicTheGatheringData {
    public struct Monogreen {
        public enum Creature: String {
            case arborElf
            case championOfLambholt
            case deadbridgeGoliath
            case deadlyRecluse
            case dungroveElder
            case leafcrownDryad
            case leatherbackBaloth
            case omnathLocusOfMana
            case pelakkaWurm
            case predatorOoze
            case primalcrux
            case scavengingOoze
            case scuteMob
            case thrunTheLastTroll
            case trollAscetic
            case ulvenwaldTracker
            case wolfirSilverheart
            case wurmcoilEngine
        }
        public enum Instant: String {
            case lightningStrike
            case riskFactor
            case shock
        }
    }
    public struct Monored {
        public enum Creature: String {
            case electrostaticField
            case fanaticalFirebrand
            case guttersnipe
            case spearSpewer
            case viashinoPyromancer
        }
    }
}

public enum InputElement {
    case integer(value: Int)
    case double(value: Double)
    case gatheringGreenCreature(
        value: MagicTheGatheringData.Monogreen.Creature)
    case custom(value: String)
}
