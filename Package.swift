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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1C698251-256B-4226-A3DB-7651C48BA802/libimobiledevice.xcframework.zip", checksum: "1053ff2c8f3efb10935c3efac0feff7ca7e0f551639c130417af1e6eb1d056b7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1C698251-256B-4226-A3DB-7651C48BA802/libimobiledevice_glue.xcframework.zip", checksum: "711ab24e6b43373c808e06f666ec4e368d2266d2beb3f0b8825c26632b36c9bc"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1C698251-256B-4226-A3DB-7651C48BA802/libplist.xcframework.zip", checksum: "e4126fe0bfda5a4666645f8340d59a49574cc4cbf20cfc967bbffe4e6ebfcdea"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1C698251-256B-4226-A3DB-7651C48BA802/libtatsu.xcframework.zip", checksum: "8671e64f4122dac7f30e353752f57e5c3efa394a821af3c465dfdbef17f646ee"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1C698251-256B-4226-A3DB-7651C48BA802/libusbmuxd.xcframework.zip", checksum: "d0e6c16f20768851bde9a0483ffd0649053c78a1dd355efdcf54ba21d02ed25c"),
    ]
)

