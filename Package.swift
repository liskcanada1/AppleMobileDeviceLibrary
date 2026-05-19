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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.440A5739-33A3-47AF-999F-4794BA8A2A92/libimobiledevice.xcframework.zip", checksum: "b62e842cf45451fe59796eb3cde8acaed848a555f934b8a3a8e688e928b3223d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.440A5739-33A3-47AF-999F-4794BA8A2A92/libimobiledevice_glue.xcframework.zip", checksum: "cfc52d58565a1e636255d726ded7df42fd651890965a4daf31b681532efb9a42"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.440A5739-33A3-47AF-999F-4794BA8A2A92/libplist.xcframework.zip", checksum: "1631425995c8eafdd1f9dca70ede9d815cc8c93f4f1fb62fe5f62ed7f3fb8057"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.440A5739-33A3-47AF-999F-4794BA8A2A92/libtatsu.xcframework.zip", checksum: "fcf5591e58fb34032c81b9cd202b726d8dabdd789eb94e343f6d04e33ffc73cd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.440A5739-33A3-47AF-999F-4794BA8A2A92/libusbmuxd.xcframework.zip", checksum: "0fcda007a3689a596eccde5ab82deb17cb15249f992c7b348b32d3dd8d9b0167"),
    ]
)

