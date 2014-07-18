// Experiment in the Swift Programming Language
//
// Generics
//

func repeat<ItemType>(item: ItemType, times: Int) -> ItemType[] {
    var result = ItemType[]()
    for i in 0..times {
        result += item
    }
    
    return result
}

repeat("knock", 4)
repeat(3, 4)

enum OptionValue<T> {
    case None
    case Some(T)
}

var possibleInteger: OptionValue<Int> = .None
possibleInteger = .Some(100)

// Modify the anyCommonElements function to make a function that returns an array of the elements that any two sequences have in common.
func anyCommonElements <T, U where T: Sequence, U: Sequence,
    T.GeneratorType.Element: Equatable,
    T.GeneratorType.Element == U.GeneratorType.Element>
    (lhs: T, rhs: U) -> Bool {
    var count = 0
    for lhsItem in lhs {
        for rhsItem in rhs {
            if count < 2 && lhsItem == rhsItem {
                if ++count == 2 {
                    return true
                }
            }
        }
    }
    return false
}

anyCommonElements([1, 2, 3], [3])
anyCommonElements([1, 2, 2], [2])