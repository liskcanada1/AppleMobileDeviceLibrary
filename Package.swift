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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.257E9481-2B4B-4C4A-97F8-67497EB10D35/libimobiledevice.xcframework.zip", checksum: "8db598a420e70c3e354c858045768f5bff299fc38ed9407bb296bf9be0e10ced"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.257E9481-2B4B-4C4A-97F8-67497EB10D35/libimobiledevice_glue.xcframework.zip", checksum: "35921b9d996e36a451c5e19b59d4c6018ca060bafed42825ec01ee500ceb67da"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.257E9481-2B4B-4C4A-97F8-67497EB10D35/libplist.xcframework.zip", checksum: "23cfe2f00116d9c96bbc64b4f01cc2b2dfdea55e03b3f37151b35ecf697aed41"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.257E9481-2B4B-4C4A-97F8-67497EB10D35/libtatsu.xcframework.zip", checksum: "d84c659caf93bafa7db5fc2151dd1b1526c336a5366b8aa9399e680e9e3c6b60"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.257E9481-2B4B-4C4A-97F8-67497EB10D35/libusbmuxd.xcframework.zip", checksum: "75eccb158de97a42704268e46139120920b70ca47d92a9ecc0e85fe0d8c26474"),
    ]
)

