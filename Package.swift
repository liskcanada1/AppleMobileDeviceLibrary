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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.310795F2-2CCC-44CE-8640-7ABFB08D4899/libimobiledevice.xcframework.zip", checksum: "b183533db5a088fdc503a621528fff215f222c647207fad715324104ecf9414f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.310795F2-2CCC-44CE-8640-7ABFB08D4899/libimobiledevice_glue.xcframework.zip", checksum: "87a071858c512c59a53d11dac97df45e8b29411e51774800382077e6808f0d76"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.310795F2-2CCC-44CE-8640-7ABFB08D4899/libplist.xcframework.zip", checksum: "8b5d662d4930efec9d33af8db20a89dcdfb1b5adf135a01a6d71e2988dad4b63"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.310795F2-2CCC-44CE-8640-7ABFB08D4899/libtatsu.xcframework.zip", checksum: "f8c9ad013f8fe270b35f5d25a64f61fc68f7eea2448f79a8ab26bff3a69da9e8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.310795F2-2CCC-44CE-8640-7ABFB08D4899/libusbmuxd.xcframework.zip", checksum: "e950a66438ff19da3641cbdc1b478330d0ab78529a4ad3bee99983a7433c6e02"),
    ]
)

