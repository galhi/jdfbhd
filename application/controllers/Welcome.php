<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {


	public function index()
	{
		$this->start();
		//$this->load->view('welcome_message');
	}

	public function start($me = "") {
		$get = $this->DBM;
		if ($me) {
			$me = $get->me($me);
			if ($me->fid) {
				$p = $get->parent($me->fid);

				//get father 
				$father = $p['male'];
				if ($father) {
					$gpf = $get->parent($father->fid);

					//get grandfather father side
					$gfatherf = $gpf['male'];
					if ($gfatherf) {

					}
					//get grandmother father side
					$gmotherf = $gpf['female'];
					if ($gmotherf) {
						# code...
					}

					
				}

				//get mother 
				$mother = $p['female'];
				if ($mother) {
					$gpm = $get->parent($mother->fid);
					$gfather = $gpf['male'];
					$gmother = $gpf['female'];
				}

			} else {
				//me have no fid
			}
		}
		

		//tree output
		if ($me) {
			echo '<br> selected : '.$me->fname;
		} else {
			echo '<br>the person u selsed does not exist(list below)';
		}

		if ($me->fid) {
			if ($father) {
				echo '<br> father : '.$father->fname;
			} else {
				echo '<br> no fatgher <add aather link>';
			}
			if ($mother) {
				echo '<br> mother : '.$mother->fname;
			} else {
				echo '<br> no mopther <add mother>';
			}
		} else {
			echo '<br>parents of '.$me->fname.' is not available (add mom dad link)';
		}
	}

}
