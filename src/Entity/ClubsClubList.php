<?php

namespace App\Entity;

use App\Repository\ClubsClubListRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;


#[ORM\Entity(repositoryClass: ClubsClubListRepository::class)]
class ClubsClubList
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $num_tab = null;

    #[ORM\Column(length: 20)]
    #[Assert\NotBlank]
    private ?string $club_nom = null;

    #[ORM\Column]
    #[Assert\NotBlank]
    #[Assert\Type(
        type: 'integer',
        message: 'The value  is not a valid .',
    )]
    private ?int $club_members_nb = null;

    #[ORM\Column(length: 30)]
    private ?string $club_institut = null;

    #[ORM\Column(length: 20)]
    private ?string $club_activity_type = null;

    #[ORM\Column(length: 255)]
    private ?string $club_rep_name = null;

    #[ORM\Column(length: 30)]
    #[Assert\Email( message: 'The email {{ value }} is not a valid email.',
    )]
    private ?string $club_rep_email = null;

    #[ORM\Column(length: 255)]
    private ?string $club_img = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $created_at = null;

    #[ORM\Column(length: 255)]
    private ?string $club_description = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNumTab(): ?int
    {
        return $this->num_tab;
    }

    public function setNumTab(int $num_tab): self
    {
        $this->num_tab = $num_tab;

        return $this;
    }

    public function getClubNom(): ?string
    {
        return $this->club_nom;
    }

    public function setClubNom(string $club_nom): self
    {
        $this->club_nom = $club_nom;

        return $this;
    }

    public function getClubMembersNb(): ?int
    {
        return $this->club_members_nb;
    }

    public function setClubMembersNb(int $club_members_nb): self
    {
        $this->club_members_nb = $club_members_nb;

        return $this;
    }

    public function getClubInstitut(): ?string
    {
        return $this->club_institut;
    }

    public function setClubInstitut(string $club_institut): self
    {
        $this->club_institut = $club_institut;

        return $this;
    }

    public function getClubActivityType(): ?string
    {
        return $this->club_activity_type;
    }

    public function setClubActivityType(string $club_activity_type): self
    {
        $this->club_activity_type = $club_activity_type;

        return $this;
    }

    public function getClubRepName(): ?string
    {
        return $this->club_rep_name;
    }

    public function setClubRepName(string $club_rep_name): self
    {
        $this->club_rep_name = $club_rep_name;

        return $this;
    }

    public function getClubRepEmail(): ?string
    {
        return $this->club_rep_email;
    }

    public function setClubRepEmail(string $club_rep_email): self
    {
        $this->club_rep_email = $club_rep_email;

        return $this;
    }

    public function getClubImg(): ?string
    {
        return $this->club_img;
    }

    public function setClubImg(string $club_img): self
    {
        $this->club_img = $club_img;

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

    public function getClubDescription(): ?string
    {
        return $this->club_description;
    }

    public function setClubDescription(string $club_description): self
    {
        $this->club_description = $club_description;

        return $this;
    }
}
