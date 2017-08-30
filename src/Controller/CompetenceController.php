<?php

namespace MicroCMS\Controller;

use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

class CompetenceController extends AdminController {

    public function competenceAction(Application $app) {
        $competences = $app['dao.competence']->findAll();
        // var_dump($competences);
        return $app['twig']->render('competence.html.twig', array('competences' => $competences));
    }

    public function competencesingleAction($id, Application $app) {
       // Traitement pour récupérer une seule expérience avec la requete find($id) du DAO :)
    }

    public function addExperienceAction(Request $request, Application $app) {
        $competence = new Competence();
        $competenceForm = $app['form.factory']->create(CompetenceType::class, $competence);
        $competenceForm->handleRequest($request);
        if ($competenceForm->isSubmitted() && $competenceForm->isValid()) {
            $app['dao.competence']->save($competence);
            $app['session']->getFlashBag()->add('success', 'Vous-avez créé une nouvelle competence.');
        }
        return $app['twig']->render('competence_form.html.twig', array(
            'title' => 'Nouvelle Competence',
            'competenceForm' => $competenceForm->createView()));
    }
}
