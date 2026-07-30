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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4630EA31-7E79-451C-BE43-5E33C35F45FE/libimobiledevice.xcframework.zip", checksum: "d66265188376201182151239f762e458f28d8a51ec09589097360341020875a6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4630EA31-7E79-451C-BE43-5E33C35F45FE/libimobiledevice_glue.xcframework.zip", checksum: "89946dd6cb5ffce5bbecbc3e426deaf81965a12cb8e35944fc26cd4700d3b36e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4630EA31-7E79-451C-BE43-5E33C35F45FE/libplist.xcframework.zip", checksum: "5ae3d35d1382fc1d01c7897d4be7ac531efe8e2fec3a3aa5116077702854f9db"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4630EA31-7E79-451C-BE43-5E33C35F45FE/libtatsu.xcframework.zip", checksum: "f2ae70c6a8b3c5fc92729bc9098f7861844541196a22d9de369eefcd48982eed"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4630EA31-7E79-451C-BE43-5E33C35F45FE/libusbmuxd.xcframework.zip", checksum: "979f659bd6fbc29dff44a2f573603d443b7da041edaf08aebe02b640f2c59dbf"),
    ]
)

