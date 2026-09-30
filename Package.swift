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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.67A1442E-FB85-4BAF-A957-CB35ABFBD93E/libimobiledevice.xcframework.zip", checksum: "3f652775ae53b3e5493ccdbb222e17e5143949c5d8ec86fc251859a81cc455d4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.67A1442E-FB85-4BAF-A957-CB35ABFBD93E/libimobiledevice_glue.xcframework.zip", checksum: "8ffd917a964fa1a4dfdf918e1e8ef95c3a9a9ddffd0651f5bcb00a02785549f5"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.67A1442E-FB85-4BAF-A957-CB35ABFBD93E/libplist.xcframework.zip", checksum: "3959fbf63c9bdafc86bb41f8a4b79e6d89f935778fc52161caf05d859a5fcfa3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.67A1442E-FB85-4BAF-A957-CB35ABFBD93E/libtatsu.xcframework.zip", checksum: "8d7857ff317f2d77610473108b0a1f1367defc35a002757f5d805d54317886db"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.67A1442E-FB85-4BAF-A957-CB35ABFBD93E/libusbmuxd.xcframework.zip", checksum: "de213c7e08740881e782eb0afa6bf6b0bc680e05a50ce16d70a75a959b8a74db"),
    ]
)

