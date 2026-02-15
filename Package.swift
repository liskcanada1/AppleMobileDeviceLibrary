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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EF308020-352D-41B4-8269-4695F4552C39/libimobiledevice.xcframework.zip", checksum: "c47ae4384b6c694bb442c90770b054b81032cb0db623ce63759051cad24a08a9"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EF308020-352D-41B4-8269-4695F4552C39/libimobiledevice_glue.xcframework.zip", checksum: "7db2f0f16f4db99bdfbb9a013ed87e303c6b302ef2bb6debe09ed3cd3f114a63"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EF308020-352D-41B4-8269-4695F4552C39/libplist.xcframework.zip", checksum: "cbff459443e6ce48897e9b738c53db1013fdb8741bd311044ce359c71310b684"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EF308020-352D-41B4-8269-4695F4552C39/libtatsu.xcframework.zip", checksum: "8a9034eb5914004c36f04bf4eab45026f7162871730bea70a7e9a762a2ff3ff8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EF308020-352D-41B4-8269-4695F4552C39/libusbmuxd.xcframework.zip", checksum: "2902e64eca15b16f1d35913bd1df5f2f5c90d78bfe4fc903c6e46486d9e9720a"),
    ]
)

