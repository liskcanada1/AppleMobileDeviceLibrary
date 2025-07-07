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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39F673C6-3E2A-4DA0-AAA9-0B1061EDC29B/libimobiledevice.xcframework.zip", checksum: "e66580c6d682a5849ff8b677f6d46aba878db35510dda68dd78bc36cb9f4075b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39F673C6-3E2A-4DA0-AAA9-0B1061EDC29B/libimobiledevice_glue.xcframework.zip", checksum: "946693df8d816bde5f50ac81b4ea7cb38c02e0d20c71910e1efdd015619669c7"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39F673C6-3E2A-4DA0-AAA9-0B1061EDC29B/libplist.xcframework.zip", checksum: "d2f034a2fea6bd93caac6197851453cb1f26b64904d77aab2ce7d868436c7702"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39F673C6-3E2A-4DA0-AAA9-0B1061EDC29B/libtatsu.xcframework.zip", checksum: "4a6ec196d2f4bf06d7876ca3f89300947448603c523f94e62de7b53aef6c611f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39F673C6-3E2A-4DA0-AAA9-0B1061EDC29B/libusbmuxd.xcframework.zip", checksum: "1ca6da60a13edddaf2d72d24a15912391de485fb96f0be30a1f7f13ee86c261c"),
    ]
)

