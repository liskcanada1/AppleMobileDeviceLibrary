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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B4F0CCB1-D97C-415E-B18F-EE51929F525C/libimobiledevice.xcframework.zip", checksum: "5ef936306bea496521128b5cc47c23d55a68cb94f1312cf8958fffb6f07ff468"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B4F0CCB1-D97C-415E-B18F-EE51929F525C/libimobiledevice_glue.xcframework.zip", checksum: "5c4f6dbef101cc4dade8fe62c4c54809b15390c9a5f96244bcdbdfefaa46f5bb"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B4F0CCB1-D97C-415E-B18F-EE51929F525C/libplist.xcframework.zip", checksum: "7bd8d95229891a466a967e39c3f8d2530c0fffbc8fb28a23dbe5cd45f34fd44e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B4F0CCB1-D97C-415E-B18F-EE51929F525C/libtatsu.xcframework.zip", checksum: "d53d0df74fe6a55e844b9753d85a29263e83c116607917848285987e377630f4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B4F0CCB1-D97C-415E-B18F-EE51929F525C/libusbmuxd.xcframework.zip", checksum: "1bb779563c5926c12d3f0585b91d25b3a729c3aa5c2d5c27b375c9e695b8c8a1"),
    ]
)

