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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6D68ED0B-7671-419D-9504-4FD7B21E25ED/libimobiledevice.xcframework.zip", checksum: "33bef949c6b63e49926bb126cc95cdb8ceffa3c55a6707ebc3e0745d61a3f5df"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6D68ED0B-7671-419D-9504-4FD7B21E25ED/libimobiledevice_glue.xcframework.zip", checksum: "32bb320fe4ab32dccafbc040e8f1c9362963c63038ea68c301ed05d8d4cd22d4"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6D68ED0B-7671-419D-9504-4FD7B21E25ED/libplist.xcframework.zip", checksum: "e1dc242148c1a4e8776ab2c4574c7fb0d92e7920e223382236ac536722d78a88"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6D68ED0B-7671-419D-9504-4FD7B21E25ED/libtatsu.xcframework.zip", checksum: "592db49f09a8b3197f4c96e771a47898aba7d8863b8ecad8d31f7d444cdfb065"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6D68ED0B-7671-419D-9504-4FD7B21E25ED/libusbmuxd.xcframework.zip", checksum: "c5819d5efe9ef37d1f954eca4b2344ebbcfc8b00008f43c8350e361ccf00d491"),
    ]
)

