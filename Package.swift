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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BFB4AEC1-8E1D-4AB8-B07A-CFC4A54185DD/libimobiledevice.xcframework.zip", checksum: "5ac74f2e7982296449eb50b5057536c3ffaef58b9d72e22c58b0332098f44adc"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BFB4AEC1-8E1D-4AB8-B07A-CFC4A54185DD/libimobiledevice_glue.xcframework.zip", checksum: "d841ba53463054616fdc7fe04a5838bbf3789d70acbbeedeccde59b1ac89d5f0"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BFB4AEC1-8E1D-4AB8-B07A-CFC4A54185DD/libplist.xcframework.zip", checksum: "7fa0b30d9dbed8e6d347ea6fe96e895a36d70718669c64a6e8af50f5beb36e66"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BFB4AEC1-8E1D-4AB8-B07A-CFC4A54185DD/libtatsu.xcframework.zip", checksum: "a037d360ba1f6e31b249746548031ce0e51f9f1870d03fb46aec8fd39e59dd36"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BFB4AEC1-8E1D-4AB8-B07A-CFC4A54185DD/libusbmuxd.xcframework.zip", checksum: "0ce39b558cf8af60d9a69d0a1d5bacf63a05125ab4cc7f84c1bb837652f93f6b"),
    ]
)

