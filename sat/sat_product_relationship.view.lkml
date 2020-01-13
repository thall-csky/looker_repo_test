
view: sat_product_relationship {
	sql_table_name: DATAVAULT.SAT_PRODUCT_RELATIONSHIP ;;


	dimension: link_product_relationship_key_hash_diff {
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_PRODUCT_RELATIONSHIP_KEY", ' ', ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension: link_product_relationship_key {
		type: string
		sql: ${TABLE}."LINK_PRODUCT_RELATIONSHIP_KEY" ;;
	}
		

	dimension: hash_diff {
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
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
		

	dimension: level {
		type: string
		sql: ${TABLE}."LEVEL" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [link_product_relationship_key, hash_diff, _ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, level]
	}
		 

}
		 