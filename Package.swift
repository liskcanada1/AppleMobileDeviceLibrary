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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CF42AEB8-AFF4-4D95-9DF4-0B122F518567/libimobiledevice.xcframework.zip", checksum: "d42c5806e2b2a251bbb058241c242b0e8318c32ddde23263aee77300f44e9926"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CF42AEB8-AFF4-4D95-9DF4-0B122F518567/libimobiledevice_glue.xcframework.zip", checksum: "6041ef9e884dd86b09cd7dbfcee570e425ca20e9374e7e8537c5816ce25e47f8"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CF42AEB8-AFF4-4D95-9DF4-0B122F518567/libplist.xcframework.zip", checksum: "2fd3f50e695e9f5298970d8111179fc1fdf5498a15ff385cab8f6c65044a4c97"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CF42AEB8-AFF4-4D95-9DF4-0B122F518567/libtatsu.xcframework.zip", checksum: "a4be003bd347fd13c5910ff67d63853ce3b10f674d202313a6b9133b6ab6aae7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CF42AEB8-AFF4-4D95-9DF4-0B122F518567/libusbmuxd.xcframework.zip", checksum: "b1bfba80c229d938f271901439b3f75a795a6b35431c6326634390ac787b323b"),
    ]
)

