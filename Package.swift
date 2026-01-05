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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0C20D306-CAE8-4451-B402-64A02B4AA2F3/libimobiledevice.xcframework.zip", checksum: "2b17379d2c63aac75a45c05742f165fff4d0d854c413a07bb134110a43a62e48"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0C20D306-CAE8-4451-B402-64A02B4AA2F3/libimobiledevice_glue.xcframework.zip", checksum: "7be590d3610a2c8df5977a7c1044a9e5dddd627cae6117f4631c6cb6048f15b7"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0C20D306-CAE8-4451-B402-64A02B4AA2F3/libplist.xcframework.zip", checksum: "c2fb5d3040c323a0ca6e90c415407aaa546a540a200a2afa6222c2a324b095d5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0C20D306-CAE8-4451-B402-64A02B4AA2F3/libtatsu.xcframework.zip", checksum: "0411f3f01d11981ac2adbec7ccf79e294b093dff1ed80bc584f11126c847ffb3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0C20D306-CAE8-4451-B402-64A02B4AA2F3/libusbmuxd.xcframework.zip", checksum: "fa9dd74210209c125fa3248274f220c7d5a0ba9faf67d5ad43500ee8c51b0a2a"),
    ]
)

