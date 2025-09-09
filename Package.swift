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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8F9AC397-CB6C-4561-B2E3-77E142B25111/libimobiledevice.xcframework.zip", checksum: "82aa63ad5f17d46d40de24e18e9808401ab75c4bc8ccb4fbfcc6ee3e64b115fa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8F9AC397-CB6C-4561-B2E3-77E142B25111/libimobiledevice_glue.xcframework.zip", checksum: "e4984bfbef3c7e11f8d294b4cc7b0e4bbaa145d075c1430e2030143f5e7de272"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8F9AC397-CB6C-4561-B2E3-77E142B25111/libplist.xcframework.zip", checksum: "349bb3332f2a152093fc1766cb191755bcd313c77fdfe6724a8dc8e1e630b505"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8F9AC397-CB6C-4561-B2E3-77E142B25111/libtatsu.xcframework.zip", checksum: "8c1275b651dd64c510c7c1ada17eddc26011b1c08e08323d3dbfeaea943b2820"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8F9AC397-CB6C-4561-B2E3-77E142B25111/libusbmuxd.xcframework.zip", checksum: "e46d2075f5829377053568c0eb14b8ceb5b362929780bc53e1484e25d1eca414"),
    ]
)

