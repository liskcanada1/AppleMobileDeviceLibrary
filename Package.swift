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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3C5EC715-F737-440E-B602-212B4D3444F7/libimobiledevice.xcframework.zip", checksum: "67b4e74247ea9e64816c2963b758e26aa2bdbcad316b2eab4722257eee953f50"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3C5EC715-F737-440E-B602-212B4D3444F7/libimobiledevice_glue.xcframework.zip", checksum: "1048f076f93fa644a32da8840a24e8e195c932ff3cdbeb193fec6e82cec4d9d9"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3C5EC715-F737-440E-B602-212B4D3444F7/libplist.xcframework.zip", checksum: "77f37151ffbb390e81dc710b05c15f9aada8aedda84a1f297aabe762e7dae501"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3C5EC715-F737-440E-B602-212B4D3444F7/libtatsu.xcframework.zip", checksum: "c74d702bfd2497db54e5ade9f1eaaf927f79f529703e9a440a8c6e22e825c2cc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3C5EC715-F737-440E-B602-212B4D3444F7/libusbmuxd.xcframework.zip", checksum: "dee7f509b0d76432abb9010ed694fd621de165c2d7b9060330bb26878367da3d"),
    ]
)

