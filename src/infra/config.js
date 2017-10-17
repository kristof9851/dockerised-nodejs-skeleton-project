const convict = require('convict');

const config = getConfig();
config.validate({allowed: 'strict'});

module.exports = config;
module.exports.logCurrentConfig = logCurrentConfig;

function getConfig() {
  return convict({
    nodeEnv: {
      doc: 'Running in an environment, or on a developer machine? Mainly used to decide log structure etc',
      format: ['production', 'dev'],
      env: 'NODE_ENV',
      default: 'dev'
    }
  });
}

function logCurrentConfig(log = console) {
  log.info('Current config: %s', config.toString().replace(/\n/g, '').replace(/"/g, '\''));
}
