
view: all_new_contracts {
	sql_table_name: DATAVAULT.ALL_NEW_CONTRACTS ;;


	dimension: contract_id {
		type: string
		sql: ${TABLE}."CONTRACT_ID" ;;
	}
		

	dimension: hub_contract_key {
		type: string
		sql: ${TABLE}."HUB_CONTRACT_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [contract_id, hub_contract_key]
	}
		 

}
		 