
view: sat_sap_subscription {
	sql_table_name: DATAVAULT.SAT_SAP_SUBSCRIPTION ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_user_contract_subscription_key {
		
		type: string
		sql: ${TABLE}."LINK_USER_CONTRACT_SUBSCRIPTION_KEY" ;;
	}
		

	dimension: hash_diff {
		
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension: is_latest_state {
		
		type: yesno
		sql: ${TABLE}."IS_LATEST_STATE" ;;
	}
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension: src_environment {
		
		type: string
		sql: ${TABLE}."SRC_ENVIRONMENT" ;;
	}
		

	dimension: src_platform {
		
		type: string
		sql: ${TABLE}."SRC_PLATFORM" ;;
	}
		

	dimension: subscription_state {
		
		type: string
		sql: ${TABLE}."SUBSCRIPTION_STATE" ;;
	}
		

	dimension_group: start_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."START_TIMESTAMP" ;;
	}
		

	dimension_group: end_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."END_TIMESTAMP" ;;
	}
		

	dimension_group: available_until {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."AVAILABLE_UNTIL" ;;
	}
		

	dimension: plan_id {
		
		type: string
		sql: ${TABLE}."PLAN_ID" ;;
	}
		

	dimension: duration {
		
		type: string
		sql: ${TABLE}."DURATION" ;;
	}
		

	dimension_group: placed_time {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."PLACED_TIME" ;;
	}
		

	dimension_group: cancelled_time {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."CANCELLED_TIME" ;;
	}
		

	dimension: cancellation_reason {
		
		type: string
		sql: ${TABLE}."CANCELLATION_REASON" ;;
	}
		

	dimension: payment_source_type {
		
		type: string
		sql: ${TABLE}."PAYMENT_SOURCE_TYPE" ;;
	}
		

	dimension: payment_source_id {
		
		type: string
		sql: ${TABLE}."PAYMENT_SOURCE_ID" ;;
	}
		

	dimension: payment_source_guid {
		
		type: string
		sql: ${TABLE}."PAYMENT_SOURCE_GUID" ;;
	}
		

	dimension: payment_source_line {
		
		type: string
		sql: ${TABLE}."PAYMENT_SOURCE_LINE" ;;
	}
		

	dimension: item_id {
		
		type: string
		sql: ${TABLE}."ITEM_ID" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, link_user_contract_subscription_key, hash_diff, is_latest_state, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, src_environment, src_platform, subscription_state, start_timestamp_date, start_timestamp_week, start_timestamp_month, start_timestamp_quarter, start_timestamp_year, end_timestamp_date, end_timestamp_week, end_timestamp_month, end_timestamp_quarter, end_timestamp_year, available_until_date, available_until_week, available_until_month, available_until_quarter, available_until_year, plan_id, duration, placed_time_date, placed_time_week, placed_time_month, placed_time_quarter, placed_time_year, cancelled_time_date, cancelled_time_week, cancelled_time_month, cancelled_time_quarter, cancelled_time_year, cancellation_reason, payment_source_type, payment_source_id, payment_source_guid, payment_source_line, item_id]
	}
		 

}
		 