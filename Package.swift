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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8688B29A-5807-4D63-88E8-5A571C7F5857/libimobiledevice.xcframework.zip", checksum: "d9b28a5681f4e3fae902ceb15e016df7aa1ac5f32ce1ec878ae7df68ae8cfea3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8688B29A-5807-4D63-88E8-5A571C7F5857/libimobiledevice_glue.xcframework.zip", checksum: "3e9b0e609430b5987d3e9ebfcc53be2ba25555b7d48b9f553e46cba9341d84f8"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8688B29A-5807-4D63-88E8-5A571C7F5857/libplist.xcframework.zip", checksum: "43a0921fdbbd8514f0b6bc66000a969d3e3ec8a1f65a9c4fe932583fdda19939"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8688B29A-5807-4D63-88E8-5A571C7F5857/libtatsu.xcframework.zip", checksum: "2159f2290edc71d8d97533334349443ccb4f420152e942f9fe078bdaa13b224c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8688B29A-5807-4D63-88E8-5A571C7F5857/libusbmuxd.xcframework.zip", checksum: "cbc99ce88eba9795ffdeb46e9f485961310e277eca26fc553366c356db4f82bc"),
    ]
)

