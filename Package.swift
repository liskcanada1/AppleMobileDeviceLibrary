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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7F84BF9B-C671-4C73-8311-E9E953F3A169/libimobiledevice.xcframework.zip", checksum: "1f1c425d9070cedb141efc332160f3d84bc896e5a2d645d02184ea28cdae8760"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7F84BF9B-C671-4C73-8311-E9E953F3A169/libimobiledevice_glue.xcframework.zip", checksum: "97d0d59e87967607815501387f648a00739561a78992c6bf3033a890271df629"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7F84BF9B-C671-4C73-8311-E9E953F3A169/libplist.xcframework.zip", checksum: "2c016fc688971f81b6cdfe7cbcc0730ba2a67b305ab481eddd6a1f43d6917c98"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7F84BF9B-C671-4C73-8311-E9E953F3A169/libtatsu.xcframework.zip", checksum: "e4c56bfb78daece127e1ee493d3b6e91d8fda9453bc4b6ede499b6ec62bea492"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7F84BF9B-C671-4C73-8311-E9E953F3A169/libusbmuxd.xcframework.zip", checksum: "41592151141e9c7300504ef10c3aac482a8c011e459e106675a941f9075c3b82"),
    ]
)

