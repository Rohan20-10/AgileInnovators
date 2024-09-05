import {
  spfOne,
  spfTwo,
  spfThree,
  spfFour,
  bestSellerOne,
  bestSellerTwo,
  bestSellerThree,
  bestSellerFour,
  newArrOne,
  newArrTwo,
  newArrThree,
  newArrFour,
  imprimante1,
  imprimante2,
  imprimante4,
  imprimante5,
  imprimante6,
  imprimante7,
  imprimante8,
  imprimante9,
  encre1,
  encre2,
  encre3,
  encre4,
  ruban1,
  ruban2,
  ruban3,
  ruban4,
  bac1,
  bac2,
  bac3,
  bac4,
  pdf1,
  IMPRIMANTE_PANTUM_CP2200DW,
  IMPRIMANTE_PANTUM_BM5100FDW,
  IMPRIMANTE_PANTUM_M6609N,
  IMPRIMANTE_PANTUM_P3300DN,
  IMPRIMANTE_PANTUM_P3300DW,
  IMPRIMANTE_PANTUM_P2509W,
  IMPRIMANTE_PANTUM_BP5100DN,
  IMPRIMANTE_PANTUM_M6559N,
  IMPRIMANTE_PANTUM_P2509,
  hp1,
  hp2,
  hp3,
  ricoh1,
  ricoh2,
  ricoh3,
  ricoh4,
  ricoh5,
  espson1,
  espson2,
  saree,
  kurtapajama,
  wallhang,
  pujathali,
} from '../assets/images/index'

import './style.css'

// =================== NavBarList Start here ====================
export const navBarList = [
  {
    _id: 1001,
    title: 'Home',
    link: '/',
  },
  {
    _id: 1002,
    title: 'Shop',
    link: '/shop',
  },
  {
    _id: 1003,
    title: 'About',
    link: '/about',
  },
  {
    _id: 1004,
    title: 'Contact',
    link: 'contact',
  },
  {
    _id: 1005,
    title: 'Journal',
    link: '/journal',
  },
]
// =================== NavBarList End here ======================
// =================== Special Offer data Start here ============
export const SplOfferData = [
  {
    _id: '201',
    img: imprimante1,
    productName: 'Blockprint Saree',
    price: '2500.00',
    color: 'Blank and White',
    badge: true,
    des: 'Silk Block Print Saree.',
    cat: 'imprimante',
  },
  {
    _id: '9006',
    img: imprimante2,
    productName: 'Puja Thali',
    price: '180.00',
    color: 'Gray',
    badge: true,
    des: 'Puja Thali.',
    cat: 'imprimante',
  },
  {
    _id: '203',
    img: imprimante1,
    productName: 'Kurta - Pajama Set',
    price: '1800.00',
    color: 'Mixed',
    badge: true,
    des: 'Kurta Pajama Set',
    cat: 'imprimante',
  },
  {
    _id: '204',
    img: imprimante4,
    productName: 'Wall Hanging Lotus ',
    price: '220.00',
    color: 'Black',
    badge: true,
    des: 'Wall hanging for decoration.',
    cat: 'imprimante',
  },
  {
    _id: '205',
    img: imprimante6,
    productName: 'Rangoli',
    price: '25.00',
    color: 'Mixed',
    badge: true,
    des: 'Available in 6 colors',
    cat: 'imprimante',
  },
  {
    _id: '206',
    img: imprimante7,
    productName: 'Block Print Saree',
    price: '220.00',
    color: 'Black',
    badge: true,
    des: '.',
    cat: 'imprimante',
  },
  {
    _id: '207',
    img: imprimante8,
    productName: 'Rangoli',
    price: '25.00',
    color: 'Mixed',
    badge: true,
    des: 'Rangoli.',
    cat: 'imprimante',
  },
  {
    _id: '208',
    img: imprimante9,
    productName: 'Kumkum',
    price: '220.00',
    color: 'Black',
    badge: true,
    des: '',
    cat: 'imprimante',
  },
  {
    _id: '209',
    img: encre1,
    productName: 'Puja Thali',
    price: '25.00',
    color: 'Mixed',
    badge: true,
    des: '.',
    cat: 'ancre',
  },
  {
    _id: '210',
    img: encre2,
    productName: 'Block Print Saree',
    price: '220.00',
    color: 'Black',
    badge: true,
    des: '.',
    cat: 'ancre',
  },
  // {
  //   _id: '211',
  //   img: encre3,
  //   productName: 'encre',
  //   price: '25.00',
  //   color: 'Mixed',
  //   badge: true,
  //   des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
  //   cat: 'ancre',
  // },
  // {
  //   _id: '212',
  //   img: encre4,
  //   productName: 'encre',
  //   price: '220.00',
  //   color: 'Black',
  //   badge: true,
  //   des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
  //   cat: 'ancre',
  // },
  // {
  //   _id: '213',
  //   img: ruban1,
  //   productName: 'Ruban',
  //   price: '25.00',
  //   color: 'Mixed',
  //   badge: true,
  //   des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
  //   cat: 'Ruban',
  // },
  // {
  //   _id: '214',
  //   img: ruban2,
  //   productName: 'Ruban',
  //   price: '220.00',
  //   color: 'Black',
  //   badge: true,
  //   des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
  //   cat: 'Ruban',
  // },
  // {
  //   _id: '215',
  //   img: ruban3,
  //   productName: 'Ruban',
  //   price: '25.00',
  //   color: 'Mixed',
  //   badge: true,
  //   des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
  //   cat: 'Ruban',
  // },
  // {
  //   _id: '216',
  //   img: ruban4,
  //   productName: 'Ruban',
  //   price: '220.00',
  //   color: 'Black',
  //   badge: true,
  //   des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
  //   cat: 'Ruban',
  // },
  // {
  //   _id: '217',
  //   img: bac1,
  //   productName: 'Bac de dechet',
  //   price: '25.00',
  //   color: 'Mixed',
  //   badge: true,
  //   des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
  //   cat: 'Bac',
  // },
  // {
  //   _id: '219',
  //   img: bac2,
  //   productName: 'Bac de dechet',
  //   price: '220.00',
  //   color: 'Black',
  //   badge: true,
  //   des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
  //   cat: 'Bac',
  // },
  // {
  //   _id: '220',
  //   img: bac3,
  //   productName: 'Bac de dechet',
  //   price: '25.00',
  //   color: 'Mixed',
  //   badge: true,
  //   des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
  //   cat: 'Bac',
  // },
  // {
  //   _id: '221',
  //   img: bac4,
  //   productName: 'Bac de dechet',
  //   price: '220.00',
  //   color: 'Black',
  //   badge: true,
  //   des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
  //   cat: 'Bac',
  // },
]
// =================== Special Offer data End here ==============

// =================== PaginationItems Start here ===============

