'use strict';

const configuration = require('./testData.json');
const expect = require('chai').expect;
const loadtest = require('loadtest');
const testDefinitions = configuration.stressTests;
const q = require('q');

describe('Stress tests', function () {
  const address = 'https://console.tectonicsandbox.com';

  it('First test', (done) => {
    let endpointConfig = testDefinitions[0];
    endpointConfig.options.url = `${address}${endpointConfig.relativeUrl}`;
    endpointConfig.options.insecure = true;

    console.log(endpointConfig.options.url);
    loadtest.loadTest(endpointConfig.options, function (error, result) {
      if (error) {
        console.log('Tests failed');
        done();        
      }
      // show output
      console.log(endpointConfig.name);
      console.log(result);

      //validate         
      expect(result.totalErrors).to.be.within(...endpointConfig.thresholds.errors);
      expect(result.meanLatencyMs).to.be.within(...endpointConfig.thresholds.meanLatency);
      done();
    });
  });
});
