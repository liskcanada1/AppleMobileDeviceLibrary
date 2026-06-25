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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.84A89B0C-9C14-4407-9F68-7914EE4AB29B/libimobiledevice.xcframework.zip", checksum: "d998a8891a7dd8505c27984f399d5cd42eda24674bed5742d64164cb6f1988ac"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.84A89B0C-9C14-4407-9F68-7914EE4AB29B/libimobiledevice_glue.xcframework.zip", checksum: "a4e8b3e1f7e62a3445694704e81d8aa285a1f591e97d199bcdf78c0438abf216"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.84A89B0C-9C14-4407-9F68-7914EE4AB29B/libplist.xcframework.zip", checksum: "5e22663a488a1a585c9eb22ba35d1f742345d3ac0283944d18310d88b0b0798a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.84A89B0C-9C14-4407-9F68-7914EE4AB29B/libtatsu.xcframework.zip", checksum: "b5a7441b73809a1809585baaaf35a4c79e1350c6ab228fd300eae1376eb6adab"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.84A89B0C-9C14-4407-9F68-7914EE4AB29B/libusbmuxd.xcframework.zip", checksum: "89c546b57c68531b3a05d348c674c4fab08e06ac3da528005b1cfb3c9d6327ac"),
    ]
)

