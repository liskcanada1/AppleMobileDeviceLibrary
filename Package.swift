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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4A86264F-E1F2-4FE9-9BC0-1C862E1EB680/libimobiledevice.xcframework.zip", checksum: "c9647a9f3daeaebaae381ca969ff0672698c0bfaf44d7fc83255d97ad4d65b74"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4A86264F-E1F2-4FE9-9BC0-1C862E1EB680/libimobiledevice_glue.xcframework.zip", checksum: "9e5f798a9322b0d4daebdf95f0ff85f0106c7e660fedae39bee115dd39e2917a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4A86264F-E1F2-4FE9-9BC0-1C862E1EB680/libplist.xcframework.zip", checksum: "eb60a0b292284112e0860a2f3279745a6045ce818c2f369b7020f8d6da3d41a6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4A86264F-E1F2-4FE9-9BC0-1C862E1EB680/libtatsu.xcframework.zip", checksum: "74d93bd82b5d5989ec12fd6859def6f8f19e33708d28735b47135ba28ab25a9f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4A86264F-E1F2-4FE9-9BC0-1C862E1EB680/libusbmuxd.xcframework.zip", checksum: "24c1f3e04bbc9f54f78ed41bd6f918a2c9815967657f18bb8fbc27f579706ee1"),
    ]
)

