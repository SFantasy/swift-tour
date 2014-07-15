// The Swift Programming Languages
//
// Enumerations and Structures

// Write a function that compares two Rank values by comparing their raw values.
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}

func compare(val1: Rank, val2: Rank) -> Bool {
    return val1.toRaw() > val2.toRaw();
}

let ace = Rank.Ace
let aceRawValue = ace.toRaw()
// Try compare
compare(Rank.Ace, Rank.Queen)

// Add a color method to Suit that returns “black” for spades and clubs, and returns “red” for hearts and diamonds.
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .Spades, .Clubs:
            return "black"
        case .Diamonds, .Hearts:
            return "red"
        }
    }
}

let hearts = Suit.Hearts
// Show color
hearts.color()

