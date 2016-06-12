<?php

/**
 * Description of matkul
 *
 * @author Andi Susilo
 */

class Matkul extends App_Crud_Controller {

    function __construct() {
        parent::__construct();

        $this->_validation = array(
                'add' => array(
                        array(
                                'field' => 'code_matkul',
                                'label' => _('kode matkul'),
                                'rules' => 'required',
                        ),
                        array(
                                'field' => 'name',
                                'label' => _('nama matkul'),
                                'rules' => 'required',
                        ),
                        array(
                                'field' => 'sks_id',
                                'label' => _('jumlah sks'),
                                'rules' => 'required',
                        ),
                        array(
                                'field' => 'semester',
                                'label' => _('semester'),
                                'rules' => 'required',
                        ),
                        
                ),
                'edit' => array(
                        array(
                                'field' => 'code_matkul',
                                'label' => _('kode matkul'),
                                'rules' => 'required',
                        ),
                        array(
                                'field' => 'name',
                                'label' => _('nama matkul'),
                                'rules' => 'required',
                        ),
                        array(
                                'field' => 'sks_id',
                                'label' => _('jumlah sks'),
                                'rules' => 'required',
                        ),
                        array(
                                'field' => 'semester',
                                'label' => _('semester'),
                                'rules' => 'required',
                        ),
                       
                ),
        );
    }

    function _config_grid() {
        $config = parent::_config_grid();
        $config['fields'] = array('code_matkul','name', 'semester','sks_name','dosen_name');
        $config['names'] = array('Kode Matkul','Nama Matkul', 'MK Untuk Semester','Jumlah SKS', 'Nama Dosen Pengajar');
        $config['formats'] = array('row_detail','', '','', '');
        $config['filters'] = array('matkul.code_matkul');
        return $config;
    }

    function _save($id=null) {
        
        $skss = $this->db->query('SELECT * FROM sks ORDER BY name ASC')->result_array();
        $this->_data['sks_options'] = array(
                '' => '-Pilih-',
        );
        foreach ($skss as $sks) {
            $this->_data['sks_options'][$sks['id']] = $sks['name'];
        }

        parent::_save($id);
    }

    function detail($id) {
        $this->_data['matkul'] = $fa = $this->_model()->get($id);

        
    }
}
