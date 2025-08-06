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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.36903AE2-C5D0-481D-8591-EC05078A72CB/libimobiledevice.xcframework.zip", checksum: "1dabbad5a1b9e03a9e082d048b715d307890ac8ffb100f1b2204dda1c3b1fd2a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.36903AE2-C5D0-481D-8591-EC05078A72CB/libimobiledevice_glue.xcframework.zip", checksum: "16e96a14b0450d18f38257035c05df1cf42e2c7bdb56cb5566e74d1341a96e32"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.36903AE2-C5D0-481D-8591-EC05078A72CB/libplist.xcframework.zip", checksum: "b2a8093c735f34cad37bd903baf89c1adadbca93e0f802804967a2c4c9cd5f9b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.36903AE2-C5D0-481D-8591-EC05078A72CB/libtatsu.xcframework.zip", checksum: "e8737099c4b191bdffc7f52983f6c1e9c2f1b8145e4ce304aae2fb2548d6f3fb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.36903AE2-C5D0-481D-8591-EC05078A72CB/libusbmuxd.xcframework.zip", checksum: "699bbd7d01246704f38daa16ec6fecb240f37c6dde41f8fc2b21547fee67c58a"),
    ]
)

