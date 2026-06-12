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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.795C4706-3B88-4FC1-9410-D12FE94A6A49/libimobiledevice.xcframework.zip", checksum: "594416b6b4338674ba8ad2616e00a503afa0e064eaa650a0121975fddef58f4e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.795C4706-3B88-4FC1-9410-D12FE94A6A49/libimobiledevice_glue.xcframework.zip", checksum: "a098a22a5d82ba8b348ea048ae5be5b3bfb87ab4d05e48f6d8dc90a630539099"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.795C4706-3B88-4FC1-9410-D12FE94A6A49/libplist.xcframework.zip", checksum: "29b107e6382de3844080571bfda6ea5aebc17a57e6e11a046011ff90c37fdb1a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.795C4706-3B88-4FC1-9410-D12FE94A6A49/libtatsu.xcframework.zip", checksum: "8b62af1d0ef22d005740243c5fb8df84bd73f555d0fb2133cacaf91cb0df555f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.795C4706-3B88-4FC1-9410-D12FE94A6A49/libusbmuxd.xcframework.zip", checksum: "a9b712ea765d579c524dcb9d6198e87cd89a5c3a57d69ff05d03bd63bac07deb"),
    ]
)

