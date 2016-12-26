<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
* Name:  Ion Auth Model
*
* Version: 2.5.2
*
* Author:  Ben Edmunds
* 		   ben.edmunds@gmail.com
*	  	   @benedmunds
*
* Added Awesomeness: Phil Sturgeon
*
* Location: http://github.com/benedmunds/CodeIgniter-Ion-Auth
*
* Created:  10.01.2009
*
* Last Change: 3.22.13
*
* Changelog:
* * 3-22-13 - Additional entropy added - 52aa456eef8b60ad6754b31fbdcc77bb
*
* Description:  Modified auth system based on redux_auth with extensive customization.  This is basically what Redux Auth 2 should be.
* Original Author name has been kept but that does not mean that the method has not been modified.
*
* Requirements: PHP5 or above
*
*/

class Db_model extends CI_Model
{
	public function me($id){
		$query = $this->db->get_where('peoples', array('pid' => $id), 1);
		return $query->row();
	}

	public function parent($ftid = "") {
		if (!$ftid) {
			$data['male'] = NULL;
			$data['female'] = NULL;
		} else {
			$query = $this->db->get_where('marriages', array('mid' => $ftid), 1);
			$f = $query->row();
			$data['male'] = NULL;
			$data['female'] = NULL;

			if ($f->male) {
				$data['male'] = $this->me($f->male);
			}
			if ($f->female) {
				$data['female'] = $this->me($f->female);
			}
		}
		

		return $data;

	}
}
