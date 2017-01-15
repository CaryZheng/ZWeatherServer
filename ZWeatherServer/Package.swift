import PackageDescription

let package = Package(
    name: "ZWeatherServer",
    dependencies: [
        .Package(url: "https://github.com/qutheory/vapor.git", majorVersion: 1),
        .Package(url: "https://github.com/qutheory/mysql.git", majorVersion: 1)
    ],
    exclude: [
        "Config",
        "Database",
        "Localization",
        "Public",
        "Resources",
        "Tests",
    ]
)
