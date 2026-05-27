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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ED19F2BF-ED7A-4214-902E-8C8D9F2AE662/libimobiledevice.xcframework.zip", checksum: "5a54feff1dde04a5d54c4e74b277ee2fd3b34e56aa931797025c347259e4185a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ED19F2BF-ED7A-4214-902E-8C8D9F2AE662/libimobiledevice_glue.xcframework.zip", checksum: "458fa521eece568e28b343089b73408b14b00a18bb9113afa831f1bb22d9cf3d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ED19F2BF-ED7A-4214-902E-8C8D9F2AE662/libplist.xcframework.zip", checksum: "e2a80d6b80cd39a4a32a93523a7580dea992901f85efa5e35d855891266d8c5b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ED19F2BF-ED7A-4214-902E-8C8D9F2AE662/libtatsu.xcframework.zip", checksum: "c1ac6179e084dba18fdb72ecab2f74f0b2685810bdc980df8dd2c89149037617"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ED19F2BF-ED7A-4214-902E-8C8D9F2AE662/libusbmuxd.xcframework.zip", checksum: "adfa853784e00d17ac3dcaf5472fe120a5f8fab76e0cb05a8e33804ea29143e9"),
    ]
)

