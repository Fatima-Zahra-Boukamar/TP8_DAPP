# 🚀 Hello World DApp - Blockchain

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Ethereum](https://img.shields.io/badge/Ethereum-3C3C3D?style=for-the-badge&logo=ethereum&logoColor=white)
![Blockchain](https://img.shields.io/badge/Blockchain-121D33?style=for-the-badge&logo=blockchain-dot-com&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

Une application décentralisée (DApp) complète développée avec Flutter et Ethereum qui démontre comment stocker et récupérer des données sur la blockchain.

## 📋 Description

Cette DApp "Hello World" est une application éducative qui montre les fondamentaux du développement décentralisé :
- Interaction avec un smart contract Ethereum
- Lecture/écriture de données sur la blockchain
- Interface utilisateur moderne avec Flutter
- Connexion à une blockchain locale (Ganache)

## ✨ Fonctionnalités

| Fonctionnalité | Statut | Description |
|---------------|--------|-------------|
| ✅ Contrat intelligent Solidity | Complète | Smart contract `HelloWorld.sol` déployé |
| ✅ Interface Flutter | Complète | Interface utilisateur moderne avec Material 3 |
| ✅ Lecture blockchain | Complète | Récupération du nom stocké sur la blockchain |
| ✅ Écriture blockchain | Complète | Modification du nom via transaction signée |
| ✅ Connexion Ganache | Complète | Connexion automatique à la blockchain locale |
| ✅ Design responsive | Complète | Adapté desktop et mobile |

## 🛠️ Stack Technologique

- **Frontend** : Flutter 3.x, Dart, Material 3
- **Blockchain** : Solidity 0.8.x, Ethereum
- **Environnement dev** : Ganache, Truffle Suite
- **Bibliothèques** : web3dart, http, provider
- **Outils** : Git, GitHub, VS Code

## 📸 Démonstration

### Interface Principale
![Interface de l'application](https://github.com/Fatima-Zahra-Boukamar/TP8_DAPP/raw/main/screenshots/Image1.jpeg)
*Interface moderne affichant le nom actuel stocké sur la blockchain*

### Modification du Nom
![Formulaire de modification](https://github.com/Fatima-Zahra-Boukamar/TP8_DAPP/raw/main/screenshots/image2.jpeg)
*Formulaire pour mettre à jour le nom via une transaction blockchain*

### Résultat de la Transaction
![Résultat de la modification](https://github.com/Fatima-Zahra-Boukamar/TP8_DAPP/raw/main/screenshots/image3.jpeg)
*Confirmation de la transaction et affichage du nouveau nom*

### À Propos
![Informations sur l'application](https://github.com/Fatima-Zahra-Boukamar/TP8_DAPP/raw/main/screenshots/info.jpeg)
*Informations techniques et configuration de l'application*

## ⚙️ Installation & Configuration

### Prérequis
- [Flutter SDK](https://flutter.dev) (version 3.0+)
- [Ganache](https://trufflesuite.com/ganache/) (blockchain locale)
- [Node.js](https://nodejs.org/) (pour Truffle)
- [Git](https://git-scm.com/)

### 🚀 Étapes d'installation

1. **Cloner le dépôt**
   ```bash
   git clone https://github.com/Fatima-Zahra-Boukamar/TP8_DAPP.git
   cd TP8_DAPP
2. **Installer les dépendances Flutter**
    ```bash
     flutter pub get
3. **Configurer Ganache**
 - Lancer Ganache
 - Utiliser le réseau "Quickstart"
 - Noter le RPC Server (généralement http://127.0.0.1:8545)
   
4. **Déployer le contrat intelligent (optionnel - déjà déployé)**
      ```bash
     # Si vous avez Truffle installé
      npm install -g truffle
      truffle compile
      truffle migrate --reset
5. **Lancer l'application**
   ```bash
    flutter run -d edge
  # ou pour Chrome
    ```bash
    flutter run -d chrome

  📖 Utilisation
1. Lancez Ganache sur le port 8545
2. Exécutez l'application Flutter
3. L'application se connecte automatiquement à Ganache
4. Le nom actuel s'affiche depuis la blockchain
5. Entrez un nouveau nom et cliquez sur "Mettre à jour"
6. Attendez la confirmation de la transaction (~3-5 secondes)
7. Rafraîchissez pour voir le changement

👩‍💻 Auteur
- Fatima Zahra Boukamar
- Étudiante en M2-ADIA
- 🌐 GitHub : @Fatima-Zahra-Boukamar
- Contexte : Projet réalisé dans le cadre du cours de Blockchain - Semestre 9, 2025.
