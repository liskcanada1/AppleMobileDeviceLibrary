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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C887F238-C362-4E49-BFC7-86C2DC8C2A9A/libimobiledevice.xcframework.zip", checksum: "a2ef4dfd8a322b9802259f779917ab5f4f997debde3ce3f021874689638d1770"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C887F238-C362-4E49-BFC7-86C2DC8C2A9A/libimobiledevice_glue.xcframework.zip", checksum: "c80dfb2df5f5ab29d1820387f6e5358cf2c46de6ded6a4026b2f809351b541f6"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C887F238-C362-4E49-BFC7-86C2DC8C2A9A/libplist.xcframework.zip", checksum: "74c8cad9eec676b9b036bb8584aa80635c4668004ada7363b8b2d8c69b54af92"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C887F238-C362-4E49-BFC7-86C2DC8C2A9A/libtatsu.xcframework.zip", checksum: "5baebd5cbc633b6067a54852deb26e781b55a5a53f2db5d1522d135f0d4b6242"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C887F238-C362-4E49-BFC7-86C2DC8C2A9A/libusbmuxd.xcframework.zip", checksum: "c4f3df6ae966a459e6c306f64c65a25ba051a5149f769149b38bc24f4ce6238b"),
    ]
)

