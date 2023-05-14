<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Persistence\ObjectManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\FileType;

use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\Validator\Constraints\Type;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use App\Entity\ClubsClubList;

use App\Entity\ClubsEvenements;
use App\Repository\ClubsClubListRepository;
use App\Repository\ClubsEvenementsRepository;
use App\Repository\CoursRepository;
use App\Repository\CourstdRepository;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;



use Symfony\Component\Form\FormBuilderInterface;


class MainController extends AbstractController
{
    #[Route('/main', name: 'app_main')]
    public function index(): Response
    {
        return $this->render('main/index.html.twig', [
            'controller_name' => 'MainController',
        ]);
    }

    #[Route('/', name: 'home')]
    public function home(CoursRepository $cr,ManagerRegistry $doctrine,CourstdRepository $courstdRepository)
    {
        $matiere = $courstdRepository->findBy([],[],4);
        $events = $doctrine->getRepository(ClubsEvenements::class)->findBy([],['id'=>'DESC'],2);
        $cours=$cr->findBy([],['nom'=> 'DESC'],3);
        return $this-> render('main/home.html.twig',['c'=>$cours,'eventhome'=>$events,  'matieres' => $matiere,]);
    }
    // #[Route('/login', name: 'login')]
    // public function login()
    // {
    //     return $this-> render('main/compte.html.twig');
    // }

    #[Route('/test', name: 'test')]
    public function test()
    {
        return $this-> render('main/test.html.twig');
    }
    #[Route('/clubs', name: 'c_home')]
    public function clubs_home(ManagerRegistry $doctrine):Response    {
        $events = $doctrine->getRepository(ClubsEvenements::class)->findBy([],['id'=>'DESC'],4);

        return $this-> render('main/clubs_h.html.twig',['eventhome'=>$events]);
    }
    #[Route('/m', name: 'cc_home')]
    public function m()
    {
        return $this-> render('main/main.html.twig');
    }
    #[Route('/tesst', name: 'cc_home')]
    public function tesst()
    {
        return $this-> render('main/test.html.twig');
    }
    // #[Route('/clubs/list/home', name: 'clubs_list_home')]
    // public function clubs_list_home()
    // {
    //     return $this-> render('main/liste_clubs.html.twig');
    // }
    #[Route('/clubs/list', name: 'clubs_list')]
    public function rep(ManagerRegistry $doctrine):Response
    {
       $clubs = $doctrine->getRepository(ClubsClublist::class)->findAll();

       return $this->render('main/liste_clubs.html.twig',['clubs'=>$clubs]);
    }
    #[Route('/club/{id}',name:"club")]
    public function show($id,ManagerRegistry $doctrine,ClubsClubListRepository $repo):Response
    {   
        // $oneclub=$doctrine->getRepository(ClubsClublist::class)->find($id);
        $oneclub=$repo->find($id);
        return $this->render('main/club_show.html.twig',['oneclub'=>$oneclub]);

    }
    #[Route('/new', name: 'club_create')]
    #[Route('/new/{id}/edit', name: 'club_edit')]

