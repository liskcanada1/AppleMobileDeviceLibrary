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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.92A98F56-74BD-4F4A-AAF0-725A0F3F7404/libimobiledevice.xcframework.zip", checksum: "ff8b2611a141816c4a43fc370d467d506c6c117879e6e194b9bb8d440aee5704"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.92A98F56-74BD-4F4A-AAF0-725A0F3F7404/libimobiledevice_glue.xcframework.zip", checksum: "dd50612b2b040da25d4437ae8efdb0f1c8c7696e616a6470f7a3b24846bc1676"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.92A98F56-74BD-4F4A-AAF0-725A0F3F7404/libplist.xcframework.zip", checksum: "be19937295a91fd03e2493114e25cdb33ee4091c21ed827fe7600e30da79960b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.92A98F56-74BD-4F4A-AAF0-725A0F3F7404/libtatsu.xcframework.zip", checksum: "d109be0fa064a5119b91645632ae7159b504668a88147e40891dda51d350a51a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.92A98F56-74BD-4F4A-AAF0-725A0F3F7404/libusbmuxd.xcframework.zip", checksum: "7ff8e03e0dc7d11c7700a5d3ce9ea129189ceade119aeb9d5b870f0bd632099c"),
    ]
)

