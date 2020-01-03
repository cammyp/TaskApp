//  Created by Cameron  Partee on 1/2/20.
//  Copyright © 2020 Cameron Partee. All rights reserved.

import Combine

class TaskStore: ObservableObject {
    @Published var tasks = [
        "Go to the gym", "Go to the store", "Prepare for interview", "Boost self confidence", "Stay positive", "Prepare for interview", "Smile more", "reupload app to app store", "Prepare for interview", "do leetcode prep"
        ].map { Task(name: $0) }
    
    @Published var prioritizedTasks = [
        PrioritizedTasks(priority: .high, names: ["Go to the gym", "Go to the store", "Prepare for interview"] ),
        PrioritizedTasks(priority: .medium, names: ["Smile more", "reupload app to app store", "Prepare for interview"]),
        PrioritizedTasks(priority: .low, names: ["do leetcode prep"]),
        PrioritizedTasks(priority: .no, names: ["Prepare for interview"]) ]
    
    
}

private extension TaskStore.PrioritizedTasks {
    init(priority: Task.Priority, names: [String]) {
        self.init(
            priority: priority, tasks: names.map { Task(name: $0) }
        )
    }
}





