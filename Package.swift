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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2713BDF2-1EE9-492A-80CE-1CD4A3A76144/libimobiledevice.xcframework.zip", checksum: "d93127e1302463046a7a29d00399618c3ced3d85807c5d6b1da33fb21b551f23"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2713BDF2-1EE9-492A-80CE-1CD4A3A76144/libimobiledevice_glue.xcframework.zip", checksum: "cce3848f25db52221a5b78a37130072e54aa0e0e23382039dfa73d60b45ea360"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2713BDF2-1EE9-492A-80CE-1CD4A3A76144/libplist.xcframework.zip", checksum: "5be2d739695871ba66cf78e88469ab968cd5146d10cf4f8b2fce36fe6c2936fe"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2713BDF2-1EE9-492A-80CE-1CD4A3A76144/libtatsu.xcframework.zip", checksum: "ed740f377a37d61be9f2ec11febd42b4c38dd14a0e3c6ed6309cf9825252a775"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2713BDF2-1EE9-492A-80CE-1CD4A3A76144/libusbmuxd.xcframework.zip", checksum: "1cbe68a7390d3b083ba726d3c27e1999810764d1bb4fd8313c769f87d45079f6"),
    ]
)

