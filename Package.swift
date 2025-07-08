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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2ED82E08-ADA9-487B-8D8D-545F36102191/libimobiledevice.xcframework.zip", checksum: "228a8bcf78a70a543c657a7d1ba05e58e11b02ab2d1b5dfb72d86f898b9c5fb8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2ED82E08-ADA9-487B-8D8D-545F36102191/libimobiledevice_glue.xcframework.zip", checksum: "2d8955c2cc94648f32f5829ffd282cb340dbc9d94254cdfdf1ac2e0ef04c3fc3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2ED82E08-ADA9-487B-8D8D-545F36102191/libplist.xcframework.zip", checksum: "64df4bc3f211319798025df5db92ea3c70882a33be5060bc4bce7f669febd881"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2ED82E08-ADA9-487B-8D8D-545F36102191/libtatsu.xcframework.zip", checksum: "58b7a649d68061e14311edcdedd098a0efaaab8c27f57a9c01614894da61f727"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2ED82E08-ADA9-487B-8D8D-545F36102191/libusbmuxd.xcframework.zip", checksum: "45b70674220e571e7cfa434a30d08e694584c31430e79d4a587b14810d46b43c"),
    ]
)

