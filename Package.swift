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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F933307E-9FAD-421D-9400-77C224128471/libimobiledevice.xcframework.zip", checksum: "32dba1fba6389286e6ce0727531476cbddb86f0f1e1a4b666c6c343cd9a52a00"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F933307E-9FAD-421D-9400-77C224128471/libimobiledevice_glue.xcframework.zip", checksum: "dc1cf521e644f6b1ed77f820596b71de65a596195200d21b9ea763da9694f537"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F933307E-9FAD-421D-9400-77C224128471/libplist.xcframework.zip", checksum: "8a9f08e97058d1cb2a7ba8cfa2659709cbd88614b5d324c109543971a4fd2b09"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F933307E-9FAD-421D-9400-77C224128471/libtatsu.xcframework.zip", checksum: "f6f5526a30245867de9ea3f8d1fc9bacc5232855a578e15ce5144a4292f571c9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F933307E-9FAD-421D-9400-77C224128471/libusbmuxd.xcframework.zip", checksum: "6db6aaf7ab10d5dce120da5806512093c68129f79fa918fd08820d6c49652efe"),
    ]
)

