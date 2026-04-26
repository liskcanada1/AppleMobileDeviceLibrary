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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.160BDC2F-29E6-474E-AA22-B72EDA543966/libimobiledevice.xcframework.zip", checksum: "67c9acb14a34ff56b3f2c86ca061e0d03e62c7a6d793cc8dcf88d19276e44399"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.160BDC2F-29E6-474E-AA22-B72EDA543966/libimobiledevice_glue.xcframework.zip", checksum: "f51e33d1faf3632ec6c393b1b393d65a7431c36c862c69f814ed578aaca028ec"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.160BDC2F-29E6-474E-AA22-B72EDA543966/libplist.xcframework.zip", checksum: "0cf5bf6565e769f950a25ab73f20a3ebfc096b0ec59ada97c5a1ab2e26dbe2e7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.160BDC2F-29E6-474E-AA22-B72EDA543966/libtatsu.xcframework.zip", checksum: "313cd67608ef51499a9add8ff06217fd7a5dab84b07424aef814cce55ded9650"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.160BDC2F-29E6-474E-AA22-B72EDA543966/libusbmuxd.xcframework.zip", checksum: "0a36b6e0f5778287e3710022eefbcde7acc912cae42443be0b7776f73a14e94e"),
    ]
)

