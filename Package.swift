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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.94137BE9-4981-4905-AE8F-292019367ECB/libimobiledevice.xcframework.zip", checksum: "09865289a5524a9dfef74059e01eeddfb2d6bba7198a30b70d6fbd27ff931245"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.94137BE9-4981-4905-AE8F-292019367ECB/libimobiledevice_glue.xcframework.zip", checksum: "6f4a2e845cd24b9bd47f069e96828c2614d7b8545f56d5efeb527a29ff1afef3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.94137BE9-4981-4905-AE8F-292019367ECB/libplist.xcframework.zip", checksum: "8985676dee947e14aa918b12b03a3a131c3fa19ab8597431ca06455567e3b587"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.94137BE9-4981-4905-AE8F-292019367ECB/libtatsu.xcframework.zip", checksum: "0141eab2256d0e1acc0ed5135077b4ecfd07465894e36f9ac43c0bb01ca45035"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.94137BE9-4981-4905-AE8F-292019367ECB/libusbmuxd.xcframework.zip", checksum: "64fe2cc916df2d81ea71a4d739d16817562eabe577d0dbb899af0c43ecb9ed34"),
    ]
)

