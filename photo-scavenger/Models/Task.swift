//
//  Task.swift
//  photo-scavenger
//  by Jabez Agyemang-Prempeh
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
            Task(title: "Go Hiking with Phinehas and Donald",
                 description: "Call the boys to go for a hike saturday morning"),
            Task(title: "Complete your weekend leage",
                 description: "Try to complete your weekend league this week with at least 13 wins. (Mbappe grind)"),
        ]
    }
}
