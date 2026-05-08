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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.90863339-D48A-4A06-9AC0-DA68CC2D23B2/libimobiledevice.xcframework.zip", checksum: "a3b342a0133f091bb935da3fbc999a68aef889478bc37ac0aeb91ed4aaff51de"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.90863339-D48A-4A06-9AC0-DA68CC2D23B2/libimobiledevice_glue.xcframework.zip", checksum: "2c17bbc987713dc9fb7c53d6479e24785d4302136074ffcf55c5978572f21e35"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.90863339-D48A-4A06-9AC0-DA68CC2D23B2/libplist.xcframework.zip", checksum: "0fa8c4fc9e4abcbb0741a44e187ea91a36ca779d78e0dc8916b9c1a8a4680511"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.90863339-D48A-4A06-9AC0-DA68CC2D23B2/libtatsu.xcframework.zip", checksum: "ba7d41cb68a5d56c0efd1e7db35d032f3ba725a9a2b5b1c1846ff8dae721a442"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.90863339-D48A-4A06-9AC0-DA68CC2D23B2/libusbmuxd.xcframework.zip", checksum: "a9c2008a666226f1f9b04eac23bce02e2fa36ae6c27e3cc7cbcaf41d692ddc77"),
    ]
)

