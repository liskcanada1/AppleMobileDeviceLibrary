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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1B320503-DE45-4302-AA33-0D340E92ABA1/libimobiledevice.xcframework.zip", checksum: "f102fe068f3dd4daeb973863a19e872ae309011539b8e56c16b36e998869afe4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1B320503-DE45-4302-AA33-0D340E92ABA1/libimobiledevice_glue.xcframework.zip", checksum: "ab62706206fdaa8dd4c9088372604138543e3d97326c430449b65afbd66d1ea3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1B320503-DE45-4302-AA33-0D340E92ABA1/libplist.xcframework.zip", checksum: "1f592a2aa6a471c16ca20726f6a093705239d0ce87941e99b1faedffb5e9ccfd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1B320503-DE45-4302-AA33-0D340E92ABA1/libtatsu.xcframework.zip", checksum: "caec62b1794dc4b7ab968ca4334c8600b3afa76d70aec7527cfdca03507d9717"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1B320503-DE45-4302-AA33-0D340E92ABA1/libusbmuxd.xcframework.zip", checksum: "8d8de2fb3683234cfd3ed3057b7cc99e29bb984766d5644606dc2b14a8293976"),
    ]
)

