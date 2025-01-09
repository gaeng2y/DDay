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
            infoPlist: .extendingDefault(
                with: [
                    "CFBundleExecutable": "$(EXECUTABLE_NAME)",
                    "CFBundleInfoDictionaryVersion": "0.1.0",
                    "CFBundlePackageType": "APPL",
                    "CFBundleName": "$(PRODUCT_NAME)",
                    "CFBundleIdentifier": "$(PRODUCT_BUNDLE_IDENTIFIER)",
                    "CFBundleVersion": "1",
                    "UILaunchStoryboardName": "LaunchScreen",
                    "UIApplicationSupportsIndirectInputEvents": "YES",
                    "UIApplicationSceneManifest": [
                        "UIApplicationSupportsMultipleScenes": false,
                        "UISceneConfigurations": [
                            "UIWindowSceneSessionRoleApplication": [
                                [
                                    "UISceneConfigurationName": "Default Configuration",
                                    "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"
                                ]
                            ]
                        ]
                    ]
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Foundations", path: .relativeToRoot("Foundations")),
                .external(name: "RIBs")
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
            infoPlist: .extendingDefault(
                with: [
                    "CFBundleExecutable": "$(EXECUTABLE_NAME)",
                    "CFBundleInfoDictionaryVersion": "0.1.0",
                    "CFBundlePackageType": "APPL",
                    "CFBundleName": "$(PRODUCT_NAME)",
                    "CFBundleIdentifier": "$(PRODUCT_BUNDLE_IDENTIFIER)",
                    "CFBundleVersion": "1",
                    "UILaunchStoryboardName": "LaunchScreen",
                    "UIApplicationSupportsIndirectInputEvents": "YES",
                    "UIApplicationSceneManifest": [
                        "UIApplicationSupportsMultipleScenes": false,
                        "UISceneConfigurations": [
                            "UIWindowSceneSessionRoleApplication": [
                                [
                                    "UISceneConfigurationName": "Default Configuration",
                                    "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"
                                ]
                            ]
                        ]
                    ]
                ]
            ),
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
