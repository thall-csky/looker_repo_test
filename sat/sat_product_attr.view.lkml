
view: sat_product_attr {
	sql_table_name: DATAVAULT.SAT_PRODUCT_ATTR ;;


	dimension: hub_product_key_hash_diff {
		primary_key: yes
		type: string
		sql: ${TABLE}."HUB_PRODUCT_KEY", ' ', ${TABLE}."HASH_DIFF" ;;
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
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, attr_type_id, attr_value]
	}
		 

}
		 