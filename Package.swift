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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4B4ED0D0-04AA-4E66-95EE-B7186E55AAA0/libimobiledevice.xcframework.zip", checksum: "e4aade244c2db335fdeceaa71e5940198e0de607eacb431f69e03e738bc57d0a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4B4ED0D0-04AA-4E66-95EE-B7186E55AAA0/libimobiledevice_glue.xcframework.zip", checksum: "30e8de35ec8a183e6ab8296ce2ea87a8a270f987b69fae24cd8d562f9b2a4954"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4B4ED0D0-04AA-4E66-95EE-B7186E55AAA0/libplist.xcframework.zip", checksum: "70388d09ead38a49d2bb303ac6eda48262f060552023b504f91bbf627380bd1b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4B4ED0D0-04AA-4E66-95EE-B7186E55AAA0/libtatsu.xcframework.zip", checksum: "11f8fd2246f2828119f3bef5509539a830347e20ce4f75725efaa6573ae43cc7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4B4ED0D0-04AA-4E66-95EE-B7186E55AAA0/libusbmuxd.xcframework.zip", checksum: "8455764989bf7564e76d6cd633dcba9a2991f1ee09f596b944f46853adeca0bc"),
    ]
)

