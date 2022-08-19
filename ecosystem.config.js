module.exports = {
  apps : [
    {
      name: "directus-app",
      script: "npx",
      args: "directus start",
      restart_delay: 500
    }
  ]
}
