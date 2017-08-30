<?php

namespace MicroCMS\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class CompetenceType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom', TextType::class)
            ->add('valeur', TextType::class)
            ->add('logo', TextType::class)
            ->add('categorie', ChoiceType::class, array(
              'choices'  => array(
                'front' => 'front',
                'back' => 'back',
                'numerique/web' => 'numerique/web'
            )));
    }

    public function getName()
    {
        return 'competence';
    }
}
