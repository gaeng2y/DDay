import ProjectDescription

let project = Project(
    name: "DDay",
    settings: .settings(
        configurations: [
            .debug(name: .debug),
            .release(name: .release)
        ]
    ),
    targets: [
        .target(
            name: "DDay",
            destinations: .iOS,
            product: .app,
            productName: "DDay",
            bundleId: "com.gaeng2y.DDay",
            deploymentTargets: .multiplatform(iOS: "17.0"),
            infoPlist: .extendingDefault(with: [:]),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Foundations", path: .relativeToRoot("Foundations"))
            ],
            settings: .settings(
                configurations: [
                    .release(name: .release, xcconfig: .relativeToRoot("xcconfigs/PROD.xcconfig"))
                ]
            )
        ),
        .target(
            name: "DDay-DEV",
            destinations: .iOS,
            product: .app,
            productName: "DDay",
            bundleId: "com.gaeng2y.DDay",
            deploymentTargets: .multiplatform(iOS: "17.0"),
            infoPlist: .extendingDefault(with: [:]),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Foundations", path: .relativeToRoot("Foundations"))
            ],
            settings: .settings(
                configurations: [
                    .debug(name: .debug, xcconfig: .relativeToRoot("xcconfigs/DEV.xcconfig"))
                ]
            )
        ),
        .target(
            name: "DDayTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.gaeng2y.DDay.UnitTests",
            infoPlist: .extendingDefault(with: [:]),
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "DDay")
            ]
        )
    ],
    schemes: []
)
