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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0CA82A5C-DD2C-4FD7-82AD-92C11322CBAA/libimobiledevice.xcframework.zip", checksum: "4ffe199d6092d26873e5c2e0d1f5c920e6da60252cd20f209d26313e5d8b1d80"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0CA82A5C-DD2C-4FD7-82AD-92C11322CBAA/libimobiledevice_glue.xcframework.zip", checksum: "9d579eb536b776e04393696b454a2d440e9aa8929dd9ca312ccd1b8ebbafd25f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0CA82A5C-DD2C-4FD7-82AD-92C11322CBAA/libplist.xcframework.zip", checksum: "8e640fa4b99d3d1700df4696d95164cba51f0d54d9b658cfb01ab63eaefd5b80"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0CA82A5C-DD2C-4FD7-82AD-92C11322CBAA/libtatsu.xcframework.zip", checksum: "08222ef8f7844d10379286415b0ca3950fbe066350d7af327de69357e11463a5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0CA82A5C-DD2C-4FD7-82AD-92C11322CBAA/libusbmuxd.xcframework.zip", checksum: "099ba1cde8e34742e599979a5bcac47b6fcea58b79c279674a9c2e0e77a3f1ec"),
    ]
)

