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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5668DE25-34F9-49D5-B347-99ABE2B76B91/libimobiledevice.xcframework.zip", checksum: "da5bbcc7326461dc3ca04e6308c9c63e27365f9a3a6974663fba4e40ebedb3c0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5668DE25-34F9-49D5-B347-99ABE2B76B91/libimobiledevice_glue.xcframework.zip", checksum: "af57896bf9005aeb643d7a5db3f3b43e70585c1f950458b6d495c85475f9c846"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5668DE25-34F9-49D5-B347-99ABE2B76B91/libplist.xcframework.zip", checksum: "1a1b230c103a817ce93ed27c45ca912ee2b7e169d2bbe8a748372dec01a31cff"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5668DE25-34F9-49D5-B347-99ABE2B76B91/libtatsu.xcframework.zip", checksum: "7350ba3a0561c97236807e94afa8b78c73633ff4c6890b51bf72cce943bdb35b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5668DE25-34F9-49D5-B347-99ABE2B76B91/libusbmuxd.xcframework.zip", checksum: "29af53dad90441ef1e974c5e2e821e2c28d190a1f7b14f5d9fcd907d3cb8feca"),
    ]
)

