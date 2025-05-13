<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
<div align="left">

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]

</div>

<a href="https://mdynamix.de/en/testsystems/mx-carkit-model-car/">
  <img alt="MXcarkit Logo" src="assets/img/MXcarkit.png" align="right" width="150">
</a>

<div align="left">
  <h1><em><a href="https://github.com/Kaweees/MXcarkit">~MXcarkit</a></em></h1>
</div>

<!-- ABOUT THE PROJECT -->

A template for developing production-ready ROS2 (Humble Hawksbill) applications on the [MdynamiX MXcarkit](https://mdynamix.de/en/testsystems/mx-carkit-model-car/).

### Built With

[![ROS2][ROS2-shield]][ROS2-url]
[![C++][C++-shield]][C++-url]
[![Python][Python-shield]][Python-url]
[![Docker][Docker-shield]][Docker-url]
[![GitHub Actions][github-actions-shield]][github-actions-url]

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites

Before attempting to build this project, make sure you have [Docker](https://www.docker.com/products/docker-desktop/) installed on your machine.

### Installation

To get a local copy of the project up and running on your machine, follow these simple steps:

1. Clone the project repository

   ```sh
   git clone https://github.com/Kaweees/MXcarkit.git
   sudo chown -R $USER:$(id -gn $USER) MXcarkit
   cd MXcarkit/

   ```

2. Install the environment

   ```sh
   make
   ```

3. Build the packages

   ```sh
   colcon build --packages-select controller line_follower
   ```

4. Source the project

   ```sh
   source install/setup.bash   # if using bash
   # OR
   source install/setup.zsh    # if using zsh
   ```

5. Run the package node

   ```sh
   ros2 run controller pid_node
   ros2 run line_follower line_tracker
   ```

colcon build --packages-select controller line_follower && source install/setup.zsh && ros2 run controller pid_node
colcon build --packages-select controller line_follower && source install/setup.zsh && ros2 run line_follower line_tracker

<!-- PROJECT FILE STRUCTURE -->

## Project Structure

```sh
MXcarkit/
├── .github/                       - GitHub Actions CI/CD workflows
├── src/                           - project source files
│   ├── controller/                - controller ROS2 package
│   └── line_follower/             - line follower ROS2 package
├── Makefile                       - Environment setup script
├── LICENSE                        - project license
└── README.md                      - you are here
```

## License

The source code for this project is distributed under the terms of the GNU General Public License v3.0, as I firmly believe that collaborating on free and open-source software fosters innovations that mutually and equitably beneficial to both collaborators and users alike. See [`LICENSE`](./LICENSE) for details and more information.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/Kaweees/MXcarkit.svg?style=for-the-badge
[contributors-url]: https://github.com/Kaweees/MXcarkit/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Kaweees/MXcarkit.svg?style=for-the-badge
[forks-url]: https://github.com/Kaweees/MXcarkit/network/members
[stars-shield]: https://img.shields.io/github/stars/Kaweees/MXcarkit.svg?style=for-the-badge
[stars-url]: https://github.com/Kaweees/MXcarkit/stargazers

<!-- MARKDOWN SHIELD BAGDES & LINKS -->
<!-- https://github.com/Ileriayo/markdown-badges -->
[ROS2-shield]: https://img.shields.io/badge/ROS2-%23008080.svg?style=for-the-badge&logo=ros&logoColor=22314E&labelColor=222222&color=22314E
[ROS2-url]: https://www.ros.org/
[C++-shield]: https://img.shields.io/badge/C++-%23008080.svg?style=for-the-badge&logo=c%2B%2B&logoColor=004482&labelColor=222222&color=004482
[C++-url]: https://isocpp.org/
[Python-shield]: https://img.shields.io/badge/Python-%23008080.svg?style=for-the-badge&logo=python&logoColor=FFDD54&labelColor=222222&color=306998
[Python-url]: https://www.python.org/
[github-actions-shield]: https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=2671E5&labelColor=222222&color=2671E5
[github-actions-url]: https://github.com/features/actions
[Docker-shield]: https://img.shields.io/badge/docker-%232671E5.svg?style=for-the-badge&logo=docker&logoColor=1D63ED&labelColor=222222&color=1D63ED
[Docker-url]: https://www.docker.com/
