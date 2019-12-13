
view: sat_product {
	sql_table_name: DATAVAULT.SAT_PRODUCT ;;


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
		

	dimension: active {
		
		type: yesno
		sql: ${TABLE}."ACTIVE" ;;
	}
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension: name {
		
		type: string
		sql: ${TABLE}."NAME" ;;
	}
		

	dimension: type {
		
		type: string
		sql: ${TABLE}."TYPE" ;;
	}
		

	dimension: part_id {
		
		type: string
		sql: ${TABLE}."PART_ID" ;;
	}
		

	dimension_group: create_date {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."CREATE_DATE" ;;
	}
		

	dimension: modified_by {
		
		type: string
		sql: ${TABLE}."MODIFIED_BY" ;;
	}
		

	dimension: subscription_duration {
		
		type: number
		sql: ${TABLE}."SUBSCRIPTION_DURATION" ;;
	}
		

	dimension: access_code_type {
		
		type: string
		sql: ${TABLE}."ACCESS_CODE_TYPE" ;;
	}
		

	dimension: pubco_publisher_id {
		
		type: string
		sql: ${TABLE}."PUBCO_PUBLISHER_ID" ;;
	}
		

	dimension: pubco_product_id {
		
		type: string
		sql: ${TABLE}."PUBCO_PRODUCT_ID" ;;
	}
		

	dimension: deleted {
		
		type: yesno
		sql: ${TABLE}."DELETED" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts, _rsrc, hub_product_key, hash_diff, active, rsrc_timestamp, name, type, part_id, create_date, modified_by, subscription_duration, access_code_type, pubco_publisher_id, pubco_product_id, deleted]
	}
		 

}
		 