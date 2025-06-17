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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DF2394B4-FE0F-4B45-97EA-14E83E2F524F/libimobiledevice.xcframework.zip", checksum: "3bc150991bb67542c18797b2937baa05409f4c669061a1390b2299e18752f6bd"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DF2394B4-FE0F-4B45-97EA-14E83E2F524F/libimobiledevice_glue.xcframework.zip", checksum: "fc38e4e74ae2f089d3a7260b9fe8fc0552eabf352230641975e9e434bcf0062c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DF2394B4-FE0F-4B45-97EA-14E83E2F524F/libplist.xcframework.zip", checksum: "4296d1fe381599962d63ffa4845d6beae87792cee00ff30637ea4f3a81233b68"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DF2394B4-FE0F-4B45-97EA-14E83E2F524F/libtatsu.xcframework.zip", checksum: "d76aa6881b3d7b689f8e7951083163b85e9526962f7da9fc37332d42dbce8103"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DF2394B4-FE0F-4B45-97EA-14E83E2F524F/libusbmuxd.xcframework.zip", checksum: "480e6acf6ce4af1bc92a582c48e40ce3d1e673d31b6450344439cfb707e734da"),
    ]
)

