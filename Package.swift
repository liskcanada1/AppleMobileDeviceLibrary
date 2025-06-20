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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0F4EF6B2-BA63-41DF-931E-6410CA80BBA9/libimobiledevice.xcframework.zip", checksum: "10b8d715072a7c9df744f6b9f8be6dc958354c271dd22580714f83b10eaa396f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0F4EF6B2-BA63-41DF-931E-6410CA80BBA9/libimobiledevice_glue.xcframework.zip", checksum: "adc68b613b10a4c62efc3afc4f5ff366418a2a4b78a5d5da4a36256815ca8c02"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0F4EF6B2-BA63-41DF-931E-6410CA80BBA9/libplist.xcframework.zip", checksum: "622ba7ef03c05d2a1dde822ed9159967194bb2bccc93ddcd3e5dbf399b20dc5a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0F4EF6B2-BA63-41DF-931E-6410CA80BBA9/libtatsu.xcframework.zip", checksum: "a7bf655e88d9ce920186ab5fb3f8a7417993bea71e1d094220a975cfc3fc3953"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0F4EF6B2-BA63-41DF-931E-6410CA80BBA9/libusbmuxd.xcframework.zip", checksum: "d7715212383bb0f1b33c80937f86175963b6983971320970ca59581e70b3c281"),
    ]
)

