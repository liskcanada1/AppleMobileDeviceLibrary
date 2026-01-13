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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C2F20802-3B2D-46F7-A199-62AE221B5257/libimobiledevice.xcframework.zip", checksum: "b6a9d50c96a40c94e5cb481db1fb2000df742a4ca3af0c0eb193ba62721a307c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C2F20802-3B2D-46F7-A199-62AE221B5257/libimobiledevice_glue.xcframework.zip", checksum: "9ae0b3f75ba818bfd22f2c0d19d477577fe6c03771cc57ea489bf53dae6871db"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C2F20802-3B2D-46F7-A199-62AE221B5257/libplist.xcframework.zip", checksum: "0beea9c759e521f221542e569abc69903a8c0505e04c77d4313e444dd48facca"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C2F20802-3B2D-46F7-A199-62AE221B5257/libtatsu.xcframework.zip", checksum: "a2e2f060738a1ab4fd023b2ff6cc6c30bf868da4494cfd9ecae1fe6313cc931c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C2F20802-3B2D-46F7-A199-62AE221B5257/libusbmuxd.xcframework.zip", checksum: "31529ff05909d8f7c11fe22a111709de8cc8fe84f6242d818a1cde39bae8a1ac"),
    ]
)

