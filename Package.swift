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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.59F6D4C4-876D-4E78-BE05-600324BAB77C/libimobiledevice.xcframework.zip", checksum: "2a21661593571352a592e00a47745b520f1f1c1b5b9db38baf82907f2cfbc199"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.59F6D4C4-876D-4E78-BE05-600324BAB77C/libimobiledevice_glue.xcframework.zip", checksum: "dc9704ea122ce08e79dc3166135cd98a5c6bf5b128ebce6e13a06eb71d602cd0"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.59F6D4C4-876D-4E78-BE05-600324BAB77C/libplist.xcframework.zip", checksum: "b83d6c56814d3a9bccee699da0d849f266f5520ee4110bc51c64961c021e355d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.59F6D4C4-876D-4E78-BE05-600324BAB77C/libtatsu.xcframework.zip", checksum: "352dbef34b75c3fe60fdc9463a63d09af766d8859bfccbc512446760e51f088c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.59F6D4C4-876D-4E78-BE05-600324BAB77C/libusbmuxd.xcframework.zip", checksum: "f8e0ab26f4f2e494264d3f584553534388f92e43451a6d2ec640abd88fcebea5"),
    ]
)

