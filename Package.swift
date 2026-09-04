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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6392B4CD-EDCB-4A3E-97EA-4D27CB72854F/libimobiledevice.xcframework.zip", checksum: "ef3671c825471203b787682041a215a9d1f84aa6dee6b078d3425f95aeb3a12d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6392B4CD-EDCB-4A3E-97EA-4D27CB72854F/libimobiledevice_glue.xcframework.zip", checksum: "8b85ab0e1dba45f44b4bd9ec0a2fe2e91c490a63257052e11d2a01245604e1ba"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6392B4CD-EDCB-4A3E-97EA-4D27CB72854F/libplist.xcframework.zip", checksum: "82127e756449db6a2d931064c100f4e2bf123b2d2eca772774755668b6334f66"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6392B4CD-EDCB-4A3E-97EA-4D27CB72854F/libtatsu.xcframework.zip", checksum: "9814df2755635803113368141be1d48df72ef8fcbd859a5e1e17ee0dd2e764a9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6392B4CD-EDCB-4A3E-97EA-4D27CB72854F/libusbmuxd.xcframework.zip", checksum: "7f423db989056b64d37429dc6fd11d962917dc0656767007ab7277d66b095ca4"),
    ]
)

