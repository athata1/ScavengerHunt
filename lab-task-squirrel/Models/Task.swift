//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Favorite Dining Hall",
                 description: "Where to find the best food on campus!!!"),
            Task(title: "Favorite Nature spot",
                 description: "Where to go to find the most beautiful spot"),
            Task(title: "Favorite Animal",
                 description: "Try and find one of your favorite animals nearby!!!")
        ]
    }
}
