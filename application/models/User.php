<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Model
{

  public function index()
  {
    $this->db->select();
    $this->db->from('user');
    return $this->db->get()->result_array();
  }

  public function registration($data)
  {
    $this->db->insert('user', $data);
  }

  public function get($email)
  {
    $this->db->select('*');
    $this->db->from('user');
    $this->db->where('email', $email);
    return $this->db->get()->row_array();
  }

  public function update($data, $id)
  {
    $this->db->set($data);
    $this->db->where('id', $id);
    $this->db->update('User');
  }
}
