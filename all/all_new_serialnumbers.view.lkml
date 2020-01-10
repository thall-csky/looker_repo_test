
view: all_new_serialnumbers {
	sql_table_name: DATAVAULT.ALL_NEW_SERIALNUMBERS ;;


	dimension: serial_number {
		type: string
		sql: ${TABLE}."SERIAL_NUMBER" ;;
	}
		

	dimension: hub_serialnumber_key {
		type: string
		sql: ${TABLE}."HUB_SERIALNUMBER_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [serial_number, hub_serialnumber_key]
	}
		 

}
		 