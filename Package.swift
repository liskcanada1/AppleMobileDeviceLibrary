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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0D025747-8312-4008-851E-A4F3BE39D9AE/libimobiledevice.xcframework.zip", checksum: "a7f768993b735a3257644a477b2ae4eb3a898c9bca929f8e8d028b9792d222c6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0D025747-8312-4008-851E-A4F3BE39D9AE/libimobiledevice_glue.xcframework.zip", checksum: "0e54c688bb54eb9d31257937c0868f2132d2743e126f257aa1312fa3dc64d377"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0D025747-8312-4008-851E-A4F3BE39D9AE/libplist.xcframework.zip", checksum: "7dd6361c38af704b951f288555ffc1dec48313d778d755cdad42457358df1643"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0D025747-8312-4008-851E-A4F3BE39D9AE/libtatsu.xcframework.zip", checksum: "b2a0120e6323dc20afbb5d023cbacc1db4f97e486d69ee0c1c945c6855b7b067"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0D025747-8312-4008-851E-A4F3BE39D9AE/libusbmuxd.xcframework.zip", checksum: "4ce15f0ebed965e71f841eddd08697be3df560c7da12f4f8302d0b991bdf6e2e"),
    ]
)

