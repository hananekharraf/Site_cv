<?php

namespace MicroCMS\Controller;

use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

class contactController extends AdminController {

  public function contactAction(Request $request, Application $app)
	{
		$form = $app['form.factory']->createBuilder('form')
		    ->add('nom', 'text', array(
		    	'required' => true,
		        'constraints' => array(new Assert\NotBlank(), new Assert\Length(array('min' => 5)))
		    ))
		    ->add('email', 'text', array(
		    	'required' => true,
		        'constraints' => array(new Assert\Email(), new Assert\NotBlank())
		    ))
		    ->add('telephone', 'text', array(
		    	'required' => true,
		        'constraints' => array(new Assert\Telephone(), new Assert\NotBlank())
		    ))
		    ->add('message', 'textarea', array(
		        'required' => true,
		        'constraints' => array(new Assert\NotBlank(), new Assert\Length(array('min' => 10)))
		    ))
		    ->getForm();
		if ('POST' == $request->getMethod())
		{
			$form->bind($request);
			if ($form->isValid())
			{
				$data = $form->getData();
				//$contactEmail = 'enquiries@richardhutchinson.me.uk';
				$contactEmail = 'm@michaelcullum.com';
				$headers = 'From: ' . $contactEmail . "\r\n" .
					'Reply-To: ' . $data['email'] . "\r\n" .
					'X-Mailer: PHP/' . phpversion();
				$message = sprintf('Richard,\r\n.
						You were sent a message using the contact form on your website.\r\n
						Message: %s.\r\n
						It was sent from %s who can be contacted at %s.',
					$data['message'], $data['nom'], $data['email'],$data['telephone']);
				mail($contactEmail, 'Contact Form', $data['message'], $headers);
				return $app['twig']->render('contact.html.twig', array(
					'page'  => 'contact',
					'title' => 'Page Title',
					'submitted' => true,
				));
			}
		}
		return $app['twig']->render('contact.html.twig', array(
			'page'  => 'contact',
			'title' => 'Hanane kharraf: Contact me',
			'form'  => $form->createView(),
		));
	}
}
