
//  Created by Andrew on 6/15/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import Foundation
import SwiftUI


let Books: [Book] = load("BooksJSON.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else{fatalError("couldn't find\(filename)in main Bundle")}
    
    do{
        data = try Data(contentsOf: file)
        
    }catch{
        fatalError("couldn't find\(filename)in main Bundle.\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("couldn't parse\(filename) as.\(T.self):\n\(error)")
    }
}
