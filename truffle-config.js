module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*",
    },
    // Configuration spécifique pour les tests
    test: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*",
    },
  },
  contracts_build_directory: "./src/artifacts/",
  compilers: {
    solc: {
      version: "0.5.16",
    },
  },
  // Ajouter cette section pour les tests
  mocha: {
    timeout: 100000,
  },
};
