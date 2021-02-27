//
//  ToDoListApp+CoreDataProperties.swift
//  CoreData Todo List App
//
//  Created by Bulldozer on 16/02/21.
//
//

import Foundation
import CoreData


extension ToDoListApp {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListApp> {
        return NSFetchRequest<ToDoListApp>(entityName: "ToDoListApp")
    }

    @NSManaged public var name: String?
    @NSManaged public var createdAt: Date?

}

extension ToDoListApp : Identifiable {

}
