import 'package:flutter/material.dart';

void main() {
  runApp(const MenuRestaurantApp());
}

class MenuRestaurantApp extends StatelessWidget {
  const MenuRestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nouha\'s Restaurant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        useMaterial3: true,
      ),
      home: const RestaurantMenuPage(),
    );
  }
}

// ========== MODÈLE DE DONNÉES ==========
/// Classe représentant un plat du menu
class Plat {
  final String nom;
  final String description;
  final double prix;
  final String imageUrl;
  final String categorie;

  Plat({
    required this.nom,
    required this.description,
    required this.prix,
    required this.imageUrl,
    required this.categorie,
  });
}

// ========== DONNÉES DU MENU - FUSION MAROCO-CORÉENNE ==========
/// Liste de tous les plats du restaurant Nouha's avec images représentatives
final List<Plat> menuComplet = [
  // FORMULES
  Plat(
    nom: 'Formule Seoul-Marrakech',
    description: 'Entrée fusion + Plat principal + Dessert + Thé à la menthe',
    prix: 24.90,
    imageUrl: 'https://images.unsplash.com/photo-1504674900247-0877df9cc836',
    categorie: 'Formules',
  ),
  Plat(
    nom: 'Formule Express Fusion',
    description: 'Plat fusion au choix + Boisson traditionnelle',
    prix: 16.50,
    imageUrl: 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1',
    categorie: 'Formules',
  ),

  // ENTRÉES
  Plat(
    nom: 'Kimchi Zaalouk',
    description: 'Caviar d\'aubergines marocain épicé au kimchi coréen',
    prix: 9.50,
    imageUrl: 'https://images.unsplash.com/photo-1589621316382-008455b857cd',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Briouates au Bulgogi',
    description: 'Pastillas croustillantes farcies au bœuf bulgogi mariné',
    prix: 10.90,
    imageUrl: 'https://images.unsplash.com/photo-1563245372-f21724e3856d',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Salade Harira-Bibimbap',
    description: 'Légumes croquants, lentilles, riz, œuf mollet, sauce harissa-gochujang',
    prix: 11.50,
    imageUrl: 'https://images.unsplash.com/photo-1623428187969-5da2dcea5ebf',
    categorie: 'Entrées',
  ),
  Plat(
    nom: 'Mandu aux épices marocaines',
    description: 'Raviolis coréens vapeur aux herbes du souk',
    prix: 8.90,
    imageUrl: 'https://images.unsplash.com/photo-1534422298391-e4f8c172dddb',
    categorie: 'Entrées',
  ),

  // PLATS
  Plat(
    nom: 'Tagine Bibimbap Royal',
    description: 'Riz chaud, légumes confits du tagine, viande épicée, œuf, sauce gochujang-ras el hanout',
    prix: 22.90,
    imageUrl: 'https://images.unsplash.com/photo-1590301157890-4810ed352733',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Couscous Kimchi',
    description: 'Semoule fine aux sept légumes, agneau confit, kimchi fermenté maison',
    prix: 21.50,
    imageUrl: 'https://images.unsplash.com/photo-1565557623262-b51c2513a641',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Kefta Tteokbokki',
    description: 'Boulettes d\'agneau épicées, gâteaux de riz coréens, sauce tomate harissa',
    prix: 19.90,
    imageUrl: 'https://images.unsplash.com/photo-1633436375095-a97fc82d38db',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Poulet Gochujang aux olives',
    description: 'Cuisses de poulet laquées sauce piquante coréenne, citrons confits, olives violettes',
    prix: 18.90,
    imageUrl: 'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Poisson Chermoula-Ganjang',
    description: 'Daurade grillée, marinade chermoula-soja, légumes sautés au sésame',
    prix: 23.50,
    imageUrl: 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2',
    categorie: 'Plats',
  ),
  Plat(
    nom: 'Japchae aux dattes',
    description: 'Nouilles de patate douce sautées, légumes croquants, dattes Medjool',
    prix: 17.90,
    imageUrl: 'https://images.unsplash.com/photo-1585032226651-759b368d7246',
    categorie: 'Plats',
  ),

  // DESSERTS
  Plat(
    nom: 'Bingsu aux dattes et miel',
    description: 'Glace pilée coréenne, dattes fondantes, miel d\'oranger, amandes caramélisées',
    prix: 8.50,
    imageUrl: 'https://images.unsplash.com/photo-1563805042-7684c019e1cb',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Chebakia au Sésame noir',
    description: 'Roses de miel marocaines croustillantes, glace sésame noir coréenne',
    prix: 7.90,
    imageUrl: 'https://images.unsplash.com/photo-1578985545062-69928b1d9587',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Hotteok à la fleur d\'oranger',
    description: 'Crêpe coréenne sucrée fourrée miel-cannelle, eau de fleur d\'oranger',
    prix: 6.90,
    imageUrl: 'https://images.unsplash.com/photo-1519869325930-281384150729',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Baklava-Yakgwa',
    description: 'Mille-feuilles miel-pistaches rencontre biscuit coréen au miel',
    prix: 7.50,
    imageUrl: 'https://images.unsplash.com/photo-1559164012-964f4c610000',
    categorie: 'Desserts',
  ),

  // BOISSONS
  Plat(
    nom: 'Thé à la menthe-Yuzu',
    description: 'Thé vert menthe fraîche, agrume yuzu coréen',
    prix: 4.50,
    imageUrl: 'https://images.unsplash.com/photo-1556679343-c7306c1976bc',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Sikhye à la rose',
    description: 'Boisson de riz sucré coréenne parfumée à l\'eau de rose',
    prix: 5.50,
    imageUrl: 'https://images.unsplash.com/photo-1551538827-9c037cb4f32a',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Jus d\'orange-gingembre',
    description: 'Oranges pressées, gingembre frais, miel',
    prix: 5.00,
    imageUrl: 'https://images.unsplash.com/photo-1600271886742-f049cd451bba',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Café épicé Seoul-Casablanca',
    description: 'Expresso, cardamome, cannelle, mousse de lait',
    prix: 4.90,
    imageUrl: 'https://images.unsplash.com/photo-1509042239860-f550ce710b93',
    categorie: 'Boissons',
  ),
  Plat(
    nom: 'Sujeonggwa (Punch coréen)',
    description: 'Infusion cannelle-gingembre glacée, kakis séchés',
    prix: 5.50,
    imageUrl: 'https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b',
    categorie: 'Boissons',
  ),
];

