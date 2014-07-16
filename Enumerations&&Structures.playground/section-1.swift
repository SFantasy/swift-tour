// The Swift Programming Languages
//
// Enumerations and Structures

// 1. Write a function that compares two Rank values by comparing their raw values.
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

// 2. Add a color method to Suit that returns “black” for spades and clubs, and returns “red” for hearts and diamonds.
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

// 3. Add a method to Card that creates a full deck of cards, with one card of each combination of rank and suit.
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    func getFullCard() -> Card[] {
        var cards: Card[] = []
        var suits: Suit[] = [.Spades, .Hearts, .Diamonds, .Clubs]
        
        for s in suits {
            for i in 1...13 {
                cards += Card(rank: Rank.fromRaw(i)!, suit: s)
            }
        }
        
        return cards
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
threeOfSpades.simpleDescription()
threeOfSpades.getFullCard()

// 4. Add a third case to the ServerResponse and to the switch
enum ServerResponse {
    case Result(String, String)
    case Error(String)
    case Timeout(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese")
let timeout = ServerResponse.Timeout("Time is out")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failuer.. \(error)"
case let .Timeout(msg):
    let serverResponse = "Server.. \(msg)"
}






