<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230425010004 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE clubs_club_list (id INT AUTO_INCREMENT NOT NULL, num_tab INT NOT NULL, club_nom VARCHAR(20) NOT NULL, club_members_nb INT NOT NULL, club_institut VARCHAR(30) NOT NULL, club_activity_type VARCHAR(20) NOT NULL, club_rep_name VARCHAR(255) NOT NULL, club_rep_email VARCHAR(30) NOT NULL, club_img VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE clubs_evenements (id INT AUTO_INCREMENT NOT NULL, tab_num INT NOT NULL, evenement_nom VARCHAR(20) NOT NULL, evenement_club_nom VARCHAR(20) NOT NULL, evenement_type VARCHAR(20) NOT NULL, evenement_date DATE NOT NULL, evenement_lieu VARCHAR(20) NOT NULL, evenement_lien VARCHAR(20) DEFAULT NULL, evenement_prix DOUBLE PRECISION DEFAULT NULL, evenement_image VARCHAR(40) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE messenger_messages (id BIGINT AUTO_INCREMENT NOT NULL, body LONGTEXT NOT NULL, headers LONGTEXT NOT NULL, queue_name VARCHAR(190) NOT NULL, created_at DATETIME NOT NULL, available_at DATETIME NOT NULL, delivered_at DATETIME DEFAULT NULL, INDEX IDX_75EA56E0FB7336F0 (queue_name), INDEX IDX_75EA56E0E3BD61CE (available_at), INDEX IDX_75EA56E016BA31DB (delivered_at), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE clubs_club_list');
        $this->addSql('DROP TABLE clubs_evenements');
        $this->addSql('DROP TABLE messenger_messages');
    }
}
