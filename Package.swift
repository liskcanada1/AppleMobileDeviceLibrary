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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DFDD7AAA-D903-41FC-BBCE-5B2C1841C085/libimobiledevice.xcframework.zip", checksum: "6bb742e0b63646a19d84a724c5024230db58474c563c7e1e97c9dcf96b0010db"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DFDD7AAA-D903-41FC-BBCE-5B2C1841C085/libimobiledevice_glue.xcframework.zip", checksum: "062915734729c7fde84976ad0114304a3775effc38814366b256e11c1c998836"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DFDD7AAA-D903-41FC-BBCE-5B2C1841C085/libplist.xcframework.zip", checksum: "fd21278f0615a4888c60a1ff3ed249484cd0a94fcb05b7ef73bf4d2131ac595e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DFDD7AAA-D903-41FC-BBCE-5B2C1841C085/libtatsu.xcframework.zip", checksum: "53156c2c38b53062d66373dcd3a6e6399e873631a29e39f16526d5986db9d9f7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DFDD7AAA-D903-41FC-BBCE-5B2C1841C085/libusbmuxd.xcframework.zip", checksum: "1f63be8fbbdbc5600f3f7284106e1bcde5f4445610dfb998ff7c4255c1b7d195"),
    ]
)

