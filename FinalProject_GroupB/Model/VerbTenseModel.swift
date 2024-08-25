import Foundation

class VerbTense{
    
    public var tenseVerb : String
    
    public var conjugation: [String]
    
    init(tenseVerb: String, conjugation: [String]) {
        self.tenseVerb = tenseVerb
        self.conjugation = conjugation
    }
    
}
