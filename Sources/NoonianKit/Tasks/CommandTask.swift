//
//  BeforeBuildTask.swift
//  Noonian
//
//  Created by Scott Hoyt on 11/2/16.
//  Copyright © 2016 Scott Hoyt. All rights reserved.
//

import Foundation

struct CommandTask: Task {
    let name: String
    let commands: [String]

    init(name: String, commands: [String]) {
        self.name = name
        self.commands = commands
    }

    init(name: String, configuration: Any) throws {
        // Configuration could be either a string or an array of strings.
        // If it is neither, then we have to throw an error.
        var commands = [String]()
        if let stringCommand = configuration as? String {
            commands.append(stringCommand)
        } else if let arrayCommands = configuration as? [String] {
            commands += arrayCommands
        } else {
            throw ConfigurationError.unknownConfiguration
        }

        self.init(name: name, commands: commands)
    }
}