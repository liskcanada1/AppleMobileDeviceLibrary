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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A67F39A-0C68-4DAE-8F45-4C53AF0FE2E8/libimobiledevice.xcframework.zip", checksum: "51349eb42a8ea365a1ad4b49ab647aefb53b55ddaa59aebca203fffa3e1a5660"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A67F39A-0C68-4DAE-8F45-4C53AF0FE2E8/libimobiledevice_glue.xcframework.zip", checksum: "cbe4a09a63c2c9f3a82d109234c4391c5f78a68cb10f0836447edf290c21c400"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A67F39A-0C68-4DAE-8F45-4C53AF0FE2E8/libplist.xcframework.zip", checksum: "90bef99e22b6ca4e0d6b9f76be7465177a87f49251d83d2ce08c38ad9fe7629b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A67F39A-0C68-4DAE-8F45-4C53AF0FE2E8/libtatsu.xcframework.zip", checksum: "13d4bb48ad1face09e200950ef8b44be6268cd7ab857522fbdfbfec396bbcac5"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7A67F39A-0C68-4DAE-8F45-4C53AF0FE2E8/libusbmuxd.xcframework.zip", checksum: "d5c2ef30155e7b86773becd0b4c4290b028df0a185fd1888dcaf36e54416c900"),
    ]
)

