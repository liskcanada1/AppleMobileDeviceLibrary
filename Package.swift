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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35FC3476-DC91-445F-9A7D-FB160D556F1D/libimobiledevice.xcframework.zip", checksum: "aec6f1d592dc335627bfd006626c2828829f8170db8236b31202625371f9e591"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35FC3476-DC91-445F-9A7D-FB160D556F1D/libimobiledevice_glue.xcframework.zip", checksum: "7e3267b3bd909c7f45a64064a26e9e7edc868fb45c4c2b8be0e91fcb39378705"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35FC3476-DC91-445F-9A7D-FB160D556F1D/libplist.xcframework.zip", checksum: "7b12b0002e8f7c2188163d6c83d5c68c5cd15de3106b3f0786a7b70447bf7d05"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35FC3476-DC91-445F-9A7D-FB160D556F1D/libtatsu.xcframework.zip", checksum: "84a3304e89b3063379aefc45348e6d442f50d6cd1344b4c32a326c5004451497"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35FC3476-DC91-445F-9A7D-FB160D556F1D/libusbmuxd.xcframework.zip", checksum: "c834d34f2ca33611a0f90cb9acc3af71daacc815519e36fe4907a78dc6b0f459"),
    ]
)

