<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230506004414 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE clubs_evenements ADD clb_id_id INT NOT NULL, ADD clb_nom_id INT NOT NULL');
        $this->addSql('ALTER TABLE clubs_evenements ADD CONSTRAINT FK_4188EA8A5C34929F FOREIGN KEY (clb_id_id) REFERENCES clubs_club_list (id)');
        $this->addSql('ALTER TABLE clubs_evenements ADD CONSTRAINT FK_4188EA8A5D8E2667 FOREIGN KEY (clb_nom_id) REFERENCES clubs_club_list (id)');
        $this->addSql('CREATE INDEX IDX_4188EA8A5C34929F ON clubs_evenements (clb_id_id)');
        $this->addSql('CREATE INDEX IDX_4188EA8A5D8E2667 ON clubs_evenements (clb_nom_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE clubs_evenements DROP FOREIGN KEY FK_4188EA8A5C34929F');
        $this->addSql('ALTER TABLE clubs_evenements DROP FOREIGN KEY FK_4188EA8A5D8E2667');
        $this->addSql('DROP INDEX IDX_4188EA8A5C34929F ON clubs_evenements');
        $this->addSql('DROP INDEX IDX_4188EA8A5D8E2667 ON clubs_evenements');
        $this->addSql('ALTER TABLE clubs_evenements DROP clb_id_id, DROP clb_nom_id');
    }
}
