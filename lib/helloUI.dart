import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contract_linking.dart';

class HelloUI extends StatelessWidget {
  final TextEditingController yourNameController = TextEditingController();

  HelloUI({super.key});

  @override
  Widget build(BuildContext context) {
    var contractLink = Provider.of<ContractLinking>(context);
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World DApp"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              _showInfoDialog(context);
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4361EE).withOpacity(0.05),
              Color(0xFFF8F9FA),
            ],
          ),
        ),
        child: Center(
          child: contractLink.isLoading
              ? _buildLoadingState()
              : SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Carte principale
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(32),
                          child: Column(
                            children: [
                              // Icône et titre
                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Color(0xFF4361EE).withOpacity(0.1),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.account_balance_wallet,
                                  size: 40,
                                  color: Color(0xFF4361EE),
                                ),
                              ),
                              SizedBox(height: 24),

                              Text(
                                "Nom actuel sur la blockchain",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 12),

                              // Nom affiché
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF4CC9F0).withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Color(0xFF4CC9F0).withOpacity(0.3),
                                    width: 1,
                                  ),
                                ),
                                child: Text(
                                  contractLink.deployedName,
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4361EE),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),

                              Text(
                                "Lecture depuis Ethereum",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 32),

                      // Section modification
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Modifier le nom",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[800],
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Le nouveau nom sera stocké sur la blockchain",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 20),

                              // Champ de saisie
                              TextFormField(
                                controller: yourNameController,
                                decoration: InputDecoration(
                                  labelText: "Nouveau nom",
                                  hintText: "Entrez votre nom...",
                                  prefixIcon: Icon(
                                    Icons.edit,
                                    color: Color(0xFF4361EE),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(Icons.clear),
                                    onPressed: () => yourNameController.clear(),
                                  ),
                                ),
                              ),
                              SizedBox(height: 24),

                              // Boutons
                              Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        if (yourNameController
                                            .text.isNotEmpty) {
                                          contractLink
                                              .setName(yourNameController.text);
                                          yourNameController.clear();
                                          _showSuccessSnackbar(context);
                                        } else {
                                          _showErrorSnackbar(context,
                                              "Veuillez entrer un nom");
                                        }
                                      },
                                      icon: Icon(Icons.save, size: 20),
                                      label: Text("Mettre à jour"),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF4361EE),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 16),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  ElevatedButton(
                                    onPressed: () {
                                      contractLink.getName();
                                      _showRefreshSnackbar(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[100],
                                      foregroundColor: Colors.grey[800],
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(16),
                                    ),
                                    child: Icon(
                                      Icons.refresh,
                                      color: Color(0xFF4361EE),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 32),

                      // Informations blockchain
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xFF7209B7).withOpacity(0.05),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xFF7209B7).withOpacity(0.1),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.offline_bolt,
                                  color: Color(0xFF7209B7),
                                  size: 20,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Informations blockchain",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF7209B7),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            _buildInfoRow("Réseau", "Ganache Local"),
                            _buildInfoRow("Port", "8545"),
                            _buildInfoRow("Network ID", "5777"),
                            _buildInfoRow("Smart Contract", "HelloWorld.sol"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),

      // Bouton flottant pour informations
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _showInfoDialog(context);
        },
        icon: Icon(Icons.info_outline),
        label: Text("Infos"),
        backgroundColor: Color(0xFF4361EE),
        foregroundColor: Colors.white,
      ),
    );
  }

  // État de chargement amélioré
  Widget _buildLoadingState() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(
          strokeWidth: 4,
          color: Color(0xFF4361EE),
        ),
        SizedBox(height: 24),
        Text(
          "Connexion à la blockchain...",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(height: 12),
        Text(
          "Vérification du contrat intelligent",
          style: TextStyle(
            color: Colors.grey[500],
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Port 8545",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }

  // Ligne d'information
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  // Snackbars
  void _showSuccessSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.white),
            SizedBox(width: 12),
            Text("Transaction envoyée à la blockchain"),
          ],
        ),
        backgroundColor: Color(0xFF4CAF50),
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  void _showRefreshSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Nom rafraîchi depuis la blockchain"),
        backgroundColor: Color(0xFF2196F3),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _showErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Color(0xFFF44336),
        duration: Duration(seconds: 2),
      ),
    );
  }

  // Dialogue d'information
  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.info, color: Color(0xFF4361EE)),
            SizedBox(width: 12),
            Text("À propos de cette DApp"),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Hello World DApp",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Cette application décentralisée stocke le nom dans un smart contract sur la blockchain Ethereum.",
                style: TextStyle(height: 1.5),
              ),
              SizedBox(height: 16),
              _buildInfoItem("📝", "Chaque modification est une transaction"),
              _buildInfoItem("⛽", "Coûte du gas (ETH virtuel)"),
              _buildInfoItem("⚡", "Transaction minée en ~3 secondes"),
              _buildInfoItem("🔗", "Données immuables et transparentes"),
              SizedBox(height: 16),
              Text(
                "Technologies : Flutter, web3dart, Solidity, Ganache",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Fermer", style: TextStyle(color: Color(0xFF4361EE))),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String emoji, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(emoji, style: TextStyle(fontSize: 16)),
          SizedBox(width: 12),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
