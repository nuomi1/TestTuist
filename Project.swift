import ProjectDescription

let project = Project(
    name: "TestTuist",
    targets: [
        .target(
            name: "TestTuist",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TestTuist",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["TestTuist/Sources/**"],
            resources: ["TestTuist/Resources/**"],
            dependencies: [
                .external(name: "MarkdownUI")
            ]
        ),
        .target(
            name: "TestTuistTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TestTuistTests",
            infoPlist: .default,
            sources: ["TestTuist/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TestTuist")]
        ),
    ]
)
