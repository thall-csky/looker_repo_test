
view: all_new_products {
	sql_table_name: DATAVAULT.ALL_NEW_PRODUCTS ;;


	dimension: pid {
		type: string
		sql: ${TABLE}."PID" ;;
	}
		

	dimension: type {
		type: string
		sql: ${TABLE}."TYPE" ;;
	}
		

	dimension: part_id {
		type: string
		sql: ${TABLE}."PART_ID" ;;
	}
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension_group: max_ts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."MAX_TS" ;;
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
		

	dimension: subscription_duration_in_days {
		type: number
		sql: ${TABLE}."SUBSCRIPTION_DURATION_IN_DAYS" ;;
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
		

	dimension: hub_product_key {
		type: string
		sql: ${TABLE}."HUB_PRODUCT_KEY" ;;
	}
		

	dimension: hash_diff {
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [pid, type, part_id, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, max_ts_date, max_ts_week, max_ts_month, max_ts_quarter, max_ts_year, create_date_date, create_date_week, create_date_month, create_date_quarter, create_date_year, modified_by, subscription_duration_in_days, access_code_type, pubco_publisher_id, pubco_product_id, deleted, hub_product_key, hash_diff]
	}
		 

}
		 