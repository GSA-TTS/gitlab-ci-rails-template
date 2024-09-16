let defaults = require("./pa11y.js");

// set chrome path for github actions
defaults.defaults.chromeLaunchConfig = {
	executablePath:
		"/root/.cache/puppeteer/chrome/linux-128.0.6613.137/chrome-linux64/chrome",
	args: ["--no-sandbox", "--disable-setuid-sandbox"],
};

module.exports = defaults;
