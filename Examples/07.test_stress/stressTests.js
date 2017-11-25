'use strict';

const configuration = require('./testData.json');
const expect = require('chai').expect;
const loadtest = require('loadtest');
const testDefinitions = configuration.stressTests;
const q = require('q');

describe('Stress tests', function () {
  const address = process.env.TEST_HOST;

  it('First test', (done) => {
    let endpointConfig = testDefinitions[0];
    endpointConfig.options.url = `${address}${endpointConfig.relativeUrl}`;

    loadtest.loadTest(endpointConfig.options, function (error, testContext) {
      if (error) {
        throw new Error('Tests failed');
      }
      // show output
      console.log(testContext.endpointConfig.name);
      console.log(testContext.result);

      //validate         
      expect(testContext.result.totalErrors).to.be.within(...testContext.endpointConfig.thresholds.errors);
      expect(testContext.result.meanLatencyMs).to.be.within(...testContext.endpointConfig.thresholds.meanLatency);
      done();
    });
  });
});
