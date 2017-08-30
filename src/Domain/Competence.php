<?php

namespace MicroCMS\Domain;

class Competence
{
    /**
     * Competence id.
     *
     * @var integer
     */
    private $id;

    /**
     * Competence non.
     *
     * @var string
     */
    private $nom;

    /**
     * Competence valeur.
     *
     * @var string
     */
    private $valeur;
    /**
     *  Competence logo.
     *
     * @var string
     */
    private $logo;
    /**
     *  Competence logo.
     *
     * @var string
     */
    private $categorie;



    public function getId() {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;
        return $this;
    }

    public function getNom() {
        return $this->nom;
    }

    public function setNom($nom) {
        $this->nom = $nom;
        return $this;
    }

    public function getValeur() {
        return $this->valeur;
    }

    public function setValeur($valeur) {
        $this->valeur = $valeur;
        return $this;
    }

    public function setLogo( $logo ){
      $this->logo = $logo;
      return $this;
    }
    public function getLogo(){
      return $this->logo;
    }

    public function setCategorie( $categorie ){
      $this->categorie = $categorie;
      return $this;
    }
    public function getCategorie(){
      return $this->categorie;
    }

}
