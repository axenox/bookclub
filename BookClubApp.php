<?php
namespace axenox\BookClub;

use exface\Core\Interfaces\InstallerInterface;
use exface\Core\CommonLogic\AppInstallers\SqlSchemaInstaller;
use exface\Core\CommonLogic\Model\App;
use exface\Core\Exceptions\Model\MetaObjectNotFoundError;

class BookClubApp extends App
{
    public function getInstaller(InstallerInterface $injected_installer = null)
    {
        $installer = parent::getInstaller($injected_installer);
        
        $schema_installer = new SqlSchemaInstaller($this->getSelector());        
        try {
            $schema_installer
            ->setFoldersWithMigrations(['InitDB','Migrations'])
            ->setDataSourceSelector('0x11eab5facf6370bab5fa0205857feb80');
            $installer->addInstaller($schema_installer);
        } catch (MetaObjectNotFoundError $e) {
            $this->getWorkbench()->getLogger()->warning('Cannot init SqlSchemInstaller for app ' . $this->getAliasWithNamespace() . ': no model there yet!');
        }
        
        return $installer;
    }
}
?>