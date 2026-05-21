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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E33AF30D-1D17-40D8-94D1-5A73A07871AA/libimobiledevice.xcframework.zip", checksum: "1ecb2efa6eda49a9a26877f54c8aba0ca60b2583722b23e7e2b2942c21b1cd4e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E33AF30D-1D17-40D8-94D1-5A73A07871AA/libimobiledevice_glue.xcframework.zip", checksum: "f08d2134d6601aa2a853a82fe2dda7181f6795d3e725d7b42259b2f01306149e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E33AF30D-1D17-40D8-94D1-5A73A07871AA/libplist.xcframework.zip", checksum: "e7960ea68e02d1589828a90c4d024e54136b508a87077949c33a11d8d8bf4e6c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E33AF30D-1D17-40D8-94D1-5A73A07871AA/libtatsu.xcframework.zip", checksum: "8e95cfd67c43120fcc4c3bb5e8e78e7897d1aba263370ee8ff77c5e14f4c30e0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E33AF30D-1D17-40D8-94D1-5A73A07871AA/libusbmuxd.xcframework.zip", checksum: "909c716219afed1a45b52552484ebfe0230a8b53eaf183992ae07c6d4a69e361"),
    ]
)

