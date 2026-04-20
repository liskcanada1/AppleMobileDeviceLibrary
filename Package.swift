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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3FBC9A00-A8BE-46E8-A48A-BFC3AE282A4C/libimobiledevice.xcframework.zip", checksum: "5c12c8d264631f6e4b5bf02e486d8cc21701c6858050e3da19979dca14f6946d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3FBC9A00-A8BE-46E8-A48A-BFC3AE282A4C/libimobiledevice_glue.xcframework.zip", checksum: "23b2c90ba2bbb42dda4e945863ba362c2fa27747dbf38361fab343ef7d982516"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3FBC9A00-A8BE-46E8-A48A-BFC3AE282A4C/libplist.xcframework.zip", checksum: "bb7f7a7956b02104f2acd36003df9177fe01361f4b348ce6630ddf7ea3629a83"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3FBC9A00-A8BE-46E8-A48A-BFC3AE282A4C/libtatsu.xcframework.zip", checksum: "957f3351d582c39b176b807c5988c4831fa3cac42ebb47ceaa8be2d29e5cd14e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3FBC9A00-A8BE-46E8-A48A-BFC3AE282A4C/libusbmuxd.xcframework.zip", checksum: "f091be7972ec7024b21ec39e434d3a301ab2d63840cd93234f69e03c2a9d8cd0"),
    ]
)

