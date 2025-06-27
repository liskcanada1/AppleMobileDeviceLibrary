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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D1EC97EB-0523-4A23-B92C-CDFB715AF648/libimobiledevice.xcframework.zip", checksum: "864baf9ab3109cb3a4120110d4ac25a8bdf54ac599dc1e62fe793df8f737f832"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D1EC97EB-0523-4A23-B92C-CDFB715AF648/libimobiledevice_glue.xcframework.zip", checksum: "714f71cf0ac289a5427b0c2fb559b8145ee240fb74f8a8b5d666df3e70f49434"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D1EC97EB-0523-4A23-B92C-CDFB715AF648/libplist.xcframework.zip", checksum: "b0397ac5c7a68235c0b2ff6c2f8f687927242cc72c1bb51d7f9bb0e56cddca82"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D1EC97EB-0523-4A23-B92C-CDFB715AF648/libtatsu.xcframework.zip", checksum: "d716b164d6f33abfb8335bf309466a53ce7d3a98f4f69cf7827c5d64a3c49976"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D1EC97EB-0523-4A23-B92C-CDFB715AF648/libusbmuxd.xcframework.zip", checksum: "4c077d90e07dd7ca690d4fa9b9280ac9d33cda4a21d8a48e5eb28f339150ed07"),
    ]
)

