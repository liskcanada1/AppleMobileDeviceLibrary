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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8411B557-B3EB-40D8-B888-CA63DBBB8A93/libimobiledevice.xcframework.zip", checksum: "f6562d991752aa82345d14ca89e3f58a736568b34d282f8bc5cab6d492e98ed4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8411B557-B3EB-40D8-B888-CA63DBBB8A93/libimobiledevice_glue.xcframework.zip", checksum: "c15b4e2f07032a28f150688b94a564bae79c1c6a753f9f3e9118bb24cba6897d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8411B557-B3EB-40D8-B888-CA63DBBB8A93/libplist.xcframework.zip", checksum: "22b55db24de85f252b434aedf4a50ef938d2352047a32a9ec57475ff3ac1c0b1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8411B557-B3EB-40D8-B888-CA63DBBB8A93/libtatsu.xcframework.zip", checksum: "a70d338d4d237a55a871e955c190e64fedbb7e8fd743b768ad6c901400357ba3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8411B557-B3EB-40D8-B888-CA63DBBB8A93/libusbmuxd.xcframework.zip", checksum: "b54fda58cc50d72f0f7d4c01fa791f2149f2d3c8f40d7f349a5df57bed80a23b"),
    ]
)

