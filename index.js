const core = require('@actions/core');
const exec = require("@actions/exec");

async function run() {
    try {
        const appName = core.getInput('app-name');
        const clientPath = core.getInput('client-dir');
        const src = __dirname;
        await exec.exec(`${src}/deploy_client.sh  ${appName} ${clientPath}`) ;
    } catch (error) {
        core.setFailed(error.message);
    }
}

run();