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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A4F2DCFF-8651-4306-B3F4-82AA51C6AD53/libimobiledevice.xcframework.zip", checksum: "ff62cf5a544700b608e72ae3c23a6f22521e8bc3c80bdc47acfae0836b1f9dc3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A4F2DCFF-8651-4306-B3F4-82AA51C6AD53/libimobiledevice_glue.xcframework.zip", checksum: "df5f6f6680601128da1c06d37f024cd409dd245cb305d25da662824587f9669e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A4F2DCFF-8651-4306-B3F4-82AA51C6AD53/libplist.xcframework.zip", checksum: "d8335a1a7bb3189cc537cb921dcd647b9b625e9925d704d85bfcf53ea3b33ae1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A4F2DCFF-8651-4306-B3F4-82AA51C6AD53/libtatsu.xcframework.zip", checksum: "0c6c48b65c8e8fbaf08b640b0567465a2daeec5a98458ff7d25eac3185dc6797"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A4F2DCFF-8651-4306-B3F4-82AA51C6AD53/libusbmuxd.xcframework.zip", checksum: "7b62175828630884ba6eff8dc1a8b8b057272b0408d692cab226910b58d63471"),
    ]
)

