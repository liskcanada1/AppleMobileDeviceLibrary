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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8F234194-592F-4596-8015-D17F7A678F28/libimobiledevice.xcframework.zip", checksum: "0f008ab98d465ebd7c99aed34defe7803b0cc4fd07a2d476fee48e40d41abc7b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8F234194-592F-4596-8015-D17F7A678F28/libimobiledevice_glue.xcframework.zip", checksum: "05b9ba02a48f16c07ea3efe708de90ad3db00fb3fd20bfa1448d7694825a51ca"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8F234194-592F-4596-8015-D17F7A678F28/libplist.xcframework.zip", checksum: "31f87057d76410a112ebf9c52e386b90da2b8e00ed6b322b0ee30ed61d30e7dc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8F234194-592F-4596-8015-D17F7A678F28/libtatsu.xcframework.zip", checksum: "882ddcd9ab18050a2e3fa602e960e65384068bf0c5dafd440c03fdbb01d6835a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8F234194-592F-4596-8015-D17F7A678F28/libusbmuxd.xcframework.zip", checksum: "81b9562fe26ee882e18d7eb40dcd8d4509e8132c5c03c7b68725ec3c5eec59a6"),
    ]
)

