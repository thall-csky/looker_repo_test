
view: link_product_isbn {
	sql_table_name: DATAVAULT.LINK_PRODUCT_ISBN ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_product_isbn_key {
		
		type: string
		sql: ${TABLE}."LINK_PRODUCT_ISBN_KEY" ;;
	}
		

	dimension: hub_product_key {
		
		type: string
		sql: ${TABLE}."HUB_PRODUCT_KEY" ;;
	}
		

	dimension: hub_isbn_key {
		
		type: string
		sql: ${TABLE}."HUB_ISBN_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_product_key, hub_isbn_key]
	}
		 

}
		 