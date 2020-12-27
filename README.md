# Purpose

## What this automation does 

This automation will modify the following file:

- `frontend/javascript/index.js`
- `frontend/styles/index.scss`

It will add the following NPM packages:

- [swiper](https://github.com/nolimits4web/swiper)

## Prerequisites

#### "Bridgetown >= 0.15.0"

```bash
bridgetown -v
# => bridgetown 0.17.0 "Mount Scott"
```

This project requires the `apply` command introduced in Bridgetown version
`>= 0.15.0` 


## Usage

### New project

```bash
bridgetown new <newsite> --apply="https://github.com/julianrubisch/bridgetown-automation-swiperjs"
```

### Existing Project

```bash
cd <bridgetown-site>
[bundle exec] bridgetown apply "https://github.com/julianrubisch/bridgetown-automation-swiperjs"
```

## Getting Started

Check out https://swiperjs.com/get-started/ for setup and configuration options.
