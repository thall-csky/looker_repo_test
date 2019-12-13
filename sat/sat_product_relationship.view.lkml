
view: sat_product_relationship {
	sql_table_name: DATAVAULT.SAT_PRODUCT_RELATIONSHIP ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_product_relationship_key {
		
		type: string
		sql: ${TABLE}."LINK_PRODUCT_RELATIONSHIP_KEY" ;;
	}
		

	dimension: hash_diff {
		
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
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
		fields: [_ldts, _rsrc, link_product_relationship_key, hash_diff, level]
	}
		 

}
		 