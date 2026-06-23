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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9BC932FF-54ED-4395-B71F-88B679F06818/libimobiledevice.xcframework.zip", checksum: "edcaaf3b1b6749da8d7308103139c3ab82281ee532eafd57a43bc8e54b0a22ee"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9BC932FF-54ED-4395-B71F-88B679F06818/libimobiledevice_glue.xcframework.zip", checksum: "f153b904c87db09f98c5ea5ad54af3228af1933d5e3d0cac46a65439053bf2a3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9BC932FF-54ED-4395-B71F-88B679F06818/libplist.xcframework.zip", checksum: "e986be490f94fff5376e4536852fd18a4c3a32f4d82bcf5e933f6a6c8fa79553"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9BC932FF-54ED-4395-B71F-88B679F06818/libtatsu.xcframework.zip", checksum: "f4e3125c0d7e200afc98c895c2b518d8ce75c2fe7387226a11ae4f61c5cf185f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9BC932FF-54ED-4395-B71F-88B679F06818/libusbmuxd.xcframework.zip", checksum: "a783948596e56f8faff3094f984875b2e6971cdaa56035e30a55706d43bbeca2"),
    ]
)

