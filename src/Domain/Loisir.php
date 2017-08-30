<?php

namespace MicroCMS\Domain;

class Loisir
{
    /**
     * Experience id.
     *
     * @var integer
     */
    private $id;

    /**
     * Experience title.
     *
     * @var string
     */
    private $title;

    /**
     * Experience content.
     *
     * @var string
     */
    private $content;
    /**
     * Experience content.
     *
     * @var string
     */
    private $photo;

    public function getId() {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;
        return $this;
    }

    public function getTitle() {
        return $this->title;
    }

    public function setTitle($title) {
        $this->title = $title;
        return $this;
    }

    public function getContent() {
        return $this->content;
    }

    public function setContent($content) {
        $this->content = $content;
        return $this;
    }
    public function getPhoto() {
        return $this->photo;
    }

    public function setPhoto($photo) {
        $this->photo = $photo;
        return $this;
    }
}
