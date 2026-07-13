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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FEA660A4-CEA6-42C6-84AE-E75000ACE7B9/libimobiledevice.xcframework.zip", checksum: "fed492999aeefbc822b4c3eca0396ddd4e523987fcce90704d92e73bbb8f0798"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FEA660A4-CEA6-42C6-84AE-E75000ACE7B9/libimobiledevice_glue.xcframework.zip", checksum: "414b247e9d40c81a4f731d1aa3d31abdf7ca40f082b16fc96568f90487e00f57"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FEA660A4-CEA6-42C6-84AE-E75000ACE7B9/libplist.xcframework.zip", checksum: "d0a375f55820c3174e7ac81e341c3b5f46a4e5780c2ff9a1dc01c42bf3b2eb21"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FEA660A4-CEA6-42C6-84AE-E75000ACE7B9/libtatsu.xcframework.zip", checksum: "54b943ac46a7cea77db7a0ba649c15ad7f0a897c9eb5cc7fa86eeefbfd6cc51d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FEA660A4-CEA6-42C6-84AE-E75000ACE7B9/libusbmuxd.xcframework.zip", checksum: "6a18f7c98205803f6d1e6ef6e9b7e66d512ced4ebd0f708af6758177db1ec746"),
    ]
)

