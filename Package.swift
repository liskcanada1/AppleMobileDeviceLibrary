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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.090D6B70-3BF3-4CC0-9B38-CF3C315FF99E/libimobiledevice.xcframework.zip", checksum: "8523ec544a93514a5bc61510d9ecbbe560abc934d7521a0503386e35d45a3d7a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.090D6B70-3BF3-4CC0-9B38-CF3C315FF99E/libimobiledevice_glue.xcframework.zip", checksum: "0265d244eb689752344a6ee659fe5994e13f2c8fa28d23b64fbd9cfe4f8f2f04"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.090D6B70-3BF3-4CC0-9B38-CF3C315FF99E/libplist.xcframework.zip", checksum: "5e74a477272abc70fe62abb5b7f6c6729878da17e8fcd8da6ba6e9cf9a08bd27"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.090D6B70-3BF3-4CC0-9B38-CF3C315FF99E/libtatsu.xcframework.zip", checksum: "cf53f90c2f6ca48311267b9b7e1af6028b695045c30b955ac576b5b339e52cd9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.090D6B70-3BF3-4CC0-9B38-CF3C315FF99E/libusbmuxd.xcframework.zip", checksum: "08bbdba985118762c7a3f95cf745db3312b2a095b8803cdb488f6dc33455b12c"),
    ]
)

