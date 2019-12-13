
view: hub_isbn {
	sql_table_name: DATAVAULT.HUB_ISBN ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hub_isbn_key {
		
		type: string
		sql: ${TABLE}."HUB_ISBN_KEY" ;;
	}
		

	dimension: isbn13 {
		
		type: string
		sql: ${TABLE}."ISBN13" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts, _rsrc, hub_isbn_key, isbn13]
	}
		 

}
		 