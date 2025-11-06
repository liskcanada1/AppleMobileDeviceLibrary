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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2990FD4E-F515-4CF4-8C9C-C3390D902421/libimobiledevice.xcframework.zip", checksum: "80ac6bc57af7a7dd6fbc4197587eb8387d7a733a121f0c54e0c3ad4d92113c46"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2990FD4E-F515-4CF4-8C9C-C3390D902421/libimobiledevice_glue.xcframework.zip", checksum: "692fe9fa5ac5e9405337dbb1312bc9cf1385bf1a817b5779f744431ab1e37664"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2990FD4E-F515-4CF4-8C9C-C3390D902421/libplist.xcframework.zip", checksum: "204ffc696b9f9175a13ea7e6946255b137925e0e1a7dc054ccd615b17a618e1e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2990FD4E-F515-4CF4-8C9C-C3390D902421/libtatsu.xcframework.zip", checksum: "9ff4797115e1f640fef35ca63e33222698996c2bd4bc5e5e4d6bc78eb9ace6eb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2990FD4E-F515-4CF4-8C9C-C3390D902421/libusbmuxd.xcframework.zip", checksum: "8b0e8c918bc32d33136b7f496096fd92a5ae561d48bdbcffdc44a70af5dec2b3"),
    ]
)

