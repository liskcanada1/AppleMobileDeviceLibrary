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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2F431D05-10A0-4517-B2C9-7BC28BF76524/libimobiledevice.xcframework.zip", checksum: "30df7f9b6d5b2c8fe808284ef3b4da344792d9402e057f8a91503d05ea8bec8e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2F431D05-10A0-4517-B2C9-7BC28BF76524/libimobiledevice_glue.xcframework.zip", checksum: "cfefdce80f8b33225f54f82d56abf1da4b9416cf8332c6684662ec939bf57eaf"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2F431D05-10A0-4517-B2C9-7BC28BF76524/libplist.xcframework.zip", checksum: "a94e7cf5799261e57aa72d8eb5c03cebb1a6129ecd290f1f8dc5ead6b3175fd9"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2F431D05-10A0-4517-B2C9-7BC28BF76524/libtatsu.xcframework.zip", checksum: "3ef3e2865ea9b139b803a031708f3f3e87897d3e1407b4030569d85a820b2fcd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2F431D05-10A0-4517-B2C9-7BC28BF76524/libusbmuxd.xcframework.zip", checksum: "ce01cf3d5eb3a14ce4260676d86b2c435f6e0d47cb7e6464c028a43fcfff5cfb"),
    ]
)

