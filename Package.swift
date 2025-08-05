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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E99C6454-FA6D-4E84-8BD0-16E30F38EB53/libimobiledevice.xcframework.zip", checksum: "7c41f0792d26f61faa91b182b3c9d1694fcffe7ba1e3d0ed402ae722ff7b3c57"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E99C6454-FA6D-4E84-8BD0-16E30F38EB53/libimobiledevice_glue.xcframework.zip", checksum: "217c1e9c59c8e694bf90d8cd5685db224df4108644623ede5f5f93bd18f8b2d3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E99C6454-FA6D-4E84-8BD0-16E30F38EB53/libplist.xcframework.zip", checksum: "875937cc9ed5ef0beef062402111174ba557e79cd9bfb5a9fccadb48ae5a0bf0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E99C6454-FA6D-4E84-8BD0-16E30F38EB53/libtatsu.xcframework.zip", checksum: "fac4e68da6440467489433abd6a63dffebe764ddb02b76490b413646dd77bbea"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E99C6454-FA6D-4E84-8BD0-16E30F38EB53/libusbmuxd.xcframework.zip", checksum: "b5f8d33c1b55fc037f1681adbe0847737d0a713f8e889be2712b6f85b90ab9f7"),
    ]
)

