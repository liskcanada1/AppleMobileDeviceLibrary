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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F0DD65DD-4A83-42F0-A39B-9E8C0686522C/libimobiledevice.xcframework.zip", checksum: "fb9605f0b2c1e9ff1a6f542df5e9b194bd6dd44531f8468cfb740abf803ea168"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F0DD65DD-4A83-42F0-A39B-9E8C0686522C/libimobiledevice_glue.xcframework.zip", checksum: "14e90e0180c70e3e2c6d1a087f1b60f6a44bf15dab5ece97cc87229a0089b1c5"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F0DD65DD-4A83-42F0-A39B-9E8C0686522C/libplist.xcframework.zip", checksum: "64d1a9d513231235f06f0cb3799af96f54766fa5dc3bb958b10f178e3add454e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F0DD65DD-4A83-42F0-A39B-9E8C0686522C/libtatsu.xcframework.zip", checksum: "45d5fb90d232855d42f7ab9f9e3a524f990c83529626aefe968168ed80065c62"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F0DD65DD-4A83-42F0-A39B-9E8C0686522C/libusbmuxd.xcframework.zip", checksum: "276f5f88fc0d7c52b39a6f9d898e5bc030288bdfbd64cadde6666a793c8b9c99"),
    ]
)

