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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DA935CC9-09B5-4137-B258-A25007CC8A63/libimobiledevice.xcframework.zip", checksum: "02f6d7de8bdfcd518f9ba19361512be51a183ef5f825433ae64571478babf790"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DA935CC9-09B5-4137-B258-A25007CC8A63/libimobiledevice_glue.xcframework.zip", checksum: "fd224b7c219d247edb800c0f692767782aee8242edabbf6fab8df627cb24337d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DA935CC9-09B5-4137-B258-A25007CC8A63/libplist.xcframework.zip", checksum: "66ef4fac5c6de66a8143cb92c95c0613cffee297af06a45061ac788d8e9a7bf5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DA935CC9-09B5-4137-B258-A25007CC8A63/libtatsu.xcframework.zip", checksum: "3a892a575bf13acaf0684cf8b51165e2f6686fe75ac6c49b7d546dd27f68247f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DA935CC9-09B5-4137-B258-A25007CC8A63/libusbmuxd.xcframework.zip", checksum: "fe7b953da6c2196de4cbf49d05c0e1f6d3c93b0bbbe1a462d56d629882335aa3"),
    ]
)

