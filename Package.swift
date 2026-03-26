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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C3DB6FE3-44E6-40B1-8088-DC30202A3D4E/libimobiledevice.xcframework.zip", checksum: "6c444ca50c7e48e30622982fff2d7de31137303840402c9b297b73b1f8a50a97"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C3DB6FE3-44E6-40B1-8088-DC30202A3D4E/libimobiledevice_glue.xcframework.zip", checksum: "c2884c8e70559e21de6612742319f22c0256c1c52ff95faba67c5199d18b9639"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C3DB6FE3-44E6-40B1-8088-DC30202A3D4E/libplist.xcframework.zip", checksum: "4e7a4d9b8ad79c8952c0776d897e4992595686d5b560b04deaf3d0ed0c106234"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C3DB6FE3-44E6-40B1-8088-DC30202A3D4E/libtatsu.xcframework.zip", checksum: "85d5e6a6c902f213bdab76173c7b6cd4406c90e30800aac1acf8cbc9fa39a918"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C3DB6FE3-44E6-40B1-8088-DC30202A3D4E/libusbmuxd.xcframework.zip", checksum: "56c8ca0034fe4cfcd79d89702eae75f8076cea6090c4514bd764688fbf0b3697"),
    ]
)

