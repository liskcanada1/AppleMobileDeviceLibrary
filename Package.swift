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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2B33E666-16ED-46F9-8022-C27613F152CB/libimobiledevice.xcframework.zip", checksum: "3ad79bfe110300a3752fce024cdd8a027294479fd0384c578044e8454504dc58"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2B33E666-16ED-46F9-8022-C27613F152CB/libimobiledevice_glue.xcframework.zip", checksum: "c247452e2753c59535f5924e3a0b81c7d8bb30f0d12521e31bcf13451feb314f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2B33E666-16ED-46F9-8022-C27613F152CB/libplist.xcframework.zip", checksum: "4e782193a14d05bc0d3ecfa235176e9be12cf3561607567b2da44c791bd82458"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2B33E666-16ED-46F9-8022-C27613F152CB/libtatsu.xcframework.zip", checksum: "d59fe17f9d4a720ab2037a8f09a1964c0243c3d27e7d4f4696c5d48003b01b31"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2B33E666-16ED-46F9-8022-C27613F152CB/libusbmuxd.xcframework.zip", checksum: "fe82c417d76cff114c51c6b0c102ce0d20edfa80ef1f04f72360979693807a44"),
    ]
)

