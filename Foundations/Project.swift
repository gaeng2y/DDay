//
//  Project.swift
//  DdayManifests
//
//  Created by Kyeongmo Yang on 12/3/24.
//

import ProjectDescription

let project = Project(
    name: "Foundations",
    organizationName: "com.gaeng2y",
    targets: [
        .target(
            name: "Foundations",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.gaeng2y.DDay.Foundations",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .extendingDefault(with: [:]),
            sources: ["Sources/**"],
            dependencies: []
        )
    ],
    schemes: []
)
