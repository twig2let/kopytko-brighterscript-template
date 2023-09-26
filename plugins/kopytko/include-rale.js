const fs = require('fs-extra');

module.exports = async function includeRale(rootDir) {
    const trackerTaskPath = 'TrackerTask.xml';
    await fs.copy(trackerTaskPath, `${rootDir}/components/TrackerTask.xml`);
};
