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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9F23AF96-633A-4FED-9364-1BF382859F26/libimobiledevice.xcframework.zip", checksum: "35a3fed1628167856b212f132deb5e92d8204cbae3f0ab215a16210e2e6230c5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9F23AF96-633A-4FED-9364-1BF382859F26/libimobiledevice_glue.xcframework.zip", checksum: "6d71e1da6d677186355cea1720fb773a967f2a1c730f8b5ea143075c2047114d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9F23AF96-633A-4FED-9364-1BF382859F26/libplist.xcframework.zip", checksum: "f0016b0eda407c304c42f18a4a84550459551179a2048ef12f5b0318f5041ce5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9F23AF96-633A-4FED-9364-1BF382859F26/libtatsu.xcframework.zip", checksum: "84374832bddb26a5ea47b6ee357115e842b8349fca3c27dc5d126f503f9c0b6f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9F23AF96-633A-4FED-9364-1BF382859F26/libusbmuxd.xcframework.zip", checksum: "d6d5de12cc18d0883816258e761a7029e78de686b17e21ecfd9c14fd2f86d40e"),
    ]
)

