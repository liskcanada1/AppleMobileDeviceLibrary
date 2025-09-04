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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8508094B-7083-47D9-AFDC-D4E677D05278/libimobiledevice.xcframework.zip", checksum: "b84c0552bd09f20c91f70b965c82a0572ed51cc56932fb3a99d81d0f21d34f6b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8508094B-7083-47D9-AFDC-D4E677D05278/libimobiledevice_glue.xcframework.zip", checksum: "35394c42cec8a272acc7aab167c764f07bd7274bf19ba5bd5b4938753ef55b41"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8508094B-7083-47D9-AFDC-D4E677D05278/libplist.xcframework.zip", checksum: "f30a6eb29a046f20753142286c657343815c28f8472c80caf653f8009481f5b1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8508094B-7083-47D9-AFDC-D4E677D05278/libtatsu.xcframework.zip", checksum: "7ed7c199a25a6e654d71b89bfb09347f969720048211a82e3c180ec557ceff4b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8508094B-7083-47D9-AFDC-D4E677D05278/libusbmuxd.xcframework.zip", checksum: "7e3091dcd2b078df961060dcf86d1eadff6f66fbced104d45032afc979690a76"),
    ]
)

