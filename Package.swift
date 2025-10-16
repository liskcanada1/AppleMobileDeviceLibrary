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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.15F91845-13EF-4B0A-8601-6A2FC9108314/libimobiledevice.xcframework.zip", checksum: "da299dc5c7fea88eaf4930f1423207ac480f29b0a7b53cadd9efd03e4a4c0521"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.15F91845-13EF-4B0A-8601-6A2FC9108314/libimobiledevice_glue.xcframework.zip", checksum: "fbda4f0306d243ed53bd17aaf2f17c44e4f28c66604f8b4221bda86565fcb8f4"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.15F91845-13EF-4B0A-8601-6A2FC9108314/libplist.xcframework.zip", checksum: "34c1246f23a7c7c1636150e52bed6dc56bdae19da1472380d152c9a860081eb6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.15F91845-13EF-4B0A-8601-6A2FC9108314/libtatsu.xcframework.zip", checksum: "eb143628098c77b6022db1b79d1757a3333dada60c43bb67a63284e45cb204a2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.15F91845-13EF-4B0A-8601-6A2FC9108314/libusbmuxd.xcframework.zip", checksum: "4415cb7cab90a970a025866faa931aba6c802d47271bab3d749172fbf62ffda4"),
    ]
)

