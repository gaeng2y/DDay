import ProjectDescription

let project = Project(
    name: "Dday",
    targets: [
        .target(
            name: "Dday",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Dday",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Dday/Sources/**"],
            resources: ["Dday/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "DdayTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.DdayTests",
            infoPlist: .default,
            sources: ["Dday/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Dday")]
        ),
    ]
)
