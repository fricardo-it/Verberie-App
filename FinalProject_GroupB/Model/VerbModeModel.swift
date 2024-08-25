import Foundation

class VerbMode{
    
    public var verbMode : String
    
    public var verbTense : [VerbTense]
    
    init(verbMode: String, verbTense: [VerbTense]) {
        self.verbMode = verbMode
        self.verbTense = verbTense
    }
    
}
