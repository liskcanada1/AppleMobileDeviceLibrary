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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D61F0081-9C44-45D5-B78B-4A1A1B46ACAE/libimobiledevice.xcframework.zip", checksum: "ae7132763d3ab02f54772d6cfb06cb8357fa7fede23254395cff2b28fc87c512"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D61F0081-9C44-45D5-B78B-4A1A1B46ACAE/libimobiledevice_glue.xcframework.zip", checksum: "6b9cf2320f5622b11f2a9666c64911869a46f9d29f306497391bdb29a3b2aa6c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D61F0081-9C44-45D5-B78B-4A1A1B46ACAE/libplist.xcframework.zip", checksum: "9e96dc25d58ed4b3784cba0a72b38dfe74fa45ac93a85465d1217632d830695a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D61F0081-9C44-45D5-B78B-4A1A1B46ACAE/libtatsu.xcframework.zip", checksum: "ef5385609a736f06bde829fbab9a4f04a89a2a07e55117d587090132b08e370a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D61F0081-9C44-45D5-B78B-4A1A1B46ACAE/libusbmuxd.xcframework.zip", checksum: "dd2bb8ce9763192fbfa1e5a04501ec2d803c3f7393dad427bc7b03cfe9a90e8d"),
    ]
)

