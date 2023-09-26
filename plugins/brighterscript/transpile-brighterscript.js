const { ProgramBuilder } = require('brighterscript');

module.exports = (async function transpileBrighterscript(rootDir) {
    const builder = new ProgramBuilder();

    await builder.run({ project: 'bsconfig.json' });
}());
