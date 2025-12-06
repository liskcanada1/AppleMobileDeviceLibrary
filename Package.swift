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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5B051C28-DE23-469F-8987-B91448F60920/libimobiledevice.xcframework.zip", checksum: "0bc3f856da6e828ffb02cd02a4b684911675dc1dee0354a3bd2190f6e38e387c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5B051C28-DE23-469F-8987-B91448F60920/libimobiledevice_glue.xcframework.zip", checksum: "cea8d0ef949f84642cb6f78669fbef4ffb0aa6c4ac058557e489016691fd06dd"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5B051C28-DE23-469F-8987-B91448F60920/libplist.xcframework.zip", checksum: "c21b7723f7fb0f1fd32bac1f737321034bb7d080d5c9a7aa7083a4ab7026b76d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5B051C28-DE23-469F-8987-B91448F60920/libtatsu.xcframework.zip", checksum: "bf719f36e727a7e631882b8fe0d8ed7c9512c284274dbd4917b535ddb8467a78"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5B051C28-DE23-469F-8987-B91448F60920/libusbmuxd.xcframework.zip", checksum: "b84880bef23868f227da6bfed086efe662aacbfada7b30006eedfe27c7c78b98"),
    ]
)

