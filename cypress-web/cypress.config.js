const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl: 'https://www.vr.com.br/',
    pageLoadTimeout: 180000
  },
});
