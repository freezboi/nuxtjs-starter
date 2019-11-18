module.exports = {
  apps : [{
    name: 'client',
    script: 'node_modules/nuxt-start/bin/nuxt-start.js',
    instances: 1,
    args: 'start',
    max_memory_restart: '250M',
    env_production: {
      PORT: 3000,
      NODE_ENV: 'production'
    }
  }]
};
