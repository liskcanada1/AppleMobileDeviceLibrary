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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC8E2C1F-1022-442D-96B9-609DD8A7F9C2/libimobiledevice.xcframework.zip", checksum: "fa1d7d66efdf1ec42e1116a4906414a5c4bebca4fce522e4b6d4115e64ecf33f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC8E2C1F-1022-442D-96B9-609DD8A7F9C2/libimobiledevice_glue.xcframework.zip", checksum: "56e2fd9ec6f16bb3dc347cc894facb8f140cc4fae1421097e885182eea69eddd"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC8E2C1F-1022-442D-96B9-609DD8A7F9C2/libplist.xcframework.zip", checksum: "ade293f20c12cd37d7d6e077895890bb921990642feb986d4264a5018e5ccbc5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC8E2C1F-1022-442D-96B9-609DD8A7F9C2/libtatsu.xcframework.zip", checksum: "1097a99ef0f7cb70696240e1f4c8f45f90ca3186bd115564d52c4498d3d9e2d3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC8E2C1F-1022-442D-96B9-609DD8A7F9C2/libusbmuxd.xcframework.zip", checksum: "9e187bacd6c7061446d013caeb751b38510725dd13e02d0774a7a34818490a3a"),
    ]
)

