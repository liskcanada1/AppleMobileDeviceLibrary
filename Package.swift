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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6BC0D147-B19E-467E-9E85-67AD13C5AA39/libimobiledevice.xcframework.zip", checksum: "73c7d4d2a33e2b5c0a2b2f604e87caeb63ebc7e3cbf2a0d43b0c55e43f10aa63"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6BC0D147-B19E-467E-9E85-67AD13C5AA39/libimobiledevice_glue.xcframework.zip", checksum: "17a411c9e2c817e2fad67ec26efd8d63aaa137d1d856838a52d72cc3a3184b5b"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6BC0D147-B19E-467E-9E85-67AD13C5AA39/libplist.xcframework.zip", checksum: "c44bcbb1fc1c945480e3acce1a3a850990a2dd438cd51838c9f68fc5d9e51059"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6BC0D147-B19E-467E-9E85-67AD13C5AA39/libtatsu.xcframework.zip", checksum: "45c87fe08861bfd32b2bfa6f32914b2e921074f39a4042009ca0b574d3a3d7f1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6BC0D147-B19E-467E-9E85-67AD13C5AA39/libusbmuxd.xcframework.zip", checksum: "df7e58f6abb6c78b753c5794129359b06a7fa10187df6dc8958a31416840dab7"),
    ]
)

