let defaults = require("./pa11y.js");

// set chrome path for github actions
defaults.defaults.chromeLaunchConfig = {
	args: ["--no-sandbox", "--disable-setuid-sandbox"],
};

module.exports = defaults;
