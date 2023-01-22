# About starterkit-dockerized-accelerator-embedded-erni-yocto

This repo aims to boost the development with the [Starterkit-embbeded-erni-yocto](https://github.com/ERNI-Academy/starterkit-embedded-erni-yocto). It takes that repo as base and create a docker develoment environment. This development environment is ready to work. We offer the possibility to use the "devcontairner" feature of Visual Studio Code, as well.

<img src="https://residenciacaninaidefix.com/wp-content/uploads/2018/10/idefix.jpeg" width="150">

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-3-orange.svg?style=flat-square)](#contributors)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

## Features

- Development environment ready to start working with Yocto/poky.
- Based on docker.
- Non-dependency required.
  - Note: It doesn't requires sudo access unless docker hasn't been previously installed.

## Prerequisites

**Host OS**

Ubuntu 22.04 and 20.04 are elegibles as Host OS.

## Installation

1. Clone the repo

```bash
git clone https://github.com/ERNI-Academy/starterkit-embedded-erni-yocto.git
```

2. Initialize environment

```bash
./init-docker-env.sh
```

**Note:** You can use this repo natively without docker. In this case, you can install
the depenpendecies with command below. This step has to be used just the very first time.

```bash
./installDevDeps.sh
```

## Getting Started - Basic use

### Build

You can build the entire image with settings by default. The result will a image bootable in a Raspberry Pi which runs a flutter app at the beggining. Just type:

```bash
./build.sh
# Building the image from scratch could take hours. Be patient
```

Before starting the building, you can set the Wi-Fi settings (ssid + pass).

```bash
./build.sh --wifi-interactive
```

**Note:** This will be skipped if you set the enviroment variables `WIFISSID` and `WIFIPASS` since the script will config the Wi-Fi automatically.

**Note:** See ./build.sh --help for further information.

### Custom build command

Build script let you enter your custom bitbake commands. This can be done by using the -bc or --bitbake-cmd argument followed by the double-quoted command. This argument must be placed in the last position of command in order to avoid conflicts. See some examples:

```bash
./build.sh --bitbake-cmd bitbake -s | grep flutter
./build.sh -bc bitbake -D wifi -c clean
./build.sh --bitbake-cmd bitbake-layers show-layers
./build.sh -j 8 -wi --bitbake-cmd bitbake-layers show-layers
```

### Interactive session

This is a powerful way to debug and develop either your recipes or your flutter apps. If you are interested in open an interative session run this:

```bash
./build.sh --shell

```

Once you are inside the `shell` you will be able to use commands like:

- bitbake
- bitbake-getvar
- bitbake-layers
- devtool

### Cleaning

```bash
./cleanAll.sh
# Keep in mind it could be dangerous in case you have unsaved changes.
git clean -fdx
```

## Contributing

Please see our [Contribution Guide](CONTRIBUTING.md) to learn how to contribute.

## License

![MIT](https://img.shields.io/badge/License-MIT-blue.svg)

## Code of conduct

Please see our [Code of Conduct](CODE_OF_CONDUCT.md)

## Stats

Check [https://repobeats.axiom.co/](https://repobeats.axiom.co/) for the right URL

## Follow us

[![Twitter Follow](https://img.shields.io/twitter/follow/ERNI?style=social)](https://www.twitter.com/ERNI)
[![Twitch Status](https://img.shields.io/twitch/status/erni_academy?label=Twitch%20Erni%20Academy&style=social)](https://www.twitch.tv/erni_academy)
[![YouTube Channel Views](https://img.shields.io/youtube/channel/views/UCkdDcxjml85-Ydn7Dc577WQ?label=Youtube%20Erni%20Academy&style=social)](https://www.youtube.com/channel/UCkdDcxjml85-Ydn7Dc577WQ)
[![Linkedin](https://img.shields.io/badge/linkedin-31k-green?style=social&logo=Linkedin)](https://www.linkedin.com/company/erni)

## Contact

📧 [esp-services@betterask.erni](mailto:esp-services@betterask.erni)

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/Gmatarrubia"><img src="https://avatars.githubusercontent.com/u/7702234?v=4" width="100px;" alt=""/><br /><sub><b>gmatarrubia</b></sub></a><br /><a href="https://github.com/Gmatarrubia" title="Code">💻</a> <a href="#content-gmatarrubia" title="Content">🖋</a> <a href="https://github.com/ERNI-Academy/starterkit-embedded-erni-yocto//commits?author=gmatarrubia" title="Documentation">📖</a> <a href="#design-gmatarrubia" title="Design">🎨</a> <a href="#ideas-gmatarrubia" title="Ideas, Planning, & Feedback">🤔</a> <a href="#maintenance-gmatarrubia" title="Maintenance">🚧</a> <a href="https://github.com/ERNI-Academy/starterkit-embedded-erni-yocto//commits?author=gmatarrubia" title="Tests">⚠️</a> <a href="#example-gmatarrubia" title="Examples">💡</a> <a href="https://github.com/ERNI-Academy/starterkit-embedded-erni-yocto//pulls?q=is%3Apr+reviewed-by%3gmatarrubia" title="Reviewed Pull Requests">👀</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
