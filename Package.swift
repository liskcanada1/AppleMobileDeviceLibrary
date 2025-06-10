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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.051F05F7-636B-472C-8118-082C722411A8/libimobiledevice.xcframework.zip", checksum: "2e0cbf25e3cfcf859843e7da0277f66533adcc0d2aebaf6f3ff9403d2a52b729"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.051F05F7-636B-472C-8118-082C722411A8/libimobiledevice_glue.xcframework.zip", checksum: "179810f915800ebab232316c8af7c29d93aa83df92f459141fa5fa747e7bdcf2"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.051F05F7-636B-472C-8118-082C722411A8/libplist.xcframework.zip", checksum: "1f8d427101650c42f273838b1043b78a5d5472cb412a9e42ccbf2c7bf381290b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.051F05F7-636B-472C-8118-082C722411A8/libtatsu.xcframework.zip", checksum: "3405b9a52ddc9287999e4d853df8357ad9e22f5cea7e62fc2ac11e386d7a213e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.051F05F7-636B-472C-8118-082C722411A8/libusbmuxd.xcframework.zip", checksum: "ecc04ee1e373d3d9d77df542ba894952889b686e5718234e170362c5c084816c"),
    ]
)

