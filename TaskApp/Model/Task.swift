//  Created by Cameron  Partee on 1/2/20.
//  Copyright © 2020 Cameron Partee. All rights reserved.

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var completed = false 
}
