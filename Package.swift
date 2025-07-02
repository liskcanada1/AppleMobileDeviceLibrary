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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.04891815-69AE-4ECA-A1DA-2335D5D5CB36/libimobiledevice.xcframework.zip", checksum: "4418c26b4cfb45b1cca7aab81bcc33542ad02df225a79d03a5ac0e027240640a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.04891815-69AE-4ECA-A1DA-2335D5D5CB36/libimobiledevice_glue.xcframework.zip", checksum: "ef5995043e055f7963be6687de00232d514acc6d46d48c99af4bf9030ea92f20"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.04891815-69AE-4ECA-A1DA-2335D5D5CB36/libplist.xcframework.zip", checksum: "9fe5eb5c8a8e6bf9ef647224d174dae040dc50bac628cda8d9dc7b94980dc802"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.04891815-69AE-4ECA-A1DA-2335D5D5CB36/libtatsu.xcframework.zip", checksum: "f273d2586b87f69a73ff1be8b64c748d1159cd54f89b7ff0ce6bce2ffee8685b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.04891815-69AE-4ECA-A1DA-2335D5D5CB36/libusbmuxd.xcframework.zip", checksum: "b17aa3e67e479aeefe051e6e57426f5024fcc46b6e3555027792d8965a1767df"),
    ]
)

