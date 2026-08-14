<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Install extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper(array('form', 'url'));
    }

    public function index() {
        $data = array();
        $data['error'] = '';
        $data['success'] = '';

        if ($this->input->server('REQUEST_METHOD') === 'POST') {
            $hostname = trim($this->input->post('hostname', TRUE)) ?: 'localhost';
            $username = trim($this->input->post('username', TRUE));
            $password = $this->input->post('password', TRUE);
            $database = trim($this->input->post('database', TRUE));

            if (empty($username) || empty($database)) {
                $data['error'] = 'Database Username and Database Name are required.';
            } else {
                // Test MySQL connection
                @$link = new mysqli($hostname, $username, $password, $database);
                if ($link->connect_error) {
                    $data['error'] = 'Database Connection Failed: ' . $link->connect_error;
                } else {
                    // Update database.php config file
                    $db_file = APPPATH . 'config/database.php';
                    $db_config = "<?php\n" .
                        "defined('BASEPATH') OR exit('No direct script access allowed');\n\n" .
                        "\$active_group = 'default';\n" .
                        "\$query_builder = TRUE;\n\n" .
                        "\$db['default'] = array(\n" .
                        "\t'dsn'      => '',\n" .
                        "\t'hostname' => '" . addslashes($hostname) . "',\n" .
                        "\t'username' => '" . addslashes($username) . "',\n" .
                        "\t'password' => '" . addslashes($password) . "',\n" .
                        "\t'database' => '" . addslashes($database) . "',\n" .
                        "\t'dbdriver' => 'mysqli',\n" .
                        "\t'dbprefix' => '',\n" .
                        "\t'pconnect' => FALSE,\n" .
                        "\t'db_debug' => FALSE,\n" .
                        "\t'cache_on' => FALSE,\n" .
                        "\t'cachedir' => '',\n" .
                        "\t'char_set' => 'utf8',\n" .
                        "\t'dbcollat' => 'utf8_general_ci',\n" .
                        "\t'swap_pre' => '',\n" .
                        "\t'encrypt'  => FALSE,\n" .
                        "\t'compress' => FALSE,\n" .
                        "\t'stricton' => FALSE,\n" .
                        "\t'failover' => array(),\n" .
                        "\t'save_queries' => TRUE\n" .
                        ");\n";

                    @file_put_contents($db_file, $db_config);

                    $data['success'] = 'Database configuration saved successfully! Redirecting to login page...';
                    header("Refresh: 2; url=" . base_url('site/login'));
                }
            }
        }

        $this->load->view('install/index', $data);
    }
}
