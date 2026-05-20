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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.97A51B16-ED0C-4E21-94A0-13F8138C4ADA/libimobiledevice.xcframework.zip", checksum: "3c84e02bfe1b882df4b18a9643d5abcc2b470d77b64659a924b4add78b2e818a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.97A51B16-ED0C-4E21-94A0-13F8138C4ADA/libimobiledevice_glue.xcframework.zip", checksum: "1d34dd82a1fb6e4c84376cee6c9b3f2274b948ecec36b9180642c5e3380b49aa"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.97A51B16-ED0C-4E21-94A0-13F8138C4ADA/libplist.xcframework.zip", checksum: "1798b30c5e984744d7e88912637693ee06dfec1fbf1a83188e30c3e8c16df0af"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.97A51B16-ED0C-4E21-94A0-13F8138C4ADA/libtatsu.xcframework.zip", checksum: "104035ff49a092521fb12bdf1525a137a625e829d377de696fe40552358dc8fd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.97A51B16-ED0C-4E21-94A0-13F8138C4ADA/libusbmuxd.xcframework.zip", checksum: "1be70cc5f2605b0cf39ed531db1cd53985f46e785dc3663cbfb9d8ebe4d188ac"),
    ]
)

