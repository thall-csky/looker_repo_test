
view: sat_product_attr {
	sql_table_name: DATAVAULT.SAT_PRODUCT_ATTR ;;


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
		
		type: string
		sql: ${TABLE}."HUB_PRODUCT_KEY" ;;
	}
		

	dimension: hash_diff {
		
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension: attr_type_id {
		
		type: string
		sql: ${TABLE}."ATTR_TYPE_ID" ;;
	}
		

	dimension: attr_value {
		
		type: string
		sql: ${TABLE}."ATTR_VALUE" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts, _rsrc, hub_product_key, hash_diff, rsrc_timestamp, attr_type_id, attr_value]
	}
		 

}
		 