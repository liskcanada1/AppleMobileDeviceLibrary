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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.72E50FC2-D3AC-40EF-A0FA-50B5E1562A05/libimobiledevice.xcframework.zip", checksum: "4e49a6eb781461ae043f4d23a7310f8663cc2ec6f81c49dc29779e16ee8a0555"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.72E50FC2-D3AC-40EF-A0FA-50B5E1562A05/libimobiledevice_glue.xcframework.zip", checksum: "f3c3e0e86b9aa326b50e6cd89bcdbad2a0f644d47f7ff6f930a6240acfa70640"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.72E50FC2-D3AC-40EF-A0FA-50B5E1562A05/libplist.xcframework.zip", checksum: "770a975aa616d7761bb87f9599345e23a260c76f709e1c2f59516e5ae5b12f99"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.72E50FC2-D3AC-40EF-A0FA-50B5E1562A05/libtatsu.xcframework.zip", checksum: "3ac7bd6aea58d38fe5f1f99b43a349d64375d1d87b43e55908b9fc24fd3dd379"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.72E50FC2-D3AC-40EF-A0FA-50B5E1562A05/libusbmuxd.xcframework.zip", checksum: "6380788f607ac775401d2700cbb433cf2a894399e1b85d73441575c01b9a62d9"),
    ]
)

