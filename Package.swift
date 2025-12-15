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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.62F4F01A-D1DF-49AD-BA2A-CD6BFA77CAAE/libimobiledevice.xcframework.zip", checksum: "4248503930245a248d553bba651a2a4a237df8aef7b7e384b637c09055575b61"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.62F4F01A-D1DF-49AD-BA2A-CD6BFA77CAAE/libimobiledevice_glue.xcframework.zip", checksum: "3f9f209d2814a234e50a1e7c1a72c95d51cdbf10b19a13d48c348f11895c54f0"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.62F4F01A-D1DF-49AD-BA2A-CD6BFA77CAAE/libplist.xcframework.zip", checksum: "0a60952125c3ca625e512bd711b74433862975227090082e03bee8848b7b84da"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.62F4F01A-D1DF-49AD-BA2A-CD6BFA77CAAE/libtatsu.xcframework.zip", checksum: "2911d64b0f6a25edb8ca8a3d25e4073f470dc666bf4ac0a2755ef5768d63d0d9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.62F4F01A-D1DF-49AD-BA2A-CD6BFA77CAAE/libusbmuxd.xcframework.zip", checksum: "ee9331d6372f110361fc5cb3ccd49da444c1adf07ba3a52cb4734060675eb969"),
    ]
)

