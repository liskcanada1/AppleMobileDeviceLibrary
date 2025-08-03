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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.09203037-8EF3-4F8A-B6D1-324AA16C3173/libimobiledevice.xcframework.zip", checksum: "ed4b44228e6196920484da210e753bf650f00ce4938145a99eb292a85e3d93b0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.09203037-8EF3-4F8A-B6D1-324AA16C3173/libimobiledevice_glue.xcframework.zip", checksum: "37ec1a406911f661aba2cac1a9769203aac1e9e0519e001e94b9492142f8f942"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.09203037-8EF3-4F8A-B6D1-324AA16C3173/libplist.xcframework.zip", checksum: "920c208b7659595d05a83dc3140f3c220f06285acc1972de931a6a22ca4a52d3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.09203037-8EF3-4F8A-B6D1-324AA16C3173/libtatsu.xcframework.zip", checksum: "cf75e12413ff470bfdf3e7b16c5866a298985c06e4507c11cf37071042912485"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.09203037-8EF3-4F8A-B6D1-324AA16C3173/libusbmuxd.xcframework.zip", checksum: "1435e8cb7ef4946eeecb221178fbf9e1f785ad374e9e7deaa1466057161f102b"),
    ]
)

