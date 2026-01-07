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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E0C2A12-3EC8-4959-B9A5-E8F05AF4B990/libimobiledevice.xcframework.zip", checksum: "7800767839ac8d3d9ba7bd0415b2e07835045ee24505168db3362e4571ed7285"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E0C2A12-3EC8-4959-B9A5-E8F05AF4B990/libimobiledevice_glue.xcframework.zip", checksum: "fea5a45d4c3b0c19c5b34cedd54528cbbdcbca41f1dfc123877d30462f203519"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E0C2A12-3EC8-4959-B9A5-E8F05AF4B990/libplist.xcframework.zip", checksum: "fe2e6faa3b027bf1c7aebf5cbe23e5ca8f3ced1cfb1463ee92dffb2aaff3e261"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E0C2A12-3EC8-4959-B9A5-E8F05AF4B990/libtatsu.xcframework.zip", checksum: "dadd0e7ed43eb3c463403fb4896ccb5a6c82c642b027e9a9a2f98bb8cc6e094d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E0C2A12-3EC8-4959-B9A5-E8F05AF4B990/libusbmuxd.xcframework.zip", checksum: "210a4462081c9334a910807c6ddd2394a475b1fb54ef844a06b0210632fdff7e"),
    ]
)

