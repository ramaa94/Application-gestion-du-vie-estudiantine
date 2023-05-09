<?php

namespace App\Repository;

use App\Entity\ClubsEvenements;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<ClubsEvenements>
 *
 * @method ClubsEvenements|null find($id, $lockMode = null, $lockVersion = null)
 * @method ClubsEvenements|null findOneBy(array $criteria, array $orderBy = null)
 * @method ClubsEvenements[]    findAll()
 * @method ClubsEvenements[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ClubsEvenementsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ClubsEvenements::class);
    }

    public function save(ClubsEvenements $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(ClubsEvenements $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

//    /**
//     * @return ClubsEvenements[] Returns an array of ClubsEvenements objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('c.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?ClubsEvenements
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
