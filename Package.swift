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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5AEF0CB-92B6-4748-8395-FDA3534DA42D/libimobiledevice.xcframework.zip", checksum: "8b247fb20956a796d556e6be28e2f3b0b837e7f8db0201b83952763b3661f49c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5AEF0CB-92B6-4748-8395-FDA3534DA42D/libimobiledevice_glue.xcframework.zip", checksum: "a2daebc907b7567c0b61279ef97d89da99f48d06e30375d1495a70e8cdc262f4"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5AEF0CB-92B6-4748-8395-FDA3534DA42D/libplist.xcframework.zip", checksum: "ee955550378ac02ffa1e55c813543cacf78382af88ac2568c65f661b2f33a842"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5AEF0CB-92B6-4748-8395-FDA3534DA42D/libtatsu.xcframework.zip", checksum: "b46e9dc111be7b4b176029d01e90bac5d56d24a5976c973e2cac493e966be82b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5AEF0CB-92B6-4748-8395-FDA3534DA42D/libusbmuxd.xcframework.zip", checksum: "f0ebe64a7b57698ada64a60b71e92da0c919fbe27586e831cae8cbf6600bf517"),
    ]
)

