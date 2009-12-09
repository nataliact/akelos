<?php

require_once(dirname(__FILE__).'/../config.php');

class ConnectionHandling_TestCase extends ActiveRecordUnitTest
{
    public function test_should_establish_a_connection() {
        $this->installAndIncludeModels(array('DummyModel'=>'id'));

        $Model = $this->DummyModel;
        $default_connection = AkDbAdapter::getInstance();
        $available_tables_on_default = $default_connection->getAvailableTables();
        unset ($Model->_db);

        $this->assertReference($Model->establishConnection(),$default_connection);
        $development_connection = $Model->establishConnection('development', true);

        $available_tables_on_development = $development_connection->getAvailableTables();
        $this->assertFalse($development_connection===$default_connection);

        $this->assertUpcomingError("Could not find the database profile");
        $this->assertFalse($Model->establishConnection('not_specified_profile', true));

        $check_default_connection = AkDbAdapter::getInstance();
        $this->assertReference($default_connection,$check_default_connection);
        $this->assertReference($default_connection->connection,$check_default_connection->connection);

        //because we dont get two different connections at the same time on PHP if user and password is identical
        //thus: !$this->assertEqual($available_tables_on_default,$check_default_connection->getAvailableTables());
        //we have to:
        $check_default_connection->connect();
        //now we get:
        $this->assertEqual($available_tables_on_default,$check_default_connection->getAvailableTables());
        //BUT again: !!
        //$this->assertNotEqual($available_tables_on_development,$development_connection->getAvailableTables());
        //$this->assertEqual($available_tables_on_default,$development_connection->getAvailableTables());

    }

    public function test_should_establish_multiple_connections() {
        $db_settings = Ak::convert('yaml', 'array', AK_CONFIG_DIR.DS.'database.yml');
        $db_settings['sqlite_databases'] = array(
        'database_file' => AK_TMP_DIR.DS.'testing_sqlite_database.sqlite',
        'type' => 'sqlite'
        );
        file_put_contents(AK_CONFIG_DIR.DS.'database.yml', Ak::convert('array', 'yaml', $db_settings));
        @unlink(AK_TMP_DIR.DS.'testing_sqlite_database.sqlite');

        $this->installAndIncludeModels(array('TestOtherConnection'));

        Ak::import('test_other_connection');
        $OtherConnection = new TestOtherConnection(array('name'=>'Delia'));
        $this->assertTrue($OtherConnection->save());


        $this->installAndIncludeModels(array('DummyModel'=>'id,name'));
        $Dummy = new DummyModel();

        $this->assertNotEqual($Dummy->getConnection(), $OtherConnection->getConnection());

        unset($db_settings['sqlite_databases']);
        file_put_contents(AK_CONFIG_DIR.DS.'database.yml', Ak::convert('array', 'yaml', $db_settings));
    }

}

ak_test_case('ConnectionHandling_TestCase',true);
