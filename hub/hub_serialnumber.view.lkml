
view: hub_serialnumber {
	sql_table_name: DATAVAULT.HUB_SERIALNUMBER ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hub_serialnumber_key {
		
		type: string
		sql: ${TABLE}."HUB_SERIALNUMBER_KEY" ;;
	}
		

	dimension: serial_number {
		
		type: string
		sql: ${TABLE}."SERIAL_NUMBER" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts, _rsrc, hub_serialnumber_key, serial_number]
	}
		 

}
		 