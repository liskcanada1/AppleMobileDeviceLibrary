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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.42DF3DA1-0F4C-450B-8A1C-E9CE5F348F7B/libimobiledevice.xcframework.zip", checksum: "215051d140a0137a7596613843d9cc9c22699f31b48f8491302514642d7d8710"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.42DF3DA1-0F4C-450B-8A1C-E9CE5F348F7B/libimobiledevice_glue.xcframework.zip", checksum: "7824b3aa6adff77136aeaf783faeade733773b10928864aee80724f8ec3eeee4"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.42DF3DA1-0F4C-450B-8A1C-E9CE5F348F7B/libplist.xcframework.zip", checksum: "847ea927917b5227226fac044b3ed449fc5a2f3854154a54c714ea0cba233b57"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.42DF3DA1-0F4C-450B-8A1C-E9CE5F348F7B/libtatsu.xcframework.zip", checksum: "6beb915730bb4c93814b2d296678f4e778856a3be67bd17773643464b6cfc799"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.42DF3DA1-0F4C-450B-8A1C-E9CE5F348F7B/libusbmuxd.xcframework.zip", checksum: "8fe72e0e9886d43251d396373847a09bb0801d2a7a4294f2b182092f6a058bc2"),
    ]
)

