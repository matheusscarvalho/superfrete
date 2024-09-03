const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const preprocessor = require("@badeball/cypress-cucumber-preprocessor");
const createEsbuildPlugin = require("@badeball/cypress-cucumber-preprocessor/esbuild");

module.exports = defineConfig({
    e2e: {
        baseUrl: "https://web.superfrete.com/",
        setupNodeEvents(on, config) {
            on("file:preprocessor", createBundler({plugins: [createEsbuildPlugin.default(config)],}));
            preprocessor.addCucumberPreprocessorPlugin(on, config);
            return config;
        },
        specPattern: "**/*.feature",
    },
    videosFolder: "cypress/reports/videos",
    screenshotsFolder: "cypress/reports/screenshots",
    reporter: 'cypress-mochawesome-reporter',
    viewportWidth: 1366,
    viewportHeight: 768,
    defaultCommandTimeout: 30000,
    reporterOptions: {
        charts: true,
        reportPageTitle: 'custom-title',
        embeddedScreenshots: true,
        inlineAssets: true,
        saveAllAttempts: false,
    },
});
