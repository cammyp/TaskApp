//  Created by Cameron  Partee on 1/3/20.
//  Copyright © 2020 Cameron Partee. All rights reserved.

extension TaskStore {
    struct PrioritizedTasks {
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension TaskStore.PrioritizedTasks: Identifiable {
    var id: Task.Priority { priority } // computed property
}
