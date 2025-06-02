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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3B7F7F04-5E6D-44CB-BB2B-7B8EB98137B6/libimobiledevice.xcframework.zip", checksum: "9278b8c18793d8a99b7b326bbf1ef6a6b09bdc2b071b7b000d671772a7f132a1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3B7F7F04-5E6D-44CB-BB2B-7B8EB98137B6/libimobiledevice_glue.xcframework.zip", checksum: "cf0d5b71f52570f9cd42151ac53b3440145df7b449fb290ef58656ca4bd0bd79"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3B7F7F04-5E6D-44CB-BB2B-7B8EB98137B6/libplist.xcframework.zip", checksum: "d21dd2ff826e9fa09658cca6012bca6edbe949b303f3dc858b8279633196a864"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3B7F7F04-5E6D-44CB-BB2B-7B8EB98137B6/libtatsu.xcframework.zip", checksum: "41232a61fab102868675eaa8819de9c97b8724f5725871d65a0d05eea6c949db"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3B7F7F04-5E6D-44CB-BB2B-7B8EB98137B6/libusbmuxd.xcframework.zip", checksum: "2b5b93d1468f8ad1df234b04654f25b15fa324c6f28aea3b4c24d1f7f7687c4d"),
    ]
)

