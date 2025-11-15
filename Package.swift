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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A09363B2-8BF2-4690-9BAD-749E594D3277/libimobiledevice.xcframework.zip", checksum: "cc6fd4cd559e3ca38a3c12076e0463d1a5fe24fca77db05c5e3da55bfbbdd757"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A09363B2-8BF2-4690-9BAD-749E594D3277/libimobiledevice_glue.xcframework.zip", checksum: "f9093b3be4b919e611bb61d9e08223508cee3c29685765417fe9f75f53281a28"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A09363B2-8BF2-4690-9BAD-749E594D3277/libplist.xcframework.zip", checksum: "f9b4e4f51d60446e49506c2cfbb088dcafaff838709d94d90367cc8c11333f0f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A09363B2-8BF2-4690-9BAD-749E594D3277/libtatsu.xcframework.zip", checksum: "eabd38269a2a61671732bb441f267332ffc34f7f75558887776030d56eed3d7b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A09363B2-8BF2-4690-9BAD-749E594D3277/libusbmuxd.xcframework.zip", checksum: "8bb3586422e2ed2c2df1f40058e920324b703476ac07c1136b882220c55f8335"),
    ]
)

