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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0E7F8860-4031-45D2-800A-626F00B83876/libimobiledevice.xcframework.zip", checksum: "0d9aaeacc8a49ccac01ca018d84a9e1bb0f22f7d311194b21343582f2291143d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0E7F8860-4031-45D2-800A-626F00B83876/libimobiledevice_glue.xcframework.zip", checksum: "142d972840ac8b2f8ee32aaa3866ce4bc2c3825d95b60d1b0deced4dc100b8f0"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0E7F8860-4031-45D2-800A-626F00B83876/libplist.xcframework.zip", checksum: "f49e28b277340fe821c3c8cc8deab5784a5ac36b278156f430d9dc78b279cd77"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0E7F8860-4031-45D2-800A-626F00B83876/libtatsu.xcframework.zip", checksum: "3c2d4844eae4fc977f998b449645a4a01732722ee044b7c2f4ac87da76c6b4d3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0E7F8860-4031-45D2-800A-626F00B83876/libusbmuxd.xcframework.zip", checksum: "7d03c6cef0c87925bc891752e7fdbfce84f02d63d5b8c3212ea85642cab343e4"),
    ]
)

