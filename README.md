# SwiftUITrapezoidShape

<!-- Header Logo -->

<div align="center">
   <img width="1000px" src="./Extras/banner-1@3x.png" alt="Banner Logo">
</div>


<!-- Badges -->

<p>
    <img src="https://img.shields.io/badge/iOS-14.0+-865EFC.svg" />
    <img src="https://img.shields.io/badge/iPadOS-14.0+-F65EFC.svg" />
    <img src="https://img.shields.io/badge/macOS-11.0+-179AC8.svg" />
    <img src="https://img.shields.io/badge/tvOS-14.0+-41465B.svg" />
    <img src="https://img.shields.io/badge/watchOS-7.0+-1FD67A.svg" />
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" />
    <img src="https://github.com/CypherPoet/SwiftUITrapezoidShape/workflows/Build%20&%20Test/badge.svg" />
    <a href="https://github.com/apple/swift-package-manager">
      <img src="https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat" />
    </a>
    <a href="https://twitter.com/cypher_poet">
        <img src="https://img.shields.io/badge/Contact-@cypher_poet-lightgrey.svg?style=flat" alt="Twitter: @cypher_poet" />
    </a>
</p>


<p align="center">

_An animatable SwiftUI Shape for drawing a trapezoid with variably slanted offset sides._

<p />

<div align="center">
   <img height="500px" src="./Extras/recording-1.gif" alt="Demo Recording">
</div>

<!--
## Features

- ✅ Feature 1
- ✅ Feature 2 -->


## Installation

### Xcode Projects

Select `File` -> `Swift Packages` -> `Add Package Dependency` and enter `https://github.com/CypherPoet/SwiftUITrapezoidShape`.


### Swift Package Manager Projects

You can add `SwiftUITrapezoidShape` as a package dependency in your `Package.swift` file:

```swift
let package = Package(
    //...
    dependencies: [
        .package(
          url: "https://github.com/CypherPoet/SwiftUITrapezoidShape",
          .upToNextMinor(from: "0.1.0")
        ),
    ],
    //...
)
```

From there, refer to `SwiftUITrapezoidShape` as a "target dependency" in any of _your_ package's targets that need it.

```swift
targets: [
    .target(
        name: "YourLibrary",
        dependencies: [
          "SwiftUITrapezoidShape",
        ],
        ...
    ),
    ...
]
```

Then simply `import SwiftUITrapezoidShape` wherever you’d like to use it.


## Usage

Importing `SwiftUITrapezoidShape` will expose the `Trapezoid` type.

```swift
    Trapezoid(
        leadingAnchor: .topLeading,
        trailingAnchor: .bottomLeading,
        leadingLegInsetPercentage: leadingSlantPercentage,
        trailingLegInsetPercentage: trailingSlantPercentage
    )
```

`Trapezoid` documentation can be found [here](https://cypherpoet.github.io/SwiftUITrapezoidShape/), and this project's [example app](https://github.com/CypherPoet/SwiftUITrapezoidShape/tree/main/Examples/TrapezoidShapeDemo) contains a demonstration of more ways to use it.


## Contributing

Contributions to `SwiftUITrapezoidShape` are most welcome. Check out some of the [issue templates](./.github/ISSUE_TEMPLATE/) for more info.



## 💻 Developing

### Requirements

- Xcode 12.5+ (Recommended)


### 📜 Generating Documentation

Documentation is generated by [Jazzy](https://github.com/realm/jazzy). Installation instructions can be found [here](https://github.com/realm/jazzy#installation), and as soon as you have it set up, docs can be generated simply by running `jazzy` from the command line.

📝 Note that this will only generate the `docs` folder for you to view locally. This folder is being ignored by `git`, as an [action](./.github/workflows/PublishDocumentation.yml) exists to automatically generate docs at the root level and serve them on the project's `gh-pages` branch.


## 🏷 License

`SwiftUITrapezoidShape` is available under the MIT license. See the [LICENSE file](./LICENSE) for more info.
