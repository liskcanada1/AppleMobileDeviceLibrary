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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EECBA44B-9F8D-4104-83EA-B8D82D3A2DF8/libimobiledevice.xcframework.zip", checksum: "7fb08963d1bc4d77eb750d29f8158c29efa4c4c10c6d67c6706101798cda5cd2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EECBA44B-9F8D-4104-83EA-B8D82D3A2DF8/libimobiledevice_glue.xcframework.zip", checksum: "334f067623937a3ce64aec59ceb7397cb375e0776b9e4f115192a5c4639193b6"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EECBA44B-9F8D-4104-83EA-B8D82D3A2DF8/libplist.xcframework.zip", checksum: "334bab249edda43c16b4901ee5f18a1704c99956851656dac12dda766ba50f90"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EECBA44B-9F8D-4104-83EA-B8D82D3A2DF8/libtatsu.xcframework.zip", checksum: "322eed5aa2d3e046fa316f55cffb208f75c74a668fcae0cf54fd281b6cbb9206"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EECBA44B-9F8D-4104-83EA-B8D82D3A2DF8/libusbmuxd.xcframework.zip", checksum: "92187262ace7fa9d41d55b266af9b9dc9373eebf4764a9f5649dbc45b89eaefb"),
    ]
)

