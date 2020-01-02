//  Created by Cameron  Partee on 1/2/20.
//  Copyright © 2020 Cameron Partee. All rights reserved.

import SwiftUI

struct NewTaskView: View {
    
    var taskStore: TaskStore
    
    @State var text = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form { 
            TextField("New Task", text: $text)
            Button("Add") {
                self.taskStore.tasks.append(Task(name: self.text))
                self.presentationMode.wrappedValue.dismiss()
            }
            .disabled(text.isEmpty)
        }
        
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
