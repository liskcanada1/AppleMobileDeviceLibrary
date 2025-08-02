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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7379812B-FF64-4D73-A810-D8282313E1A3/libimobiledevice.xcframework.zip", checksum: "ce3469899272f285d1c453b745415fd52af1980c60ce09c3ea6a1670222428f5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7379812B-FF64-4D73-A810-D8282313E1A3/libimobiledevice_glue.xcframework.zip", checksum: "3167d1913ce420c4285c3d30cf322b8afaf00e97a9b52943109523dd2e0894d3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7379812B-FF64-4D73-A810-D8282313E1A3/libplist.xcframework.zip", checksum: "650761940ccee789d9c9bc334b35b1effc0ed30ca90f3640c4f1d4213946e793"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7379812B-FF64-4D73-A810-D8282313E1A3/libtatsu.xcframework.zip", checksum: "8d7d2fbb1704cb3254aed038461642d6645abfe5bcc0b8235eba1aa9b739d023"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7379812B-FF64-4D73-A810-D8282313E1A3/libusbmuxd.xcframework.zip", checksum: "561b9fd3eb7746ac20d49870c03e8f6e7938fc62af248435d539da3b039e4860"),
    ]
)

