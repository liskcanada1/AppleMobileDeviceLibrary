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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7FBDC310-DB80-4293-A9B7-656012823BAB/libimobiledevice.xcframework.zip", checksum: "d8945ef12b401e24b90d45c90018b036e4b885f66d14dc33f975bf029811bd33"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7FBDC310-DB80-4293-A9B7-656012823BAB/libimobiledevice_glue.xcframework.zip", checksum: "7cc3d457c5eb1ada7fcc84405a22be23c78a23c872360b827aa867701275e723"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7FBDC310-DB80-4293-A9B7-656012823BAB/libplist.xcframework.zip", checksum: "a953b99ef2a579e96b87836ccc4fa2e4ef8f52703828d5abc9e727aa4e73d256"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7FBDC310-DB80-4293-A9B7-656012823BAB/libtatsu.xcframework.zip", checksum: "068aeb3cad72a8008dc82eba38c6fa16889ffb8d375c26b315c6209ff629a1f8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7FBDC310-DB80-4293-A9B7-656012823BAB/libusbmuxd.xcframework.zip", checksum: "e7111ac2ab7b5ad8bb3c1a42398667eb4f46b405c49da9d220022ae9789cdd99"),
    ]
)

