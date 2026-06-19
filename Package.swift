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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FF3CD4D2-FEF6-4ABC-B9A1-BA0C5DF861CF/libimobiledevice.xcframework.zip", checksum: "4c09e837576f21305f8dad20d98740fdbe3b2ada170555a7e03d6f6b3e9b6bdb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FF3CD4D2-FEF6-4ABC-B9A1-BA0C5DF861CF/libimobiledevice_glue.xcframework.zip", checksum: "a81e7ca079282b6e38979aa4c36ebf403fbde41e8e8b7f147558188f7aca5bcf"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FF3CD4D2-FEF6-4ABC-B9A1-BA0C5DF861CF/libplist.xcframework.zip", checksum: "066b4be44bd44b0dce1d8c33ea9cb2a96d66a6c6aacfeabb5719068123ab0bb5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FF3CD4D2-FEF6-4ABC-B9A1-BA0C5DF861CF/libtatsu.xcframework.zip", checksum: "8e8be862b5e99f7ee5bd98de9346c5398bcd1faa5b9013833ec982e05e248301"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FF3CD4D2-FEF6-4ABC-B9A1-BA0C5DF861CF/libusbmuxd.xcframework.zip", checksum: "7b48733d37861edb6897abe74f2be66df90443e2b425f450afd65c2bb53ba3ed"),
    ]
)

