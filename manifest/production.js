const path = require('path')
const packageJson = require(path.join(process.cwd(), 'package.json'));
const versionParts = packageJson.version.split('.');

module.exports = {
    rsg_version: "1.2",
    major_version: parseInt(versionParts[0], 10),
    minor_version: parseInt(versionParts[1], 10),
    build_version: parseInt(versionParts[2], 10),
    bs_const: { RALE: false }
};