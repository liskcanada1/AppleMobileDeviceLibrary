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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F3E78F96-6514-45CA-B6F9-A6A4ABC46359/libimobiledevice.xcframework.zip", checksum: "c74077fce978d105deed58ad56bf4a97fb83f08cea1e6e534998289a417f626b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F3E78F96-6514-45CA-B6F9-A6A4ABC46359/libimobiledevice_glue.xcframework.zip", checksum: "312272c7c6bbe3f3d82910ca92277be78167b3418b8a75ab004c7c7b5b70cb4c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F3E78F96-6514-45CA-B6F9-A6A4ABC46359/libplist.xcframework.zip", checksum: "824484cd8c036bb50253dab3810964651c8930a62a8772c1cc1c32b195534d17"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F3E78F96-6514-45CA-B6F9-A6A4ABC46359/libtatsu.xcframework.zip", checksum: "3c43dbc1226e3220ef4afa9ff5be5195fef768c6a10ff178341368e03532176a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F3E78F96-6514-45CA-B6F9-A6A4ABC46359/libusbmuxd.xcframework.zip", checksum: "962f97cca0025a448298d0647012e0e6adb376676b779e045d51881d80fe58f6"),
    ]
)

