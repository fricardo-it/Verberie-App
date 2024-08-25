import Foundation

class Verb{
    
    public var verb : String
    
    public var verbMode: [VerbMode]
    
    init(verb: String, verbMode: [VerbMode]) {
        self.verb = verb
        self.verbMode = verbMode
    }
    
}
