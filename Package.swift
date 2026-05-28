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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EA6BD35E-4266-4CA5-99FC-5328720BDE23/libimobiledevice.xcframework.zip", checksum: "6fee3721facb42b408f1a950745b678cea210f4344e7a1a932948946a8d59034"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EA6BD35E-4266-4CA5-99FC-5328720BDE23/libimobiledevice_glue.xcframework.zip", checksum: "f1e791b24ba8a385631852264a4df372154a48238d5e87e1efaa680e1e08f6b5"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EA6BD35E-4266-4CA5-99FC-5328720BDE23/libplist.xcframework.zip", checksum: "36ceb63f99b67be6458939c1a3902f6d0d972e92f49b6d4e7a1d0cdcba86ceea"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EA6BD35E-4266-4CA5-99FC-5328720BDE23/libtatsu.xcframework.zip", checksum: "4dcc17f7cc2fa28c13a2b682ed5253b32d057880bd51c90435f134649de12dc5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EA6BD35E-4266-4CA5-99FC-5328720BDE23/libusbmuxd.xcframework.zip", checksum: "27c37054f4915f803dc00ae6378e13b15d1f6d79f1f05101970ee62463e11282"),
    ]
)

