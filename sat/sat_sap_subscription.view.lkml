
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
		fields: [_ldts, _rsrc, link_user_contract_subscription_key, hash_diff, is_latest_state, rsrc_timestamp, src_environment, src_platform, subscription_state, start_timestamp, end_timestamp, available_until, plan_id, duration, placed_time, cancelled_time, cancellation_reason, payment_source_type, payment_source_id, payment_source_guid, payment_source_line, item_id]
	}
		 

}
		 