<?php

namespace MicroCMS\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class PortfolioType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder
            ->add('name', TextType::class)
            ->add('lieu', TextType::class)
            ->add('date', TextType::class)
            ->add('descriptif', TextareaType::class)
            ->add('link', TextType::class)
            ->add('img', TextType::class);
    }

    public function getName(){
        return 'portfolio';
    }
}
