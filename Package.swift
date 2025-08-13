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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDDA27EC-7178-4AEB-ABA7-D368375C0356/libimobiledevice.xcframework.zip", checksum: "8da40be2099cd453de9a5f0ab7df66a2b552c8426c0e5e8bb792a4e415d20bdc"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDDA27EC-7178-4AEB-ABA7-D368375C0356/libimobiledevice_glue.xcframework.zip", checksum: "1751a3a2e8618d9bc1c52914458b96dadd25b981fc1a9f2de5720ad5ac4a0346"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDDA27EC-7178-4AEB-ABA7-D368375C0356/libplist.xcframework.zip", checksum: "68730f759a8bbc04eeb05d1b0c73d061e487fed568f3e96aee9a39609897ab57"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDDA27EC-7178-4AEB-ABA7-D368375C0356/libtatsu.xcframework.zip", checksum: "60646021e8d361537ac5f4a597623ba19b13822ac1e6a346e8b0b87b70cacc3a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDDA27EC-7178-4AEB-ABA7-D368375C0356/libusbmuxd.xcframework.zip", checksum: "6b0056d67da71263f1d2e9fd7c149f7dd21e52e0171c6537eda4a7c4e26ce407"),
    ]
)

