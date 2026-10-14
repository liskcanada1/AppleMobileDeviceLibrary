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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DB5E4ADC-A576-4DCE-9700-65784D39379F/libimobiledevice.xcframework.zip", checksum: "94b043873ab6267e2739f8ca9c6b73a5efff935aa911fb51531161885f9a6f85"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DB5E4ADC-A576-4DCE-9700-65784D39379F/libimobiledevice_glue.xcframework.zip", checksum: "e16a91cb4519dc0b0ec6d9e80028aebafadbbac60bb7c7f6b6933c6a812dbce8"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DB5E4ADC-A576-4DCE-9700-65784D39379F/libplist.xcframework.zip", checksum: "7420dfa3bc8345ff89f2f84aad161d204e26055740e2175b624fda7bbdac2d02"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DB5E4ADC-A576-4DCE-9700-65784D39379F/libtatsu.xcframework.zip", checksum: "784cd9a4d32f5b1d428403bffeeb5d71fb2c7480c84f8ebc7c22a9423f4c97d7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DB5E4ADC-A576-4DCE-9700-65784D39379F/libusbmuxd.xcframework.zip", checksum: "e7e24fec661d5d6ff4edd424759f1935f83380af2e7c31ed4b0a1d20acae6a67"),
    ]
)

