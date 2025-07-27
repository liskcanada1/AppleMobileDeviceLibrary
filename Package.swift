// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AppleMobileDeviceLibrary",
    platforms: [
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "AppleMobileDeviceLibrary",
            targets: ["AppleMobileDeviceLibrary"]
        ),
    ],
    dependencies: [
        .package(name: "OpenSSL", url: "https://github.com/Lakr233/openssl-spm.git", from: "3.2.0"),
    ],
    targets: [
        .target(name: "AppleMobileDeviceLibrary", dependencies: [
            "libimobiledevice",
            "libimobiledevice_glue",
            "libplist",
            "libusbmuxd",
            "libtatsu",
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A455FBD2-5199-4406-A7BF-3938447021C6/libimobiledevice.xcframework.zip", checksum: "be21ced827b00e5940b5b37551db00a419eb345b894bcbe2f515f2e824141c2e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A455FBD2-5199-4406-A7BF-3938447021C6/libimobiledevice_glue.xcframework.zip", checksum: "29b3d87813323e19a098d6a5aa6c2467b23e55525d5f3da1ed3f74e16383836a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A455FBD2-5199-4406-A7BF-3938447021C6/libplist.xcframework.zip", checksum: "754b1e7396fd9b92c7dbec2ced93d18c759522d0f994dbe4031225c3a576bad3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A455FBD2-5199-4406-A7BF-3938447021C6/libtatsu.xcframework.zip", checksum: "14a122c2d57b79fc0f13e869c1334c9b32bcf93dce9731ec9857e4858fb30bb4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A455FBD2-5199-4406-A7BF-3938447021C6/libusbmuxd.xcframework.zip", checksum: "8bf7fba6b12070d278dd27c6de9a46d6497056a3469f76a37348ffac129fba25"),
    ]
)

