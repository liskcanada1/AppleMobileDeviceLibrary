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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E732FB15-B8A6-48DA-BB95-20930AC8A8A5/libimobiledevice.xcframework.zip", checksum: "761cfa466156eb50fe20f2e84644ecdcc3e44ebd88258f5433316b53767797cd"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E732FB15-B8A6-48DA-BB95-20930AC8A8A5/libimobiledevice_glue.xcframework.zip", checksum: "2c781bb02292c6f0490e38d47f4358d88a1a2337dfec58c2ab671ce5162385b1"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E732FB15-B8A6-48DA-BB95-20930AC8A8A5/libplist.xcframework.zip", checksum: "67bb01183c80d6a37195885f0750fc84ff5955d320256efa31835fc98f8ec29d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E732FB15-B8A6-48DA-BB95-20930AC8A8A5/libtatsu.xcframework.zip", checksum: "62dd8aa2e2228160417c70d40346cefe137e8984ee0c84c15a4628e017e29111"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E732FB15-B8A6-48DA-BB95-20930AC8A8A5/libusbmuxd.xcframework.zip", checksum: "c6949737c835265167890472ad256975af8de908032b902834d11756b2e02d88"),
    ]
)

