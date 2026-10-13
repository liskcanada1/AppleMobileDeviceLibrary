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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7F2064B5-7823-489B-A4D1-32EFC17A0592/libimobiledevice.xcframework.zip", checksum: "aa37ef54f94a18e18f2fd33e6dc1e52ca715310de48def31c0bbd645ea1b47e4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7F2064B5-7823-489B-A4D1-32EFC17A0592/libimobiledevice_glue.xcframework.zip", checksum: "ab0fd24df810047ce6f82fe9937422b7906371fb20c55c5d632281beadf38af0"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7F2064B5-7823-489B-A4D1-32EFC17A0592/libplist.xcframework.zip", checksum: "09ecfe90027b8999c4cad550b4e31e46cbfcb8c0589ae172b10639776b9533f7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7F2064B5-7823-489B-A4D1-32EFC17A0592/libtatsu.xcframework.zip", checksum: "aa09bd9e43d38e43f174de2f970b2c0854e546f7d26dd09c84f13e8003b1d104"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7F2064B5-7823-489B-A4D1-32EFC17A0592/libusbmuxd.xcframework.zip", checksum: "5d98cd23c1854e8746b0f7b1005d37e56efb44acfce8d525d273c4469bee39b6"),
    ]
)

