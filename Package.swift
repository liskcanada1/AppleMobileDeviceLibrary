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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BBAEFC3F-3C7D-4D56-8DDD-0974C1631F90/libimobiledevice.xcframework.zip", checksum: "20f79b3215ba0ec5757c84604cee99ddec2a1460a7cc376c262e0f8177323bf2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BBAEFC3F-3C7D-4D56-8DDD-0974C1631F90/libimobiledevice_glue.xcframework.zip", checksum: "f1adc3edff02c09dd487f587ebb05150ed576385f1559c955518862d4ba4a35f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BBAEFC3F-3C7D-4D56-8DDD-0974C1631F90/libplist.xcframework.zip", checksum: "957d1bbaa4fe3a0299c4b56a846ce87db03ca569f79adde0533e55cec05509f9"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BBAEFC3F-3C7D-4D56-8DDD-0974C1631F90/libtatsu.xcframework.zip", checksum: "fdf2c449f6ac519c0eda753dc0226ef47e98e471dd6e187a514b6180bae94d52"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BBAEFC3F-3C7D-4D56-8DDD-0974C1631F90/libusbmuxd.xcframework.zip", checksum: "7d808cc2c16ebf8c65e5836ba1d981733f707ab6e0d9b90cf24531de61f99426"),
    ]
)

