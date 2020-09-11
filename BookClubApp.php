<?php
namespace axenox\BookClub;

use exface\Core\Interfaces\InstallerInterface;
use exface\Core\CommonLogic\Model\App;
use exface\Core\Exceptions\Model\MetaObjectNotFoundError;
use exface\Core\CommonLogic\AppInstallers\MySqlDatabaseInstaller;

class BookClubApp extends App
{
    public function getInstaller(InstallerInterface $injected_installer = null)
    {
        $installer = parent::getInstaller($injected_installer);
        
        $sqlInstaller = new MySqlDatabaseInstaller($this->getSelector());        
        try {
            $sqlInstaller
            ->setFoldersWithMigrations(['InitDB','Migrations'])
            ->setDataSourceSelector('0x11eab5facf6370bab5fa0205857feb80');
            $installer->addInstaller($sqlInstaller);
        } catch (MetaObjectNotFoundError $e) {
            $this->getWorkbench()->getLogger()->warning('Cannot init SqlSchemInstaller for app ' . $this->getAliasWithNamespace() . ': no model there yet!');
        }
        
        return $installer;
    }
}
?>