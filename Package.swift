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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDF014EF-76B3-4D62-9EC9-56F42152F1B8/libimobiledevice.xcframework.zip", checksum: "9a38edbb5b1f88a8c4d252f4769bac558063019926856eb9739856b76036a383"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDF014EF-76B3-4D62-9EC9-56F42152F1B8/libimobiledevice_glue.xcframework.zip", checksum: "b47a8144719673465bf283af9d83b4d063b873d0b1c113706b0082c6e318df0e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDF014EF-76B3-4D62-9EC9-56F42152F1B8/libplist.xcframework.zip", checksum: "9a6926923ad6fc93a13bc364da9336b711e5e14c897d8f4a0689eeae5152204d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDF014EF-76B3-4D62-9EC9-56F42152F1B8/libtatsu.xcframework.zip", checksum: "35419ec3cbdf93bc68830f59556a4c68835f0a2755b9b3c6d70a6f0629b67aa6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDF014EF-76B3-4D62-9EC9-56F42152F1B8/libusbmuxd.xcframework.zip", checksum: "ab8e90979b4bb54ff681fb72d9bdc28dad63e6bc9c024712a921830accc42879"),
    ]
)

