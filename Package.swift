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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.60034383-E8B7-449D-8CC7-36D17C5B8896/libimobiledevice.xcframework.zip", checksum: "600c6727b24502ea6be2dca146ab0094e760ee9c5dcdce61c5ea572748f3be0b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.60034383-E8B7-449D-8CC7-36D17C5B8896/libimobiledevice_glue.xcframework.zip", checksum: "f7634dc5a9e79f3018ef11776465840afe1b958d725fc18eb2b6919da15e1c5c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.60034383-E8B7-449D-8CC7-36D17C5B8896/libplist.xcframework.zip", checksum: "78647d3df348296327ada35061b288655f8401f3e9d628b979bc0413ba1d8167"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.60034383-E8B7-449D-8CC7-36D17C5B8896/libtatsu.xcframework.zip", checksum: "cb06cbc0ccadbef46c2a5edf43d42d082fe4f915387ef91a902d826dc09eaaf7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.60034383-E8B7-449D-8CC7-36D17C5B8896/libusbmuxd.xcframework.zip", checksum: "7fed7f37405565ef382dbc1664cecb5a18778c41ac42e826007378770ef22445"),
    ]
)

