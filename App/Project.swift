import ProjectDescription

let project = Project(
    name: "Dday",
    targets: [
        .target(
            name: "Dday",
            destinations: .iOS,
            product: .app,
            productName: "Dday",
            bundleId: "com.gaeng2y.Dday",
            deploymentTargets: .multiplatform(iOS: "17.0"),
            infoPlist: .extendingDefault(with: [:]),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Foundation", path: .relativeToRoot("Foundation"))
            ]
        ),
        .target(
            name: "DdayTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.gaeng2y.Dday.UnitTests",
            infoPlist: .extendingDefault(with: [:]),
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Dday")
            ]
        )
    ],
    schemes: []
)
