
view: sat_user_product_serialnumber {
	sql_table_name: DATAVAULT.SAT_USER_PRODUCT_SERIALNUMBER ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_user_product_serialnumber_key {
		
		type: string
		sql: ${TABLE}."LINK_USER_PRODUCT_SERIALNUMBER_KEY" ;;
	}
		

	dimension: hash_diff {
		
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension_group: event_time {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."EVENT_TIME" ;;
	}
		

	dimension_group: registration_date {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."REGISTRATION_DATE" ;;
	}
		

	dimension: modified_by {
		
		type: string
		sql: ${TABLE}."MODIFIED_BY" ;;
	}
		

	dimension: institution_id {
		
		type: string
		sql: ${TABLE}."INSTITUTION_ID" ;;
	}
		

	dimension: region {
		
		type: string
		sql: ${TABLE}."REGION" ;;
	}
		

	dimension: user_type {
		
		type: string
		sql: ${TABLE}."USER_TYPE" ;;
	}
		

	dimension: order_number {
		
		type: string
		sql: ${TABLE}."ORDER_NUMBER" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts, _rsrc, link_user_product_serialnumber_key, hash_diff, event_time, registration_date, modified_by, institution_id, region, user_type, order_number]
	}
		 

}
		 