/// Liste des catégories disponibles
final List<String> categories = [
  'Formules',
  'Entrées',
  'Plats',
  'Desserts',
  'Boissons',
];

// ========== PAGE PRINCIPALE ==========
class RestaurantMenuPage extends StatefulWidget {
  const RestaurantMenuPage({super.key});

  @override
  State<RestaurantMenuPage> createState() => _RestaurantMenuPageState();
}

class _RestaurantMenuPageState extends State<RestaurantMenuPage> {
  // Variable d'état pour suivre la catégorie sélectionnée
  String categorieSelectionnee = 'Formules';

  /// Filtrer les plats selon la catégorie sélectionnée
  List<Plat> get platsAffiches {
    return menuComplet
        .where((plat) => plat.categorie == categorieSelectionnee)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar avec le titre du restaurant
      appBar: AppBar(
        title: const Text(
          'Nouha\'s Restaurant',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Colors.purple,
        elevation: 4,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Sous-titre du restaurant
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple.shade50, Colors.white],
              ),
            ),
            child: const Text(
              '🌶️ Fusion Maroco-Coréenne 🌶️',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
                letterSpacing: 0.5,
              ),
            ),
          ),

          // ========== BARRE DE CATÉGORIES (SCROLL HORIZONTAL) ==========
          /// Container avec une hauteur fixe contenant la liste horizontale des catégories
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.purple.shade50,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ListView.builder(
              // Défilement horizontal pour les catégories
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final categorie = categories[index];
                final estSelectionne = categorie == categorieSelectionnee;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ChoiceChip(
                    // Bouton de catégorie avec style conditionnel
                    label: Text(
                      categorie,
                      style: TextStyle(
                        color: estSelectionne ? Colors.white : Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    selected: estSelectionne,
                    onSelected: (selected) {
                      // Mise à jour de la catégorie sélectionnée
                      setState(() {
                        categorieSelectionnee = categorie;
                      });
                    },
                    backgroundColor: Colors.white,
                    selectedColor: Colors.purple,
                    elevation: estSelectionne ? 4 : 2,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                );
              },
            ),
          ),

          // ========== LISTE DES PLATS (SCROLL VERTICAL) ==========
          /// Widget Expanded permet à la liste d'occuper tout l'espace restant
          Expanded(
            child: platsAffiches.isEmpty
                ? const Center(
              child: Text(
                'Aucun plat dans cette catégorie',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
                : ListView.builder(
              // Liste performante qui génère les éléments à la demande
              padding: const EdgeInsets.all(12),
              itemCount: platsAffiches.length,
              itemBuilder: (context, index) {
                final plat = platsAffiches[index];
                // Utilisation d'un widget réutilisable pour chaque carte
                return PlatCard(plat: plat);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ========== WIDGET RÉUTILISABLE : CARTE DE PLAT ==========
/// Widget personnalisé pour afficher un plat sous forme de carte
/// Ce composant est réutilisable et évite la duplication de code
class PlatCard extends StatelessWidget {
  final Plat plat;

  const PlatCard({super.key, required this.plat});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Carte avec élévation pour un effet de profondeur
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ========== IMAGE DU PLAT ==========
          /// ClipRRect permet d'arrondir les coins de l'image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              plat.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              // Gestion de l'erreur si l'image ne charge pas
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  color: Colors.grey.shade300,
                  child: const Icon(Icons.restaurant, size: 80, color: Colors.grey),
                );
              },
              // Widget de chargement pendant que l'image se télécharge
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  height: 200,
                  color: Colors.grey.shade200,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.purple,
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),

          // ========== INFORMATIONS DU PLAT ==========
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row pour aligner le nom et le prix sur la même ligne
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Nom du plat (prend l'espace disponible)
                    Expanded(
                      child: Text(
                        plat.nom,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Prix avec mise en forme
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '${plat.prix.toStringAsFixed(2)} €',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Description du plat
                Text(
                  plat.description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}