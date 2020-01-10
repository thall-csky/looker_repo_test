
view: sat_serialnumber_consumed {
	sql_table_name: DATAVAULT.SAT_SERIALNUMBER_CONSUMED ;;


	dimension: hub_serialnumber_key_hash_diff {
		primary_key: yes
		type: string
		sql: ${TABLE}."HUB_SERIALNUMBER_KEY", ' ', ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension: hub_serialnumber_key {
		type: string
		sql: ${TABLE}."HUB_SERIALNUMBER_KEY" ;;
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
		

	dimension: is_latest_state {
		type: yesno
		sql: ${TABLE}."IS_LATEST_STATE" ;;
	}
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension: src_platform {
		type: string
		sql: ${TABLE}."SRC_PLATFORM" ;;
	}
		

	dimension: src_environment {
		type: string
		sql: ${TABLE}."SRC_ENVIRONMENT" ;;
	}
		

	dimension: user_sso_guid {
		type: string
		sql: ${TABLE}."USER_SSO_GUID" ;;
	}
		

	dimension: user_environment {
		type: string
		sql: ${TABLE}."USER_ENVIRONMENT" ;;
	}
		

	dimension: product_id {
		type: string
		sql: ${TABLE}."PRODUCT_ID" ;;
	}
		

	dimension_group: registration_date {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."REGISTRATION_DATE" ;;
	}
		

	dimension: subscription_length_in_days {
		type: number
		sql: ${TABLE}."SUBSCRIPTION_LENGTH_IN_DAYS" ;;
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
		

	dimension: platform {
		type: string
		sql: ${TABLE}."PLATFORM" ;;
	}
		

	dimension: code_type {
		type: string
		sql: ${TABLE}."CODE_TYPE" ;;
	}
		

	dimension: referring_isbn {
		type: string
		sql: ${TABLE}."REFERRING_ISBN" ;;
	}
		

	dimension: order_number {
		type: string
		sql: ${TABLE}."ORDER_NUMBER" ;;
	}
		

	dimension: revoked {
		type: yesno
		sql: ${TABLE}."REVOKED" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [hub_serialnumber_key, hash_diff, _ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, is_latest_state, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, src_platform, src_environment, user_sso_guid, user_environment, product_id, registration_date_date, registration_date_week, registration_date_month, registration_date_quarter, registration_date_year, subscription_length_in_days, modified_by, institution_id, region, user_type, platform, code_type, referring_isbn, order_number, revoked]
	}
		 

}
		 