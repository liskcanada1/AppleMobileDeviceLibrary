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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1A79AB5A-608C-4F28-B8D2-0AF0E177A2E9/libimobiledevice.xcframework.zip", checksum: "d26c3f3e02a29e5a30cc784ad3600c71cfccf723410c08e91384608edad77be7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1A79AB5A-608C-4F28-B8D2-0AF0E177A2E9/libimobiledevice_glue.xcframework.zip", checksum: "f6f6d26d69e0feb393f7a9eb2193e8934bcaaf942aa82549beeb9e5392e06bbc"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1A79AB5A-608C-4F28-B8D2-0AF0E177A2E9/libplist.xcframework.zip", checksum: "28fcbe8df8132e3c32e49822be4edac2dab3e3bf982700b3bc5043c4d5f52e36"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1A79AB5A-608C-4F28-B8D2-0AF0E177A2E9/libtatsu.xcframework.zip", checksum: "abcda6b392dec13a742c7a7f7fea4075f0504e87c192a86312d041d9bed6ef12"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1A79AB5A-608C-4F28-B8D2-0AF0E177A2E9/libusbmuxd.xcframework.zip", checksum: "c063173695fc244694122079de179f873981255cd7cd4d1764c34df4d394f3bb"),
    ]
)

