
view: hub_product {
	sql_table_name: DATAVAULT.HUB_PRODUCT ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hub_product_key {
		primary_key: yes
		type: string
		sql: ${TABLE}."HUB_PRODUCT_KEY" ;;
	}
		

	dimension: pid {
		type: string
		sql: ${TABLE}."PID" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, pid]
	}
		 

}
		 