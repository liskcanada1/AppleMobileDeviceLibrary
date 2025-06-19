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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8C7E9E27-5C9C-49E4-9907-F150D8779DB5/libimobiledevice.xcframework.zip", checksum: "596bbac8916def58501f73ef1da481bfeb01f2393abbd585e9b448e6c2cd0e6a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8C7E9E27-5C9C-49E4-9907-F150D8779DB5/libimobiledevice_glue.xcframework.zip", checksum: "6e08975f79aafba268208164a1a76b1904f51212766d691369439677897a5967"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8C7E9E27-5C9C-49E4-9907-F150D8779DB5/libplist.xcframework.zip", checksum: "c512be7156736c56a58f4a8ddd47758baa9db434de66b47f16535942b94d4994"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8C7E9E27-5C9C-49E4-9907-F150D8779DB5/libtatsu.xcframework.zip", checksum: "c5abf8384edf6239f83ba22e64918b8ddcc53669511e5a2b455909e88a3d8a5d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8C7E9E27-5C9C-49E4-9907-F150D8779DB5/libusbmuxd.xcframework.zip", checksum: "ea940c8468ed3086499c98711cbd6715ecf31bcda28886cd15a2c248de3c9de9"),
    ]
)

