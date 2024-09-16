let defaults = require("./pa11y.js");

// set chrome path for github actions
defaults.defaults.chromeLaunchConfig = {
	executablePath: "/usr/bin/google-chrome",
	args: ["--no-sandbox", "--disable-setuid-sandbox"],
};

module.exports = defaults;