export const paginationItems = [
  {
    _id: '201',
    img: IMPRIMANTE_PANTUM_CP2200DW,
    productName: 'Blockprint Saree',
    price: '35.00',
    color: 'Blanc', // Assuming the saree is white; change if needed
    badge: true,
    brand: 'Handcrafted Collection', // Change to the appropriate brand if necessary
    des: 'Elegant Blockprint Saree made with traditional techniques',
    cat: 'Saree',
    pdf: pdf1, // If you have a PDF related to the saree, otherwise this can be removed
    ficheTech: [
      { label: 'Fabric', value: 'Cotton' },
      { label: 'Design', value: 'Hand Block Printed' },
      { label: 'Length', value: '6.5 meters including blouse piece' },
      { label: 'Care Instructions', value: 'Dry clean only' },
      { label: 'Color', value: 'Blanc' }, // Adjust according to the actual color
      { label: 'Occasion', value: 'Casual, Festive, Traditional' },
      { label: 'Blouse Piece', value: 'Included' },
      { label: 'Pattern', value: 'Floral and geometric motifs' },
      { label: 'Country of Origin', value: 'India' },
    ],
  },
  {
    _id: '202',
    img: IMPRIMANTE_PANTUM_BM5100FDW,
    productName: 'Puja Thali',
    price: '450',
    color: 'Gold', // Assuming the thali is gold-colored; adjust if needed
    badge: true,
    brand: 'Traditional Crafts', // Replace with the appropriate brand
    des: 'Elegant Puja Thali set for traditional rituals, made from high-quality metal with intricate designs. Perfect for religious ceremonies and festive occasions.',
    cat: 'Puja Items',
    pdf: pdf1, // If you have a PDF related to the Puja Thali, otherwise this can be removed
    ficheTech: [
      { label: 'Material', value: 'Brass' }, // or other appropriate material like stainless steel
      { label: 'Diameter', value: '12 inches' }, // Adjust the size if necessary
      { label: 'Weight', value: '800 grams' }, // Approximate weight
      { label: 'Design', value: 'Traditional engraved motifs' },
      {
        label: 'Includes',
        value: 'Thali, Diya, Bell, Kumkum Holder, Small Bowl',
      },
      { label: 'Usage', value: 'Puja rituals, Festive occasions' },
      { label: 'Care Instructions', value: 'Clean with a soft, dry cloth' },
      { label: 'Color', value: 'Gold' }, // Adjust according to the actual color
      { label: 'Country of Origin', value: 'India' },
    ],
  },

  {
    _id: '203',
    img: IMPRIMANTE_PANTUM_BP5100DN,
    productName: 'Kurta Pajama Set',
    price: '450',
    color: 'White', // Assuming the set is white; adjust if needed
    badge: true,
    brand: 'Traditional Attire', // Replace with the appropriate brand
    des: 'Elegant Kurta Pajama set, perfect for traditional and festive occasions.',
    cat: 'Clothing',
    pdf: pdf1, // If you have a PDF related to the Kurta Pajama Set, otherwise this can be removed
    ficheTech: [
      { label: 'Fabric', value: 'Cotton' }, // Or silk, linen, etc.
      { label: 'Size Options', value: 'Small, Medium, Large, XL' },
      { label: 'Color', value: 'White' }, // Adjust according to the actual color
      { label: 'Design', value: 'Embroidered' }, // Or plain, printed, etc.
      { label: 'Occasion', value: 'Festive, Casual, Traditional' },
      { label: 'Care Instructions', value: 'Machine wash cold, gentle cycle' },
      { label: 'Sleeve Length', value: 'Long sleeves' },
      { label: 'Pajama Type', value: 'Churidar' }, // Or straight, dhoti, etc.
      { label: 'Country of Origin', value: 'India' },
    ],
  },
  {
    _id: '205',
    img: IMPRIMANTE_PANTUM_M6609N,
    productName: 'Wall Hanging Set',
    price: '450',
    color: 'Multicolor', // Assuming the set is multicolored; adjust if needed
    badge: true,
    brand: 'Home Decor',
    des: 'Beautiful wall hanging set with intricate designs, perfect for home decor.',
    cat: 'Home Decor',
    pdf: pdf1, // If you have a PDF related to the Wall Hanging Set, otherwise this can be removed
    ficheTech: [
      { label: 'Material', value: 'Wood and Metal' }, // Or any other relevant material
      { label: 'Dimensions', value: '24x18 inches (each piece)' }, // Adjust as necessary
      { label: 'Design', value: 'Handcrafted with traditional motifs' },
      { label: 'Color', value: 'Multicolor' }, // Adjust according to the actual color
      { label: 'Set Includes', value: '3 wall hangings' }, // Or the number of items in the set
      { label: 'Mounting Type', value: 'Wall-mounted' },
      { label: 'Weight', value: '1.5 kg (total)' }, // Approximate weight
      { label: 'Care Instructions', value: 'Wipe with a dry cloth' },
      { label: 'Country of Origin', value: 'India' },
    ],
  },

  {
    _id: '20005',
    img: IMPRIMANTE_PANTUM_M6559N,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Pantum',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'gtin	', value: 'M6559N      ' },
      { label: 'Marque	', value: 'PANTUM      ' },
      { label: 'fonctions	', value: 'Monofonction      ' },
      { label: 'Technologie d impression		', value: 'Laser      ' },
      { label: 'Impression	', value: 'Noir & Blanc      ' },
      { label: 'Vitesse du Processeur		', value: '600MHz      ' },
      {
        label: 'Capacité papier		',
        value: 'Capacité standard: 1 600 pages      ',
      },
      { label: 'Gestion d entrée Papier Standard		', value: '150 pages      ' },
      { label: 'Premiére Page Imprimée		', value: 'Moins de 7.8s      ' },
      { label: 'Cycle d utilisation Mensuel		', value: '15 000 pages      ' },
      {
        label: 'Résolution d impression		',
        value: 'Max. 1 200 × 1 200 ppp      ',
      },
      {
        label: "Résolution d'impression Noir		",
        value: 'Max. 1 200 × 1 200 ppp      ',
      },
      { label: 'formats		', value: 'A4      ' },
      { label: 'Sortie papier		', value: '100 pages      ' },
      {
        label: 'Vitesse de Copie Noir Blanc		',
        value: '22 ppm (A4) / 23 ppm (Lettre)      ',
      },
      { label: 'Poids		', value: '4,75 kg      ' },
    ],
  },

  {
    _id: '206',
    img: IMPRIMANTE_PANTUM_P3300DN,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Pantum',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'gtin	', value: 'P3300DN      ' },
      { label: 'fonctions	', value: 'Monofonction      ' },
      { label: 'Mémoire	', value: '256MO      ' },
      { label: 'Technologie d impression		', value: 'laser      ' },
      { label: 'Impression		', value: 'Noir & Blanc      ' },
      { label: 'Connectivite		', value: 'Réseau      ' },
      { label: 'Vitesse du Processeur		', value: '350 MHz      ' },
      { label: 'Type ecran		', value: 'LCD 2 lignes      ' },
      {
        label: 'Consommation d énergie		',
        value:
          'Impression : 525 W en moyenne Veille : 50 W en veille : moins de 2 W      ',
      },
      {
        label: 'Gestion d entrée Papier Standard		',
        value: "Papier Bac d'alimentation: 250pages      ",
      },
      { label: 'Premiére Page Imprimée		', value: 'Moins de 8,2 secondes      ' },
      {
        label: 'Vitesse d impression Noir		',
        value: '33 ppm (A4) / 35 ppm (Lettre)      ',
      },
      { label: 'Cycle d utilisation Mensuel		', value: '60000pages      ' },
      {
        label: 'Résolution d impression		',
        value: '1 200 x 1 200 dpi (maximum)      ',
      },
      { label: 'formats	', value: 'A4      ' },
      {
        label: 'Connecteurs		',
        value: 'USB2.0 haut débit / Ethernet：IEEE 802.3 10/100Base-Tx      ',
      },
      { label: 'Fonctionnalités		', value: 'Impression      ' },
      {
        label: 'Volume de Pages Mensuel Recommandé		',
        value: '750 à 3 500 pages      ',
      },
      { label: 'Dimensions		', value: '354 x 334 x 232mm      ' },
      { label: 'Garantie	', value: '1ANS      ' },
    ],
  },

  {
    _id: '207',
    img: IMPRIMANTE_PANTUM_P3300DW,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Pantum',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'gtin		', value: 'P3300DW      ' },
      { label: 'fonctions	', value: 'Monofonction      ' },
      { label: 'Mémoire	', value: '256 Mo      ' },
      { label: 'Technologie d impression		', value: 'Laser      ' },
      { label: 'Connectivite	', value: 'WIFI      ' },
      { label: 'Vitesse du Processeur		', value: '350 MHz      ' },
      { label: 'Type ecran		', value: 'LCD 2 lignes      ' },
      {
        label: 'Consommation d énergie		',
        value:
          'Impression : 525 W en moyenne Veille : 50 W en veille : moins de 2 W      ',
      },
      {
        label: 'Gestion d entrée Papier Standard		',
        value: "Papier Bac d'alimentation: 250pages      ",
      },
      { label: 'Premiére Page Imprimée		', value: 'Moins de 8,2 secondes      ' },
      {
        label: 'Vitesse d impression Noir		',
        value: '33 ppm (A4) / 35 ppm (Lettre)      ',
      },
      { label: 'Cycle d utilisation Mensuel		', value: '60000pages      ' },
      { label: 'Résolution d impression		', value: 'Max.1200x1200 dpi      ' },
      {
        label: 'Volume de Pages Mensuel Recommandé		',
        value: '750 à 3 500 pages      ',
      },
      {
        label: 'Interface Réseau	',
        value:
          'Ethernet USB 2.0 haut débit : Wi-Fi IEEE 802.3 10/100Base-Tx : IEEE 802.11b/g/n      ',
      },
      {
        label: "Contenu de L'emballage		",
        value:
          'Imprimante - Cordon d’alimentation - Câble d’interface USB - Plateau de sortie - CD-ROM - Guide de configuration rapide      ',
      },
      { label: 'Garantie	', value: '1 ANS      ' },
    ],
  },

  {
    _id: '208',
    img: IMPRIMANTE_PANTUM_P2509W,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Pantum',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'gtin	', value: 'P2509W      ' },
      { label: 'fonctions	', value: 'Monofonction      ' },
      { label: 'Technologie d impression		', value: 'Laser      ' },
      { label: 'Ecran Tactile		', value: 'Non      ' },
      { label: 'Connectivite	', value: 'WiFi      ' },
      { label: 'Vitesse du Processeur		', value: '600MHz      ' },
      {
        label: 'Capacité papier		',
        value: 'Capacité standard: 1 600 pages      ',
      },
      { label: 'Premiére Page Imprimée		', value: 'Moins de 7.8s      ' },
      { label: 'Cycle d utilisation Mensuel		', value: '15 000 pages      ' },
      {
        label: 'Résolution d impression		',
        value: 'Max. 1 200 × 1 200 ppp      ',
      },
      { label: 'formats	', value: 'A4      ' },
      { label: 'Connecteurs		', value: 'USB 2.0, Wi-Fi      ' },
      {
        label: 'Vitesse de Copie Noir Blanc		',
        value: '22 ppm (A4) / 23 ppm (Lettre)      ',
      },
      {
        label: "Contenu de L'emballage		",
        value:
          'Imprimante - Cordon d’alimentation - Câble d’interface USB - Plateau de sortie - CD-ROM - Guide de configuration rapide      ',
      },
      { label: 'Dimensions		', value: '337 x 220 x 178 mm      ' },
    ],
  },
  {
    _id: '233',
    img: IMPRIMANTE_PANTUM_P2509,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Pantum',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [],
  },
  {
    _id: '220',
    img: bac3,
    productName: 'Bac de dechet',
    price: '25.00',
    color: 'Mixed',
    badge: true,
    des: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic excepturi quibusdam odio deleniti reprehenderit facilis.',
    cat: 'Bac',
  },
  {
    _id: '221',
    img: bac4,
    productName: 'Demo',
    price: '220.00',
    color: 'Black',
    badge: true,
    des: 'Demo',
    cat: 'Bac',
  },
  {
    _id: '215',
    img: ruban3,
    productName: 'Demo',
    price: '25.00',
    color: 'Mixed',
    badge: true,
    des: 'Demo',
    cat: 'Ruban',
  },
  {
    _id: '216',
    img: ruban4,
    productName: 'Demo',
    price: '220.00',
    color: 'Black',
    badge: true,
    des: 'Demo',
    cat: 'Ruban',
  },
  {
    _id: '209',
    img: encre1,
    productName: 'Demo',
    price: '25.00',
    color: 'Mixed',
    badge: true,
    des: 'Demo',
    cat: 'Encre',
  },
  {
    _id: '210',
    img: encre2,
    productName: 'Demo',
    price: '220.00',
    color: 'Black',
    badge: true,
    des: 'Demo',
    cat: 'Encre',
  },

  {
    _id: '211',
    img: encre3,
    productName: 'Demo',
    price: '25.00',
    color: 'Mixed',
    badge: true,
    des: 'Demo',
    cat: 'Encre',
  },
  {
    _id: '212',
    img: encre4,
    productName: 'Demo',
    price: '220.00',
    color: 'Black',
    badge: true,
    des: 'Demo',
    cat: 'Encre',
  },
  {
    _id: '213',
    img: ruban1,
    productName: 'Demo',
    price: '25.00',
    color: 'Mixed',
    badge: true,
    des: 'Demo',
    cat: 'Ruban',
  },
  {
    _id: '214',
    img: ruban2,
    productName: 'Demo',
    price: '220.00',
    color: 'Black',
    badge: true,
    des: 'Demo',
    cat: 'Ruban',
  },

  {
    _id: '217',
    img: bac1,
    productName: 'Demo',
    price: '25.00',
    color: 'Mixed',
    badge: true,
    des: 'Demo',
    cat: 'Bac',
  },
  {
    _id: '219',
    img: bac2,
    productName: 'Demo',
    price: '220.00',
    color: 'Black',
    badge: true,
    des: 'Demo',
    cat: 'Bac',
  },

  // =================== imprimante hp =================

  {
    _id: 'hp1',
    img: hp1,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Hp',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'DISPONIBILITÉ', value: 'En stock' },
      { label: 'gtin', value: '3YW70A' },
      { label: 'Marque', value: 'HP' },
      { label: 'Destockage', value: 'Non' },
      { label: 'Ecran', value: 'LCD' },
      {
        label: 'Taille de L écran cm',
        value: 'Affichage LCD 7 segments + icône 5,08 cm (2 pouces)',
      },
      { label: 'Ecran Tactile', value: 'Non' },
      { label: 'Technologie d impression', value: "Jet d'encre" },
      { label: 'fonctions', value: 'Multifonction' },
      { label: 'Fonctionnalités', value: 'Impression, Copie, Numérisation' },
      { label: 'Impression', value: 'Couleur' },
      { label: 'formats', value: 'A4' },
      { label: 'Chargement de Documents', value: 'Oui' },
      { label: 'Vitesse d impression Noir', value: "Jusqu'à 22 ppm" },
      { label: 'Vitesse d impression Couleur', value: "Jusqu'à 16 ppm" },
      { label: 'FAX', value: 'Non' },
      { label: 'Mémoire', value: '256 Mo' },
      {
        label: 'Qualité d impression Noir',
        value: "Jusqu'à 1 200 x 1 200 ppp",
      },
      {
        label: 'Qualité d impression Couleur',
        value: "Jusqu'à 4 800 x 1 200 ppp",
      },
      { label: 'Résolution d impression Couleur', value: '1200x1200dpi' },
      { label: 'Recto/Verso', value: 'Manuel' },
      { label: 'Type de Scanner', value: 'Scanner à Plat' },
      { label: 'Connectivite', value: 'USB 2.0, WiFi' },
      { label: 'Capacité papier', value: '100 feuilles' },
      { label: 'Cycle d utilisation Mensuel', value: "Jusqu'à 1000 pages" },
      {
        label: 'Consommation électrique',
        value:
          '0,12 Watts (Arrêt manuel), 3,12 Watts (Prêt), 0,75 Watt (Veille) 5',
      },
      { label: 'Grammage', value: '75 g/m²' },
      {
        label: "Contenu de L'emballage",
        value:
          "Imprimante HP Smart Tank 516, Bouteilles d'encre: 3 x HP GT53XL (noir), 3 x HP GT52 (cyan, magenta et jaune), Notice de précaution pour l'encre; Fiche pour le ré-emballage et réglementaire RoH-EAC; Cordon d'alimentation, Guide d'installation; Notice PT",
      },
      { label: 'Poids', value: '5,14 kg' },
      { label: 'Dimensions', value: '447 x 373 x 158 mm' },
      { label: 'Couleur', value: 'Noir et Bleu' },
      { label: 'Garantie', value: '1 an' },
    ],
  },

  {
    _id: 'hp2',
    img: hp2,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Hp',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [],
  },

  {
    _id: 'hp3',
    img: hp3,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Hp',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'DISPONIBILITÉ', value: 'En stock' },
      { label: 'gtin', value: 'Z4B04A' },
      { label: 'Marque', value: 'HP' },
      { label: 'Destockage', value: 'Non' },
      { label: 'Technologie d impression', value: "Multifonction Jet d'encre" },
      { label: 'fonctions', value: 'Multifonction' },
      { label: 'Impression', value: 'Couleur' },
      { label: 'Mémoire', value: 'Non' },
      { label: 'FAX', value: 'Non' },
      { label: 'Fonctionnalités', value: 'Impression, Copie, Numérisation' },
      { label: 'Chargement de Documents', value: 'Oui' },
      { label: 'Connecteurs', value: '1 port USB 2.0 haut débit' },
      { label: 'Vitesse du Processeur', value: '360 MHz' },
      {
        label: 'Impression sans bordure',
        value: 'Oui, jusqu’à 210 x 297 mm (A4)',
      },
      { label: 'Vitesse d impression Noir', value: "Jusqu'à 19 ppm" },
      { label: 'Vitesse d impression Couleur', value: "Jusqu'à 15 ppm" },
      {
        label: "Résolution d'impression Noir",
        value: "Jusqu'à 1 200 x 1 200 DPI",
      },
      {
        label: 'Résolution d impression Couleur',
        value: "Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      {
        label: 'Résolution d impression',
        value:
          "Jusqu'à 1 200 x 1 200 DPI (noir), Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      { label: 'Type de Scanner', value: 'Scanner à Plat' },
      { label: 'Vitesse de numérisation', value: "Jusqu'à 21 secondes" },
      { label: 'Résolution de Numérisation', value: "Jusqu'à 1200 x 1200 ppp" },
      {
        label: 'Résolution de numérisation optimisée',
        value: 'Jusqu’à 1200 ppp',
      },
      { label: 'Recto/Verso', value: 'Manuel' },
      { label: 'Connectivite', value: 'USB' },
      { label: 'formats', value: 'A4' },
      {
        label: 'Premiére Page Imprimée',
        value:
          'Noir: (A4, prêt) Vitesse : 14 s - Couleur (A4, prêt) Vitesse : 18 s',
      },
      {
        label: 'Alimentation-courant',
        value:
          "Tension d'entrée : 220 à 240 V CA (+/- 10 %), 50/60 Hz (+/- 3 Hz)",
      },
      {
        label: 'Type de Papier pris en charge',
        value:
          "Papier ordinaire, papiers photo HP, papier mat pour brochure HP ou papier professionnel HP, papier mat pour présentation HP, papier brillant pour brochure HP ou papier professionnel HP, papiers photo jet d'encre, papiers mats jet d'encre, papiers brillant",
      },
      {
        label: 'Consommation électrique',
        value:
          '10 W maximum, 0,07 W (Arrêt), 2,1 W (Veille), 0,88 W (Veille prolongée)',
      },
      {
        label: 'Cycle d utilisation Mensuel',
        value: "A4: Jusqu'à 1 000 pages - Lettre: Jusqu'à 1 000 pages",
      },
      {
        label: 'Alimentation papier standard',
        value:
          "Bac d'alimentation de 60 feuilles - Bac de sortie de 25 feuilles",
      },
      { label: 'Ecran Tactile', value: 'Non' },
      { label: 'Type ecran', value: '7 segments et icône LCD' },
      {
        label: 'Volume de Pages Mensuel Recommandé',
        value: "400 à 800 (Jusqu'à 1000 pages)",
      },
      { label: 'Interfaces standard', value: '1x port USB 2.0 haut débit' },
      { label: 'Résolution optique', value: "Jusqu'à 1200 x 1200 ppp" },
      { label: 'Grammage', value: '75 g/m²' },
      {
        label: "Contenu de L'emballage",
        value:
          "HP Ink Tank 315 , cartouche d'encre noire HP GT51 (90CC), cartouche d'encre cyan HP GT52 (70CC), cartouche d'encre magenta HP GT52 (70CC), cartouche d'encre jaune HP GT52 (70CC)",
      },
      { label: 'Poids', value: '4,67 kg' },
      { label: 'Couleur', value: 'Noir' },
      { label: 'Dimensions', value: '525 x 310 x 158 mm' },
      { label: 'Garantie', value: '1 an' },
    ],
  },
  // =================== imprimante ricoh =================
  {
    _id: 'ricoh1',
    img: ricoh1,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Ricoh',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'DISPONIBILITÉ', value: 'En stock' },
      { label: 'gtin', value: 'Z4B04A' },
      { label: 'Marque', value: 'HP' },
      { label: 'Destockage', value: 'Non' },
      { label: 'Technologie d impression', value: "Multifonction Jet d'encre" },
      { label: 'fonctions', value: 'Multifonction' },
      { label: 'Impression', value: 'Couleur' },
      { label: 'Mémoire', value: 'Non' },
      { label: 'FAX', value: 'Non' },
      { label: 'Fonctionnalités', value: 'Impression, Copie, Numérisation' },
      { label: 'Chargement de Documents', value: 'Oui' },
      { label: 'Connecteurs', value: '1 port USB 2.0 haut débit' },
      { label: 'Vitesse du Processeur', value: '360 MHz' },
      {
        label: 'Impression sans bordure',
        value: 'Oui, jusqu’à 210 x 297 mm (A4)',
      },
      { label: 'Vitesse d impression Noir', value: "Jusqu'à 19 ppm" },
      { label: 'Vitesse d impression Couleur', value: "Jusqu'à 15 ppm" },
      {
        label: "Résolution d'impression Noir",
        value: "Jusqu'à 1 200 x 1 200 DPI",
      },
      {
        label: 'Résolution d impression Couleur',
        value: "Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      {
        label: 'Résolution d impression',
        value:
          "Jusqu'à 1 200 x 1 200 DPI (noir), Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      { label: 'Type de Scanner', value: 'Scanner à Plat' },
      { label: 'Vitesse de numérisation', value: "Jusqu'à 21 secondes" },
      { label: 'Résolution de Numérisation', value: "Jusqu'à 1200 x 1200 ppp" },
      {
        label: 'Résolution de numérisation optimisée',
        value: 'Jusqu’à 1200 ppp',
      },
      { label: 'Recto/Verso', value: 'Manuel' },
      { label: 'Connectivite', value: 'USB' },
      { label: 'formats', value: 'A4' },
      {
        label: 'Premiére Page Imprimée',
        value:
          'Noir: (A4, prêt) Vitesse : 14 s - Couleur (A4, prêt) Vitesse : 18 s',
      },
      {
        label: 'Alimentation-courant',
        value:
          "Tension d'entrée : 220 à 240 V CA (+/- 10 %), 50/60 Hz (+/- 3 Hz)",
      },
      {
        label: 'Type de Papier pris en charge',
        value:
          "Papier ordinaire, papiers photo HP, papier mat pour brochure HP ou papier professionnel HP, papier mat pour présentation HP, papier brillant pour brochure HP ou papier professionnel HP, papiers photo jet d'encre, papiers mats jet d'encre, papiers brillant",
      },
      {
        label: 'Consommation électrique',
        value:
          '10 W maximum, 0,07 W (Arrêt), 2,1 W (Veille), 0,88 W (Veille prolongée)',
      },
      {
        label: 'Cycle d utilisation Mensuel',
        value: "A4: Jusqu'à 1 000 pages - Lettre: Jusqu'à 1 000 pages",
      },
      {
        label: 'Alimentation papier standard',
        value:
          "Bac d'alimentation de 60 feuilles - Bac de sortie de 25 feuilles",
      },
      { label: 'Ecran Tactile', value: 'Non' },
      { label: 'Type ecran', value: '7 segments et icône LCD' },
      {
        label: 'Volume de Pages Mensuel Recommandé',
        value: "400 à 800 (Jusqu'à 1000 pages)",
      },
      { label: 'Interfaces standard', value: '1x port USB 2.0 haut débit' },
      { label: 'Résolution optique', value: "Jusqu'à 1200 x 1200 ppp" },
      { label: 'Grammage', value: '75 g/m²' },
      {
        label: "Contenu de L'emballage",
        value:
          "HP Ink Tank 315 , cartouche d'encre noire HP GT51 (90CC), cartouche d'encre cyan HP GT52 (70CC), cartouche d'encre magenta HP GT52 (70CC), cartouche d'encre jaune HP GT52 (70CC)",
      },
      { label: 'Poids', value: '4,67 kg' },
      { label: 'Couleur', value: 'Noir' },
      { label: 'Dimensions', value: '525 x 310 x 158 mm' },
      { label: 'Garantie', value: '1 an' },
    ],
  },

  {
    _id: 'ricoh2',
    img: ricoh2,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Ricoh',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'DISPONIBILITÉ', value: 'En stock' },
      { label: 'gtin', value: 'Z4B04A' },
      { label: 'Marque', value: 'HP' },
      { label: 'Destockage', value: 'Non' },
      { label: 'Technologie d impression', value: "Multifonction Jet d'encre" },
      { label: 'fonctions', value: 'Multifonction' },
      { label: 'Impression', value: 'Couleur' },
      { label: 'Mémoire', value: 'Non' },
      { label: 'FAX', value: 'Non' },
      { label: 'Fonctionnalités', value: 'Impression, Copie, Numérisation' },
      { label: 'Chargement de Documents', value: 'Oui' },
      { label: 'Connecteurs', value: '1 port USB 2.0 haut débit' },
      { label: 'Vitesse du Processeur', value: '360 MHz' },
      {
        label: 'Impression sans bordure',
        value: 'Oui, jusqu’à 210 x 297 mm (A4)',
      },
      { label: 'Vitesse d impression Noir', value: "Jusqu'à 19 ppm" },
      { label: 'Vitesse d impression Couleur', value: "Jusqu'à 15 ppm" },
      {
        label: "Résolution d'impression Noir",
        value: "Jusqu'à 1 200 x 1 200 DPI",
      },
      {
        label: 'Résolution d impression Couleur',
        value: "Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      {
        label: 'Résolution d impression',
        value:
          "Jusqu'à 1 200 x 1 200 DPI (noir), Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      { label: 'Type de Scanner', value: 'Scanner à Plat' },
      { label: 'Vitesse de numérisation', value: "Jusqu'à 21 secondes" },
      { label: 'Résolution de Numérisation', value: "Jusqu'à 1200 x 1200 ppp" },
      {
        label: 'Résolution de numérisation optimisée',
        value: 'Jusqu’à 1200 ppp',
      },
      { label: 'Recto/Verso', value: 'Manuel' },
      { label: 'Connectivite', value: 'USB' },
      { label: 'formats', value: 'A4' },
      {
        label: 'Premiére Page Imprimée',
        value:
          'Noir: (A4, prêt) Vitesse : 14 s - Couleur (A4, prêt) Vitesse : 18 s',
      },
      {
        label: 'Alimentation-courant',
        value:
          "Tension d'entrée : 220 à 240 V CA (+/- 10 %), 50/60 Hz (+/- 3 Hz)",
      },
      {
        label: 'Type de Papier pris en charge',
        value:
          "Papier ordinaire, papiers photo HP, papier mat pour brochure HP ou papier professionnel HP, papier mat pour présentation HP, papier brillant pour brochure HP ou papier professionnel HP, papiers photo jet d'encre, papiers mats jet d'encre, papiers brillant",
      },
      {
        label: 'Consommation électrique',
        value:
          '10 W maximum, 0,07 W (Arrêt), 2,1 W (Veille), 0,88 W (Veille prolongée)',
      },
      {
        label: 'Cycle d utilisation Mensuel',
        value: "A4: Jusqu'à 1 000 pages - Lettre: Jusqu'à 1 000 pages",
      },
      {
        label: 'Alimentation papier standard',
        value:
          "Bac d'alimentation de 60 feuilles - Bac de sortie de 25 feuilles",
      },
      { label: 'Ecran Tactile', value: 'Non' },
      { label: 'Type ecran', value: '7 segments et icône LCD' },
      {
        label: 'Volume de Pages Mensuel Recommandé',
        value: "400 à 800 (Jusqu'à 1000 pages)",
      },
      { label: 'Interfaces standard', value: '1x port USB 2.0 haut débit' },
      { label: 'Résolution optique', value: "Jusqu'à 1200 x 1200 ppp" },
      { label: 'Grammage', value: '75 g/m²' },
      {
        label: "Contenu de L'emballage",
        value:
          "HP Ink Tank 315 , cartouche d'encre noire HP GT51 (90CC), cartouche d'encre cyan HP GT52 (70CC), cartouche d'encre magenta HP GT52 (70CC), cartouche d'encre jaune HP GT52 (70CC)",
      },
      { label: 'Poids', value: '4,67 kg' },
      { label: 'Couleur', value: 'Noir' },
      { label: 'Dimensions', value: '525 x 310 x 158 mm' },
      { label: 'Garantie', value: '1 an' },
    ],
  },
  {
    _id: 'ricoh3',
    img: ricoh3,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Ricoh',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'DISPONIBILITÉ', value: 'En stock' },
      { label: 'gtin', value: 'Z4B04A' },
      { label: 'Marque', value: 'HP' },
      { label: 'Destockage', value: 'Non' },
      { label: 'Technologie d impression', value: "Multifonction Jet d'encre" },
      { label: 'fonctions', value: 'Multifonction' },
      { label: 'Impression', value: 'Couleur' },
      { label: 'Mémoire', value: 'Non' },
      { label: 'FAX', value: 'Non' },
      { label: 'Fonctionnalités', value: 'Impression, Copie, Numérisation' },
      { label: 'Chargement de Documents', value: 'Oui' },
      { label: 'Connecteurs', value: '1 port USB 2.0 haut débit' },
      { label: 'Vitesse du Processeur', value: '360 MHz' },
      {
        label: 'Impression sans bordure',
        value: 'Oui, jusqu’à 210 x 297 mm (A4)',
      },
      { label: 'Vitesse d impression Noir', value: "Jusqu'à 19 ppm" },
      { label: 'Vitesse d impression Couleur', value: "Jusqu'à 15 ppm" },
      {
        label: "Résolution d'impression Noir",
        value: "Jusqu'à 1 200 x 1 200 DPI",
      },
      {
        label: 'Résolution d impression Couleur',
        value: "Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      {
        label: 'Résolution d impression',
        value:
          "Jusqu'à 1 200 x 1 200 DPI (noir), Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      { label: 'Type de Scanner', value: 'Scanner à Plat' },
      { label: 'Vitesse de numérisation', value: "Jusqu'à 21 secondes" },
      { label: 'Résolution de Numérisation', value: "Jusqu'à 1200 x 1200 ppp" },
      {
        label: 'Résolution de numérisation optimisée',
        value: 'Jusqu’à 1200 ppp',
      },
      { label: 'Recto/Verso', value: 'Manuel' },
      { label: 'Connectivite', value: 'USB' },
      { label: 'formats', value: 'A4' },
      {
        label: 'Premiére Page Imprimée',
        value:
          'Noir: (A4, prêt) Vitesse : 14 s - Couleur (A4, prêt) Vitesse : 18 s',
      },
      {
        label: 'Alimentation-courant',
        value:
          "Tension d'entrée : 220 à 240 V CA (+/- 10 %), 50/60 Hz (+/- 3 Hz)",
      },
      {
        label: 'Type de Papier pris en charge',
        value:
          "Papier ordinaire, papiers photo HP, papier mat pour brochure HP ou papier professionnel HP, papier mat pour présentation HP, papier brillant pour brochure HP ou papier professionnel HP, papiers photo jet d'encre, papiers mats jet d'encre, papiers brillant",
      },
      {
        label: 'Consommation électrique',
        value:
          '10 W maximum, 0,07 W (Arrêt), 2,1 W (Veille), 0,88 W (Veille prolongée)',
      },
      {
        label: 'Cycle d utilisation Mensuel',
        value: "A4: Jusqu'à 1 000 pages - Lettre: Jusqu'à 1 000 pages",
      },
      {
        label: 'Alimentation papier standard',
        value:
          "Bac d'alimentation de 60 feuilles - Bac de sortie de 25 feuilles",
      },
      { label: 'Ecran Tactile', value: 'Non' },
      { label: 'Type ecran', value: '7 segments et icône LCD' },
      {
        label: 'Volume de Pages Mensuel Recommandé',
        value: "400 à 800 (Jusqu'à 1000 pages)",
      },
      { label: 'Interfaces standard', value: '1x port USB 2.0 haut débit' },
      { label: 'Résolution optique', value: "Jusqu'à 1200 x 1200 ppp" },
      { label: 'Grammage', value: '75 g/m²' },
      {
        label: "Contenu de L'emballage",
        value:
          "HP Ink Tank 315 , cartouche d'encre noire HP GT51 (90CC), cartouche d'encre cyan HP GT52 (70CC), cartouche d'encre magenta HP GT52 (70CC), cartouche d'encre jaune HP GT52 (70CC)",
      },
      { label: 'Poids', value: '4,67 kg' },
      { label: 'Couleur', value: 'Noir' },
      { label: 'Dimensions', value: '525 x 310 x 158 mm' },
      { label: 'Garantie', value: '1 an' },
    ],
  },
  {
    _id: 'ricoh4',
    img: ricoh4,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Ricoh',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'DISPONIBILITÉ', value: 'En stock' },
      { label: 'gtin', value: 'Z4B04A' },
      { label: 'Marque', value: 'HP' },
      { label: 'Destockage', value: 'Non' },
      { label: 'Technologie d impression', value: "Multifonction Jet d'encre" },
      { label: 'fonctions', value: 'Multifonction' },
      { label: 'Impression', value: 'Couleur' },
      { label: 'Mémoire', value: 'Non' },
      { label: 'FAX', value: 'Non' },
      { label: 'Fonctionnalités', value: 'Impression, Copie, Numérisation' },
      { label: 'Chargement de Documents', value: 'Oui' },
      { label: 'Connecteurs', value: '1 port USB 2.0 haut débit' },
      { label: 'Vitesse du Processeur', value: '360 MHz' },
      {
        label: 'Impression sans bordure',
        value: 'Oui, jusqu’à 210 x 297 mm (A4)',
      },
      { label: 'Vitesse d impression Noir', value: "Jusqu'à 19 ppm" },
      { label: 'Vitesse d impression Couleur', value: "Jusqu'à 15 ppm" },
      {
        label: "Résolution d'impression Noir",
        value: "Jusqu'à 1 200 x 1 200 DPI",
      },
      {
        label: 'Résolution d impression Couleur',
        value: "Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      {
        label: 'Résolution d impression',
        value:
          "Jusqu'à 1 200 x 1 200 DPI (noir), Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      { label: 'Type de Scanner', value: 'Scanner à Plat' },
      { label: 'Vitesse de numérisation', value: "Jusqu'à 21 secondes" },
      { label: 'Résolution de Numérisation', value: "Jusqu'à 1200 x 1200 ppp" },
      {
        label: 'Résolution de numérisation optimisée',
        value: 'Jusqu’à 1200 ppp',
      },
      { label: 'Recto/Verso', value: 'Manuel' },
      { label: 'Connectivite', value: 'USB' },
      { label: 'formats', value: 'A4' },
      {
        label: 'Premiére Page Imprimée',
        value:
          'Noir: (A4, prêt) Vitesse : 14 s - Couleur (A4, prêt) Vitesse : 18 s',
      },
      {
        label: 'Alimentation-courant',
        value:
          "Tension d'entrée : 220 à 240 V CA (+/- 10 %), 50/60 Hz (+/- 3 Hz)",
      },
      {
        label: 'Type de Papier pris en charge',
        value:
          "Papier ordinaire, papiers photo HP, papier mat pour brochure HP ou papier professionnel HP, papier mat pour présentation HP, papier brillant pour brochure HP ou papier professionnel HP, papiers photo jet d'encre, papiers mats jet d'encre, papiers brillant",
      },
      {
        label: 'Consommation électrique',
        value:
          '10 W maximum, 0,07 W (Arrêt), 2,1 W (Veille), 0,88 W (Veille prolongée)',
      },
      {
        label: 'Cycle d utilisation Mensuel',
        value: "A4: Jusqu'à 1 000 pages - Lettre: Jusqu'à 1 000 pages",
      },
      {
        label: 'Alimentation papier standard',
        value:
          "Bac d'alimentation de 60 feuilles - Bac de sortie de 25 feuilles",
      },
      { label: 'Ecran Tactile', value: 'Non' },
      { label: 'Type ecran', value: '7 segments et icône LCD' },
      {
        label: 'Volume de Pages Mensuel Recommandé',
        value: "400 à 800 (Jusqu'à 1000 pages)",
      },
      { label: 'Interfaces standard', value: '1x port USB 2.0 haut débit' },
      { label: 'Résolution optique', value: "Jusqu'à 1200 x 1200 ppp" },
      { label: 'Grammage', value: '75 g/m²' },
      {
        label: "Contenu de L'emballage",
        value:
          "HP Ink Tank 315 , cartouche d'encre noire HP GT51 (90CC), cartouche d'encre cyan HP GT52 (70CC), cartouche d'encre magenta HP GT52 (70CC), cartouche d'encre jaune HP GT52 (70CC)",
      },
      { label: 'Poids', value: '4,67 kg' },
      { label: 'Couleur', value: 'Noir' },
      { label: 'Dimensions', value: '525 x 310 x 158 mm' },
      { label: 'Garantie', value: '1 an' },
    ],
  },
  {
    _id: 'ricoh5',
    img: ricoh5,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Ricoh',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'DISPONIBILITÉ', value: 'En stock' },
      { label: 'gtin', value: 'Z4B04A' },
      { label: 'Marque', value: 'HP' },
      { label: 'Destockage', value: 'Non' },
      { label: 'Technologie d impression', value: "Multifonction Jet d'encre" },
      { label: 'fonctions', value: 'Multifonction' },
      { label: 'Impression', value: 'Couleur' },
      { label: 'Mémoire', value: 'Non' },
      { label: 'FAX', value: 'Non' },
      { label: 'Fonctionnalités', value: 'Impression, Copie, Numérisation' },
      { label: 'Chargement de Documents', value: 'Oui' },
      { label: 'Connecteurs', value: '1 port USB 2.0 haut débit' },
      { label: 'Vitesse du Processeur', value: '360 MHz' },
      {
        label: 'Impression sans bordure',
        value: 'Oui, jusqu’à 210 x 297 mm (A4)',
      },
      { label: 'Vitesse d impression Noir', value: "Jusqu'à 19 ppm" },
      { label: 'Vitesse d impression Couleur', value: "Jusqu'à 15 ppm" },
      {
        label: "Résolution d'impression Noir",
        value: "Jusqu'à 1 200 x 1 200 DPI",
      },
      {
        label: 'Résolution d impression Couleur',
        value: "Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      {
        label: 'Résolution d impression',
        value:
          "Jusqu'à 1 200 x 1 200 DPI (noir), Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      { label: 'Type de Scanner', value: 'Scanner à Plat' },
      { label: 'Vitesse de numérisation', value: "Jusqu'à 21 secondes" },
      { label: 'Résolution de Numérisation', value: "Jusqu'à 1200 x 1200 ppp" },
      {
        label: 'Résolution de numérisation optimisée',
        value: 'Jusqu’à 1200 ppp',
      },
      { label: 'Recto/Verso', value: 'Manuel' },
      { label: 'Connectivite', value: 'USB' },
      { label: 'formats', value: 'A4' },
      {
        label: 'Premiére Page Imprimée',
        value:
          'Noir: (A4, prêt) Vitesse : 14 s - Couleur (A4, prêt) Vitesse : 18 s',
      },
      {
        label: 'Alimentation-courant',
        value:
          "Tension d'entrée : 220 à 240 V CA (+/- 10 %), 50/60 Hz (+/- 3 Hz)",
      },
      {
        label: 'Type de Papier pris en charge',
        value:
          "Papier ordinaire, papiers photo HP, papier mat pour brochure HP ou papier professionnel HP, papier mat pour présentation HP, papier brillant pour brochure HP ou papier professionnel HP, papiers photo jet d'encre, papiers mats jet d'encre, papiers brillant",
      },
      {
        label: 'Consommation électrique',
        value:
          '10 W maximum, 0,07 W (Arrêt), 2,1 W (Veille), 0,88 W (Veille prolongée)',
      },
      {
        label: 'Cycle d utilisation Mensuel',
        value: "A4: Jusqu'à 1 000 pages - Lettre: Jusqu'à 1 000 pages",
      },
      {
        label: 'Alimentation papier standard',
        value:
          "Bac d'alimentation de 60 feuilles - Bac de sortie de 25 feuilles",
      },
      { label: 'Ecran Tactile', value: 'Non' },
      { label: 'Type ecran', value: '7 segments et icône LCD' },
      {
        label: 'Volume de Pages Mensuel Recommandé',
        value: "400 à 800 (Jusqu'à 1000 pages)",
      },
      { label: 'Interfaces standard', value: '1x port USB 2.0 haut débit' },
      { label: 'Résolution optique', value: "Jusqu'à 1200 x 1200 ppp" },
      { label: 'Grammage', value: '75 g/m²' },
      {
        label: "Contenu de L'emballage",
        value:
          "HP Ink Tank 315 , cartouche d'encre noire HP GT51 (90CC), cartouche d'encre cyan HP GT52 (70CC), cartouche d'encre magenta HP GT52 (70CC), cartouche d'encre jaune HP GT52 (70CC)",
      },
      { label: 'Poids', value: '4,67 kg' },
      { label: 'Couleur', value: 'Noir' },
      { label: 'Dimensions', value: '525 x 310 x 158 mm' },
      { label: 'Garantie', value: '1 an' },
    ],
  },

  // =================== imprimante ricoh =================

  {
    _id: 'espson1',
    img: espson1,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Epson',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'DISPONIBILITÉ', value: 'En stock' },
      { label: 'gtin', value: 'Z4B04A' },
      { label: 'Marque', value: 'HP' },
      { label: 'Destockage', value: 'Non' },
      { label: 'Technologie d impression', value: "Multifonction Jet d'encre" },
      { label: 'fonctions', value: 'Multifonction' },
      { label: 'Impression', value: 'Couleur' },
      { label: 'Mémoire', value: 'Non' },
      { label: 'FAX', value: 'Non' },
      { label: 'Fonctionnalités', value: 'Impression, Copie, Numérisation' },
      { label: 'Chargement de Documents', value: 'Oui' },
      { label: 'Connecteurs', value: '1 port USB 2.0 haut débit' },
      { label: 'Vitesse du Processeur', value: '360 MHz' },
      {
        label: 'Impression sans bordure',
        value: 'Oui, jusqu’à 210 x 297 mm (A4)',
      },
      { label: 'Vitesse d impression Noir', value: "Jusqu'à 19 ppm" },
      { label: 'Vitesse d impression Couleur', value: "Jusqu'à 15 ppm" },
      {
        label: "Résolution d'impression Noir",
        value: "Jusqu'à 1 200 x 1 200 DPI",
      },
      {
        label: 'Résolution d impression Couleur',
        value: "Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      {
        label: 'Résolution d impression',
        value:
          "Jusqu'à 1 200 x 1 200 DPI (noir), Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      { label: 'Type de Scanner', value: 'Scanner à Plat' },
      { label: 'Vitesse de numérisation', value: "Jusqu'à 21 secondes" },
      { label: 'Résolution de Numérisation', value: "Jusqu'à 1200 x 1200 ppp" },
      {
        label: 'Résolution de numérisation optimisée',
        value: 'Jusqu’à 1200 ppp',
      },
      { label: 'Recto/Verso', value: 'Manuel' },
      { label: 'Connectivite', value: 'USB' },
      { label: 'formats', value: 'A4' },
      {
        label: 'Premiére Page Imprimée',
        value:
          'Noir: (A4, prêt) Vitesse : 14 s - Couleur (A4, prêt) Vitesse : 18 s',
      },
      {
        label: 'Alimentation-courant',
        value:
          "Tension d'entrée : 220 à 240 V CA (+/- 10 %), 50/60 Hz (+/- 3 Hz)",
      },
      {
        label: 'Type de Papier pris en charge',
        value:
          "Papier ordinaire, papiers photo HP, papier mat pour brochure HP ou papier professionnel HP, papier mat pour présentation HP, papier brillant pour brochure HP ou papier professionnel HP, papiers photo jet d'encre, papiers mats jet d'encre, papiers brillant",
      },
      {
        label: 'Consommation électrique',
        value:
          '10 W maximum, 0,07 W (Arrêt), 2,1 W (Veille), 0,88 W (Veille prolongée)',
      },
      {
        label: 'Cycle d utilisation Mensuel',
        value: "A4: Jusqu'à 1 000 pages - Lettre: Jusqu'à 1 000 pages",
      },
      {
        label: 'Alimentation papier standard',
        value:
          "Bac d'alimentation de 60 feuilles - Bac de sortie de 25 feuilles",
      },
      { label: 'Ecran Tactile', value: 'Non' },
      { label: 'Type ecran', value: '7 segments et icône LCD' },
      {
        label: 'Volume de Pages Mensuel Recommandé',
        value: "400 à 800 (Jusqu'à 1000 pages)",
      },
      { label: 'Interfaces standard', value: '1x port USB 2.0 haut débit' },
      { label: 'Résolution optique', value: "Jusqu'à 1200 x 1200 ppp" },
      { label: 'Grammage', value: '75 g/m²' },
      {
        label: "Contenu de L'emballage",
        value:
          "HP Ink Tank 315 , cartouche d'encre noire HP GT51 (90CC), cartouche d'encre cyan HP GT52 (70CC), cartouche d'encre magenta HP GT52 (70CC), cartouche d'encre jaune HP GT52 (70CC)",
      },
      { label: 'Poids', value: '4,67 kg' },
      { label: 'Couleur', value: 'Noir' },
      { label: 'Dimensions', value: '525 x 310 x 158 mm' },
      { label: 'Garantie', value: '1 an' },
    ],
  },

  {
    _id: 'espson2',
    img: espson2,
    productName: 'Demo',
    price: '450',
    color: 'Blanc',
    badge: true,
    brand: 'Epson',
    des: 'Demo',
    cat: 'Imprimante',
    pdf: pdf1,
    ficheTech: [
      { label: 'DISPONIBILITÉ', value: 'En stock' },
      { label: 'gtin', value: 'Z4B04A' },
      { label: 'Marque', value: 'HP' },
      { label: 'Destockage', value: 'Non' },
      { label: 'Technologie d impression', value: "Multifonction Jet d'encre" },
      { label: 'fonctions', value: 'Multifonction' },
      { label: 'Impression', value: 'Couleur' },
      { label: 'Mémoire', value: 'Non' },
      { label: 'FAX', value: 'Non' },
      { label: 'Fonctionnalités', value: 'Impression, Copie, Numérisation' },
      { label: 'Chargement de Documents', value: 'Oui' },
      { label: 'Connecteurs', value: '1 port USB 2.0 haut débit' },
      { label: 'Vitesse du Processeur', value: '360 MHz' },
      {
        label: 'Impression sans bordure',
        value: 'Oui, jusqu’à 210 x 297 mm (A4)',
      },
      { label: 'Vitesse d impression Noir', value: "Jusqu'à 19 ppm" },
      { label: 'Vitesse d impression Couleur', value: "Jusqu'à 15 ppm" },
      {
        label: "Résolution d'impression Noir",
        value: "Jusqu'à 1 200 x 1 200 DPI",
      },
      {
        label: 'Résolution d impression Couleur',
        value: "Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      {
        label: 'Résolution d impression',
        value:
          "Jusqu'à 1 200 x 1 200 DPI (noir), Jusqu'à 4 800 x 1 200 DPI (couleur)",
      },
      { label: 'Type de Scanner', value: 'Scanner à Plat' },
      { label: 'Vitesse de numérisation', value: "Jusqu'à 21 secondes" },
      { label: 'Résolution de Numérisation', value: "Jusqu'à 1200 x 1200 ppp" },
      {
        label: 'Résolution de numérisation optimisée',
        value: 'Jusqu’à 1200 ppp',
      },
      { label: 'Recto/Verso', value: 'Manuel' },
      { label: 'Connectivite', value: 'USB' },
      { label: 'formats', value: 'A4' },
      {
        label: 'Premiére Page Imprimée',
        value:
          'Noir: (A4, prêt) Vitesse : 14 s - Couleur (A4, prêt) Vitesse : 18 s',
      },
      {
        label: 'Alimentation-courant',
        value:
          "Tension d'entrée : 220 à 240 V CA (+/- 10 %), 50/60 Hz (+/- 3 Hz)",
      },
      {
        label: 'Type de Papier pris en charge',
        value:
          "Papier ordinaire, papiers photo HP, papier mat pour brochure HP ou papier professionnel HP, papier mat pour présentation HP, papier brillant pour brochure HP ou papier professionnel HP, papiers photo jet d'encre, papiers mats jet d'encre, papiers brillant",
      },
      {
        label: 'Consommation électrique',
        value:
          '10 W maximum, 0,07 W (Arrêt), 2,1 W (Veille), 0,88 W (Veille prolongée)',
      },
      {
        label: 'Cycle d utilisation Mensuel',
        value: "A4: Jusqu'à 1 000 pages - Lettre: Jusqu'à 1 000 pages",
      },
      {
        label: 'Alimentation papier standard',
        value:
          "Bac d'alimentation de 60 feuilles - Bac de sortie de 25 feuilles",
      },
      { label: 'Ecran Tactile', value: 'Non' },
      { label: 'Type ecran', value: '7 segments et icône LCD' },
      {
        label: 'Volume de Pages Mensuel Recommandé',
        value: "400 à 800 (Jusqu'à 1000 pages)",
      },
      { label: 'Interfaces standard', value: '1x port USB 2.0 haut débit' },
      { label: 'Résolution optique', value: "Jusqu'à 1200 x 1200 ppp" },
      { label: 'Grammage', value: '75 g/m²' },
      {
        label: "Contenu de L'emballage",
        value:
          "HP Ink Tank 315 , cartouche d'encre noire HP GT51 (90CC), cartouche d'encre cyan HP GT52 (70CC), cartouche d'encre magenta HP GT52 (70CC), cartouche d'encre jaune HP GT52 (70CC)",
      },
      { label: 'Poids', value: '4,67 kg' },
      { label: 'Couleur', value: 'Noir' },
      { label: 'Dimensions', value: '525 x 310 x 158 mm' },
      { label: 'Garantie', value: '1 an' },
    ],
  },
]
