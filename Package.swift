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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2C1A3842-9520-4F0D-B050-D9EEF7C9955C/libimobiledevice.xcframework.zip", checksum: "7808f942b36ddd649b4550437206b13b218d3a7458e1136d8fd0133ca16a1a92"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2C1A3842-9520-4F0D-B050-D9EEF7C9955C/libimobiledevice_glue.xcframework.zip", checksum: "38904f21fe4b771205184a7eae75a1d4cb92eb4c01153b40b72b5b303a1cc130"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2C1A3842-9520-4F0D-B050-D9EEF7C9955C/libplist.xcframework.zip", checksum: "47f4fcd73299b64ffa3caa397e17b43cdddc181d93d35817423979c5283d7023"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2C1A3842-9520-4F0D-B050-D9EEF7C9955C/libtatsu.xcframework.zip", checksum: "324fa362c0842f88f76cd6a3bb47922ab315a23987734beb8368af1274c061d2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2C1A3842-9520-4F0D-B050-D9EEF7C9955C/libusbmuxd.xcframework.zip", checksum: "e8f9f12401fdb559b32bb9a2e31cefae7d0447f2db190eb48c6ff303e96cdac1"),
    ]
)

