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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D5262CE3-A96A-4247-95AC-74D998AE44B1/libimobiledevice.xcframework.zip", checksum: "b172dc1df3aec52272f545d6c4e0e180fe28e61c1ef55c1596ca102d249532a5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D5262CE3-A96A-4247-95AC-74D998AE44B1/libimobiledevice_glue.xcframework.zip", checksum: "44b8404242106f99f005f452b689601ff1023cb357da725c148fd791f7de78d9"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D5262CE3-A96A-4247-95AC-74D998AE44B1/libplist.xcframework.zip", checksum: "78428ee4010e1081de29355f36afd7e0665f28647cdb640dd64a99de55430810"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D5262CE3-A96A-4247-95AC-74D998AE44B1/libtatsu.xcframework.zip", checksum: "b498d037caa4a509a516f003812b7c5e72522e3ba1beb24061005db9262a6648"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D5262CE3-A96A-4247-95AC-74D998AE44B1/libusbmuxd.xcframework.zip", checksum: "8b292bb9b49f1e830ab35566b649ff1a11b879533bb1f26afd6fabe4bea834a8"),
    ]
)

