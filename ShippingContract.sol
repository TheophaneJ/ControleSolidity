// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0; //version de solidity

contract Shipping { //creation du contrat "shipping"

    enum Etat{ Pending, Shipped, Delivered } // on defini les 3 etats
    Etat etatcommande;    
    event Creation(uint ID, Etat); //creation des evenements
    event Expedition(uint ID, Etat);
    event Livraison(uint ID, Etat);

    struct Commande { //definition d'une commande, définie par un ID et un etat
        uint ID;
        string State;
    }
    function _creationcommande(uint ID) private { //fonction de création de commande
        etatcommande = Etat.Pending;
        emit Creation(ID, etatcommande); //appel de l'evenement de creation de la commande
    }

    function _expeditioncommande(uint ID) private { //fonction d'expedition de la commande
        etatcommande = Etat.Shipped;
        emit Expedition(ID, etatcommande); //appel de l'evenement d'expedition de la commande
    }

    function _livraisoncommande(uint ID) private { //fonction de livraison de la commande
        etatcommande = Etat.Delivered;
        emit Livraison(ID, etatcommande); //appel de l'evenement de livraison de la commande
    }
    
}
