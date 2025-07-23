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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4ACBA628-9EF4-4D1E-BD85-1885EB9E71C1/libimobiledevice.xcframework.zip", checksum: "c7dc884d175f1bd8162d05663128be3edabae2f7f033ebd22a27a086d297958a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4ACBA628-9EF4-4D1E-BD85-1885EB9E71C1/libimobiledevice_glue.xcframework.zip", checksum: "98be236dd54224ad13c4a6829a94db474697cadc6e6e35016aac2d43be75b771"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4ACBA628-9EF4-4D1E-BD85-1885EB9E71C1/libplist.xcframework.zip", checksum: "170314d2adab57afa10917538107061a262e25ce3f1e18b22ad390299ad01150"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4ACBA628-9EF4-4D1E-BD85-1885EB9E71C1/libtatsu.xcframework.zip", checksum: "315cc9a3a81aef98571c3b2a11e46e57693a6871c35c9e41b85b11e227ceed6c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4ACBA628-9EF4-4D1E-BD85-1885EB9E71C1/libusbmuxd.xcframework.zip", checksum: "98764ddd50e781db032d6fccda34b5f9c8ec44adf53cf94f58db7b7722c30df5"),
    ]
)

