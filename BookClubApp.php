<?php
namespace axenox\BookClub;

use exface\Core\Interfaces\InstallerInterface;
use exface\Core\CommonLogic\Model\App;
use exface\Core\CommonLogic\AppInstallers\MySqlDatabaseInstaller;

class BookClubApp extends App
{
    public function getInstaller(InstallerInterface $injected_installer = null)
    {
        $installer = parent::getInstaller($injected_installer);
        
        $sqlInstaller = new MySqlDatabaseInstaller($this->getSelector());        
        $sqlInstaller
        ->setFoldersWithMigrations(['InitDB','Migrations'])
        ->setDataSourceSelector('0x11ea8d0cb1ef92b08d0c025041000001');
        $installer->addInstaller($sqlInstaller);
        
        return $installer;
    }
}
?>