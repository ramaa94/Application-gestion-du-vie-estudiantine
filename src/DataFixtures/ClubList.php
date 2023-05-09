<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\ClubsClubList;
use DateTime;

class ClubList extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $club=new ClubsClubList();
        $club->setNumTab(1)
             ->setClubNom("IEEE")
             ->setClubMembersNb(80)
             ->setClubInstitut('ISSAT')
             ->setClubActivityType('technical')
             ->setClubRepName('Rama')
             ->setClubRepEmail('khgl')
             ->setClubImg('assets/images/user.png')
             ->setCreatedAt(new DateTime());
        $manager->persist($club);
        $manager->flush();
        $club=new ClubsClubList();
        $club->setNumTab(1)
             ->setClubNom("IEEE")
             ->setClubMembersNb(80)
             ->setClubInstitut('ISSAT')
             ->setClubActivityType('technical')
             ->setClubRepName('Rama')
             ->setClubRepEmail('khgl')
             ->setClubImg('kgj,d')
             ->setCreatedAt(new DateTime());
        $manager->persist($club);
        $manager->flush();
        $club=new ClubsClubList();
        $club->setNumTab(1)
             ->setClubNom("IEEE")
             ->setClubMembersNb(80)
             ->setClubInstitut('ISSAT')
             ->setClubActivityType('technical')
             ->setClubRepName('Rama')
             ->setClubRepEmail('khgl')
             ->setClubImg('kgj,d')
             ->setCreatedAt(new DateTime());
        $manager->persist($club);
        $manager->flush();
    }
}