    public function club_manage(ClubsClubList $oneclub=null,Request $request,EntityManagerInterface $entityManager ):Response
    {
        if(!$oneclub)
        {   $oneclub=new ClubsClubList();}
        $form=$this->createFormBuilder($oneclub)
        ->add('ClubNom',TextType::class,[
            'attr'=>['placeholder' =>"Nom du club ",'class'=>'form-control']
        ])
        ->add('ClubMembersNb',TextType::class,[
            'attr'=>['placeholder' =>"Nombre des membres",'class'=>'form-control']
        ])
        ->add("ClubInstitut" ,ChoiceType::class,['choices'=> 
            [ 'Issat Sousse'=> 'Issat Sousse'],
        ])
        ->add('ClubActivityType',ChoiceType::class,['choices'=>[
            'Génie civil'=>'Génie civil',
            'Ingénierie en informatique GL'=>'Ingénierie en informatique GL',
            'Génie Mécanique'=>'Génie Mécanique',   
            'Systémes Embarqués'=>'Systémes Embarqués',
            'Electro-Mécanique'=>'Electro-Mécanique',
            'sciences Informatique'=> 'sciences Informatique',
            'Mécatronique Automobile'=>'Mécatronique Automobile',
            'Mécatronique Industrielle'=>'Mécatronique Industrielle',
            'Cycle préparatoire intégrée'=>'Cycle préparatoire intégrée',
            'Ingénierie en informatique Industrielle'=>'Ingénierie en informatique Industrielle',
        ],
    ])
        
        ->add('ClubRepName',TextType::class,['attr'=>['placeholder' =>"Nom du representant",'class'=>'form-control']])
        ->add('ClubRepEmail',EmailType::class,['attr'=>['placeholder' =>"Email du representant",'class'=>'form-control']])
        ->add('ClubDescription',TextareaType::class,['attr'=>['placeholder' =>"Plus de details",'class'=>'form-control']])
        ->add('ClubImg', FileType::class,[
        'required' => false,
        'mapped' => false,])

        // ->add('Enregistrer', SubmitType::class, ['label' => 'Créer Club'])
        ->getForm();
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
            {if(!$oneclub->getId())
        {
            $oneclub->SetCreatedAt(new \DateTime);
            $oneclub->setNumTab(1);}
            //image upload
            $photoFile = $form->get('ClubImg')->getData();
            $newFilename = uniqid().'.'.$photoFile->guessExtension();
            try {
                // Move the uploaded file to a directory
                $photoFile->move(
                    $this->getParameter('kernel.project_dir').'/public/assets/images',
                    $newFilename,
                    // $newFilename= public/assets/images/+ $newFilename
                   

                );
                $oneclub->setClubImg('assets/images/'.$newFilename);

            }
             catch (FileException $e) {}
           



            $entityManager->persist($oneclub);
            $entityManager->flush();
            return $this->redirectToRoute('club',['id'=>$oneclub->getId()]);
            // $this->addFlash('success', 'Form submitted successfully!');

        }
        dump($oneclub);

        return $this-> render('main/create_club.html.twig',[
            'formClub'=>$form->createView(),
            'editMode'=>$oneclub->getId()!==null
        ]);
    }
    #[Route('/events/list', name: 'events_list')]
    public function repoevent(ManagerRegistry $doctrine):Response
    {
       $events = $doctrine->getRepository(ClubsEvenements::class)->findAll();

       return $this->render('main/liste_evenements.html.twig',['events'=>$events]);
    }
    #[Route('/event/{id}',name:"event")]
    public function showevent($id,ManagerRegistry $doctrine,ClubsEvenementsRepository $repoeve):Response
    {   
        // $oneclub=$doctrine->getRepository(ClubsClublist::class)->find($id);
        $oneevent=$repoeve->find($id);
        return $this->render('main/event_show.html.twig',['oneevent'=>$oneevent]);

    }
    // #[Route('/eventshome', name: 'events_home')]
    // public function homeevent(ManagerRegistry $doctrine):Response
    // {
    //    $events = $doctrine->getRepository(ClubsEvenements::class)->findBy([],['id'=>'DESC'],3);

    //    return $this->render('main/clubs_h.html.twig',['eventhome'=>$events]);
    // }
    #[Route('/newevent', name: 'event_create')]
    #[Route('/newevent/{id}/edit', name: 'event_edit')]

    public function event_manage(ClubsEvenements $oneevent=null,Request $request,EntityManagerInterface $entityManager,ManagerRegistry $doctrine ):Response
    {
        if(!$oneevent)
        {   $oneevent=new ClubsEvenements();}
        $form=$this->createFormBuilder($oneevent)
        ->add('EvenementNom',TextType::class,[
            'attr'=>['placeholder' =>"Nom d'evenemnt ",'class'=>'form-control']
        ])
        ->add('EvenementClubNom',TextType::class,[
            'attr'=>['placeholder' =>"Nom du club organisateur ",'class'=>'form-control']
        ])
        ->add('EvenementType',TextType::class,[
            'attr'=>['placeholder' =>"Type d'événement",'class'=>'form-control']
        ])
        ->add("EvenementDate" ,DateType::class,['attr'=>['placeholder' =>"Date d'événement" ],
        ])
       
        ->add('EvenementLieu',TextType::class,['attr'=>['placeholder' =>"Lieu de l'événement",'class'=>'form-control']])
        ->add('EvenementLien',TextType::class,['attr'=>['placeholder' =>"Lien d'événement",'class'=>'form-control']])
        ->add('EvenementPrix',NumberType::class,['attr'=>['placeholder' =>"frais de participation", ]])
        ->add('EvenementImage', FileType::class,[
        'required' => false,
        'mapped' => false,])

        // ->add('Enregistrer', SubmitType::class, ['label' => 'Créer Club'])
        ->getForm();
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {   if(!$oneevent->getId())
            {  
                $oneevent->SetCreatedAt(new \DateTime);
                $oneevent->setTabNum(2);
                $clubName = $oneevent->getEvenementClubNom();
                $club = $doctrine->getRepository(ClubsClubList::class)->findOneBy(['club_nom' => $clubName]);
                if ($club) {
                    $oneevent->setClbId($club);
                } else {
                    throw new \Exception('Club not found');
                }
            }
                //image upload
                $photoevent = $form->get('EvenementImage')->getData();
                $newFilename2 = uniqid().'.'.$photoevent->guessExtension();
                try {
                    // Move the uploaded file to a directory
                    $photoevent->move(
                        $this->getParameter('kernel.project_dir').'/public/assets/images',
                        $newFilename2,
                        // $newFilename= public/assets/images/+ $newFilename


                    );
                    $oneevent->setEvenementImage('assets/images/'.$newFilename2);

                }
                catch (FileException $e) {}
            



                $entityManager->persist($oneevent);
                $entityManager->flush();
                return $this->redirectToRoute('event',['id'=>$oneevent->getId()]);
        }
        dump($oneevent);

        return $this-> render('main/create_event.html.twig',[
            'formEvent'=>$form->createView(),
            'editMode'=>$oneevent->getId()!==null
        ]);
    

}
}
