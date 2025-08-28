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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E8FED95-022A-4C77-90F8-F1BCF02630CA/libimobiledevice.xcframework.zip", checksum: "40d854601866500c5cfb149d8add75776b34cbb2a8524ff891f3bd7e72808857"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E8FED95-022A-4C77-90F8-F1BCF02630CA/libimobiledevice_glue.xcframework.zip", checksum: "8580adfe94767d6b1752bbbe90267a27d52586e205f0199071bbdf65245ff829"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E8FED95-022A-4C77-90F8-F1BCF02630CA/libplist.xcframework.zip", checksum: "83d22bda3329ccf17c1d49b835030a638dfbf6185820304e7d3b3d140827472f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E8FED95-022A-4C77-90F8-F1BCF02630CA/libtatsu.xcframework.zip", checksum: "6852e8747d05c5de4123fce2d673c415fa935c9d9a241f5fc0507c6e83b5cc03"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E8FED95-022A-4C77-90F8-F1BCF02630CA/libusbmuxd.xcframework.zip", checksum: "5547ae164f9c057915fbe32ba40f3ca32d55800d5b204c12470112cdad6ea05e"),
    ]
)

