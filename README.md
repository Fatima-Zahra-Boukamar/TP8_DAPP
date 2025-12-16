# Hello World DApp

Une application décentralisée (DApp) complète avec Flutter et Ethereum.

## 📋 Description
Application "Hello World" qui démontre comment stocker et récupérer des données sur la blockchain Ethereum.

## 🚀 Fonctionnalités
- ✅ Contrat intelligent Solidity
- ✅ Interface utilisateur Flutter
- ✅ Lecture/écriture sur blockchain
- ✅ Transactions signées
- ✅ Connexion à Ganache

## 🛠️ Technologies
- **Frontend** : Flutter 3.x, Dart
- **Blockchain** : Solidity 0.5.16, Truffle, Ganache
- **Smart Contract** : HelloWorld.sol
- **Web3** : web3dart, provider


## ⚙️ Installation

### Prérequis
- Node.js v16+
- Flutter SDK 3.0+
- Ganache

### Étapes
```bash
# 1. Cloner le projet
git clone [URL]
cd hello_world_dapp

# 2. Installer dépendances
npm install -g truffle
npm install
flutter pub get

# 3. Lancer Ganache
# Ouvrir Ganache → Quickstart

# 4. Déployer le contrat
truffle compile
truffle migrate --reset

# 5. Lancer l'application
flutter run -d edge  # ou chrome

🎯 Utilisation
L'application se connecte automatiquement à Ganache

Affiche le nom actuel ("Unknown" par défaut)
(screenshots/Image1.jpeg)
Entrez un nouveau nom et cliquez "Mettre à jour"
(screenshots/image2.jpeg)
Attendez la confirmation (3-5 secondes)

Rafraîchissez pour voir le changement
(screenshots/image3.jpeg)
A propos de cette appliation:
(screenshots/info.jpeg)
