## Description

A Brighterscript & Kopytko application template.

## Prerequisites

This codebase __only supports__ [Visual Studio Code](https://code.visualstudio.com/).

## Installation

1. Install the project's dependencies:

```bash
$ npm install
```

2. Install the [recommended](./.vscode/extensions.json) VSC extensions

3. Create a `.env` with the following in the root of the project:

```
ROKU_IP={YOUR.ROKU.IP}
ROKU_DEV_USER=rokudev
ROKU_DEV_PASSWORD=rokudev

# build vars
ENABLE_RALE=true

# dev | production | test
ENV=dev
```

## Project Structure

- `/.vscode` - contains the vscode configuration files
- `/manifest` - contains the code for each enviroment's manifest
- `/plugins` - contains Kopytko and BrighterScript plugins
- `/src` - contains the project source code

## Build Process

### Development

The app is deployed using the VSC `debug` launch task. See [debugging in VSC](https://code.visualstudio.com/docs/editor/debugging).

The VSC `debug` launch task does the following:

1. Triggers the `prevsc` package.json, which transpiles any BrighterScript `/src` code
1. The transpiled (`/src`) code is copied to `/transpiled-src` and then the Kopytko packager is triggered
1. The app is deployed via the BrightScript Language extenstion

## BrighterScript

Any `.bs` files in the `/src` directory will be transpiled.

## Plugins

### BrighterScript

* `plugins/brighterscript/perform-string-replacements.js` - Used to perform string replacements during transpilation

### Kopytko

* `plugins/kopytko/include-rale.js` - Includes the RALE TrackerTask.xml
* `plugins/kopytko/remove-test-code.js` - Removes any test code
