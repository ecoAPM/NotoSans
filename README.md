# Noto Sans Web Fonts

[![npm version](https://img.shields.io/npm/v/notosans?logo=npm&label=Install)](https://npmjs.com/package/notosans)
[![CI status](https://github.com/ecoAPM/NotoSans/workflows/CI/badge.svg)](https://github.com/ecoAPM/NotoSans/actions)

[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=ecoAPM_NotoSans&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=ecoAPM_NotoSans)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=ecoAPM_NotoSans&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=ecoAPM_NotoSans)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=ecoAPM_NotoSans&metric=security_rating)](https://sonarcloud.io/dashboard?id=ecoAPM_NotoSans)

## Requirements

- Node.js
- a CSS bundler (or JS bundler that can also bundle CSS)

## Installation

`npm i notosans`

or

`yarn add notosans`

## Usage

Import the CSS file from the package to include the `@font-face` declarations and `.woff2` files in your bundle:

```css
@import url("notosans/noto.css");

body {
    font-family: "Noto Sans", sans-serif; /* it's always a good idea to specify a generic fallback */
}
```

## Build from source

This npm package is built from an automated process that downloads and converts Google's Noto Sans font from TTF to WOFF2.

To run it yourself, clone this repo and then run:

```
docker-compose up
```