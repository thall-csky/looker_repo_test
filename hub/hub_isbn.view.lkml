
view: hub_isbn {
	sql_table_name: DATAVAULT.HUB_ISBN ;;


	dimension: hub_isbn_key {
		primary_key: yes
		type: string
		sql: ${TABLE}."HUB_ISBN_KEY" ;;
	}

	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}

	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
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
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, isbn13]
	}
		 

}
		 