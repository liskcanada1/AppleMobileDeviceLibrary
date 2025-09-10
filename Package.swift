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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.921DEE03-867F-4EB1-8940-7BDA241990B1/libimobiledevice.xcframework.zip", checksum: "d4b750ee620aea7147f93699588ace30c71210b55ab7732f475fb1cd8e34e1b0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.921DEE03-867F-4EB1-8940-7BDA241990B1/libimobiledevice_glue.xcframework.zip", checksum: "7cca3a81bb556efe435b4c87a822e2a256e574db1d33dddf258ee55c948ffb61"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.921DEE03-867F-4EB1-8940-7BDA241990B1/libplist.xcframework.zip", checksum: "a28e53da886403be48a2c215673ccbe2e43aa17ffb3e5296469d1b3d4ad86cdd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.921DEE03-867F-4EB1-8940-7BDA241990B1/libtatsu.xcframework.zip", checksum: "33c8e15bdc595de1c8fa7ed1723da78308ed83ef34a760d17657b9093dd0d503"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.921DEE03-867F-4EB1-8940-7BDA241990B1/libusbmuxd.xcframework.zip", checksum: "983ce532482f70e82f414fc286e17a04225284d73777d54ba37d62ce9008ae5a"),
    ]
)

