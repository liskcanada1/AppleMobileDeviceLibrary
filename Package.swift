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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7EEE5DDD-4217-4F47-9930-176E945D0F2C/libimobiledevice.xcframework.zip", checksum: "f824ada6f7c0d70397b592c76ffebd37ae64cce571981d2e94bbc970b3d1d32b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7EEE5DDD-4217-4F47-9930-176E945D0F2C/libimobiledevice_glue.xcframework.zip", checksum: "172f4789eb3996f953919d270227869bba3973d3c1fe7dbd9a847add6093fb0d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7EEE5DDD-4217-4F47-9930-176E945D0F2C/libplist.xcframework.zip", checksum: "2f20ba78f485377c639e037e6f1f331932e2bbc9390642e4bb42f7d2c3ad9c50"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7EEE5DDD-4217-4F47-9930-176E945D0F2C/libtatsu.xcframework.zip", checksum: "5f9e97d624a7dae99a9ac6b1755efe805c68d65effe61438871a00e5f922f1aa"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7EEE5DDD-4217-4F47-9930-176E945D0F2C/libusbmuxd.xcframework.zip", checksum: "b36d58f21bda8d39fcf4665dbc75c590c471bef55916ac5a1996b1da080adfd9"),
    ]
)

