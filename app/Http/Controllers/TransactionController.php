<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use DB;

class TransactionController extends Controller
{

  public function ajax_list(Request $request)
  {
		$list = Transaction::select(
			"t.*",
			"merchants.merchant_name",
			"outlets.outlet_name",
			"staffs.staff_name",
			"customers.customer_name"
		)
		->from('transactions as t') // Provide a unique alias for the Transaction table
		->leftJoin("merchants", "merchants.id", "=", DB::raw("CAST(t.merchant_id AS BIGINT)"))
		->leftJoin("outlets", "outlets.id", "=", DB::raw("CAST(t.outlet_id AS BIGINT)"))
		->leftJoin("staffs", "staffs.id", "=", DB::raw("CAST(t.staff_id AS BIGINT)"))
		->leftJoin("customers", "customers.id", "=", DB::raw("CAST(t.customer_id AS BIGINT)"))
		->where('merchants.merchant_name', "!=" , null)
		->where('outlets.outlet_name', "!=" , null)
		->where('staffs.staff_name', "!=" , null)
		->where('customers.customer_name', "!=" , null)
		->get();
  
    $data = array();
    $no = $request->start;
    foreach ($list as $item) {
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $item->id;
			$row[] = $item->merchant_name;
			$row[] = $item->outlet_name;
      $timestamp= explode(" ", $item->created_at);
			$row[] =$timestamp[0]." ".$timestamp[1];
			$row[] = $item->staff_name;
			$row[] = $item->pay_amount;
			if($item->payment_type === '1'){
				$item->payment_type = 'Cash';
			}elseif($item->payment_type === '2'){
				$item->payment_type = 'Debit';
			}elseif($item->payment_type === '3'){
				$item->payment_type = 'Ewallet';
			}		
			$row[] = $item->payment_type;
			$row[] = $item->customer_name;
			$row[] = $item->tax;
			$row[] = $item->change_amount;
			$row[] = $item->total_amount;
			if($item->payment_status === '1'){
				$item->payment_status = 'Paid';
			}elseif($item->payment_status === '0'){
				$item->payment_status = 'Not Paid';
			}
			$row[] = $item->payment_status;

			$data[] = $row;
    }

    $output = array(
      "draw" => intval($request->draw),
      "recordsTotal" => intval($this->count_all()),
      "recordsFiltered" => intval($this->count_filtered()),
      "data" => $data,
    );
    //output to json format
    // echo json_encode($output);
    return response()->json($output);
  }

  function count_all()
  {
		$countAll = Transaction::count();
		return $countAll;        
  }
	
	function count_filtered()
  {
		$countFiltered = Transaction::select(
			"t.*",
			"merchants.merchant_name",
			"outlets.outlet_name",
			"staffs.staff_name",
			"customers.customer_name"
		)
		->from('transactions as t') // Provide a unique alias for the Transaction table
		->leftJoin("merchants", "merchants.id", "=", DB::raw("CAST(t.merchant_id AS BIGINT)"))
		->leftJoin("outlets", "outlets.id", "=", DB::raw("CAST(t.outlet_id AS BIGINT)"))
		->leftJoin("staffs", "staffs.id", "=", DB::raw("CAST(t.staff_id AS BIGINT)"))
		->leftJoin("customers", "customers.id", "=", DB::raw("CAST(t.customer_id AS BIGINT)"))
		->where('merchants.merchant_name', "<>" , null)
		->where('outlets.outlet_name', "<>" , null)
		->where('staffs.staff_name', "<>" , null)
		->where('customers.customer_name', "<>" , null)
		->get()
		->count();
		return $countFiltered;      
  }
}
