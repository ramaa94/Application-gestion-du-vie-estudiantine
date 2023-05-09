<?php

namespace App\Entity;
use Symfony\Component\Validator\Constraints as Assert;

use App\Repository\ClubsEvenementsRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ClubsEvenementsRepository::class)]
class ClubsEvenements
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $tab_num = null;

    #[ORM\Column(length: 20)]
    private ?string $evenement_nom = null;
    #[Assert\Length(min:2)]

    #[ORM\Column(length: 20)]
    private ?string $evenement_club_nom = null;

    #[ORM\Column(length: 20)]
    private ?string $evenement_type = null;

    #[ORM\Column(type: Types::DATE_MUTABLE)]
    private ?\DateTimeInterface $evenement_date = null;

    #[ORM\Column(length: 20)]
    private ?string $evenement_lieu = null;

    #[ORM\Column(length: 20, nullable: true)]
    private ?string $evenement_lien = null;

    #[ORM\Column(nullable: true)]
    private ?float $evenement_prix = null;

    #[ORM\Column(length: 40)]
    private ?string $evenement_image = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $created_at = null;

    #[ORM\ManyToOne]
    #[ORM\JoinColumn(nullable: false)]
    private ?ClubsClubList $clb_id = null;

 

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTabNum(): ?int
    {
        return $this->tab_num;
    }

    public function setTabNum(int $tab_num): self
    {
        $this->tab_num = $tab_num;

        return $this;
    }

    public function getEvenementNom(): ?string
    {
        return $this->evenement_nom;
    }

    public function setEvenementNom(string $evenement_nom): self
    {
        $this->evenement_nom = $evenement_nom;

        return $this;
    }

    public function getEvenementClubNom(): ?string
    {
        return $this->evenement_club_nom;
    }

    public function setEvenementClubNom(string $evenement_club_nom): self
    {
        $this->evenement_club_nom = $evenement_club_nom;

        return $this;
    }

    public function getEvenementType(): ?string
    {
        return $this->evenement_type;
    }

    public function setEvenementType(string $evenement_type): self
    {
        $this->evenement_type = $evenement_type;

        return $this;
    }

    public function getEvenementDate(): ?\DateTimeInterface
    {
        return $this->evenement_date;
    }

    public function setEvenementDate(\DateTimeInterface $evenement_date): self
    {
        $this->evenement_date = $evenement_date;

        return $this;
    }

    public function getEvenementLieu(): ?string
    {
        return $this->evenement_lieu;
    }

    public function setEvenementLieu(string $evenement_lieu): self
    {
        $this->evenement_lieu = $evenement_lieu;

        return $this;
    }

    public function getEvenementLien(): ?string
    {
        return $this->evenement_lien;
    }

    public function setEvenementLien(?string $evenement_lien): self
    {
        $this->evenement_lien = $evenement_lien;

        return $this;
    }

    public function getEvenementPrix(): ?float
    {
        return $this->evenement_prix;
    }

    public function setEvenementPrix(?float $evenement_prix): self
    {
        $this->evenement_prix = $evenement_prix;

        return $this;
    }

    public function getEvenementImage(): ?string
    {
        return $this->evenement_image;
    }

    public function setEvenementImage(string $evenement_image): self
    {
        $this->evenement_image = $evenement_image;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->created_at;
    }

    public function setCreatedAt(\DateTimeInterface $created_at): self
    {
        $this->created_at = $created_at;

        return $this;
    }

    public function getClbId(): ?ClubsClubList
    {
        return $this->clb_id;
    }

    public function setClbId(?ClubsClubList $clb_id): self
    {
        $this->clb_id = $clb_id;

        return $this;
    }

}
