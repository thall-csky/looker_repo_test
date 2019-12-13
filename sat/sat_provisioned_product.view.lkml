
view: sat_provisioned_product {
	sql_table_name: DATAVAULT.SAT_PROVISIONED_PRODUCT ;;


	dimension: link_user_product_key_hash_diff {
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_USER_PRODUCT_KEY", ' ', ${TABLE}."HASH_DIFF" ;;
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
		

	dimension: link_user_product_key {
		type: string
		sql: ${TABLE}."LINK_USER_PRODUCT_KEY" ;;
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
		

	dimension_group: date_added {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."DATE_ADDED" ;;
	}
		

	dimension_group: expiration_date {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."EXPIRATION_DATE" ;;
	}
		

	dimension: context_id {
		type: string
		sql: ${TABLE}."CONTEXT_ID" ;;
	}
		

	dimension: source {
		type: string
		sql: ${TABLE}."SOURCE" ;;
	}
		

	dimension: source_id {
		type: string
		sql: ${TABLE}."SOURCE_ID" ;;
	}
		

	dimension: code_type {
		type: string
		sql: ${TABLE}."CODE_TYPE" ;;
	}
		

	dimension: deleted {
		type: yesno
		sql: ${TABLE}."DELETED" ;;
	}
		

	dimension: order_number {
		type: string
		sql: ${TABLE}."ORDER_NUMBER" ;;
	}
		

	dimension: provisioned_product_row_id {
		type: string
		sql: ${TABLE}."PROVISIONED_PRODUCT_ROW_ID" ;;
	}
		

	dimension: modified_by {
		type: string
		sql: ${TABLE}."MODIFIED_BY" ;;
	}
		

	dimension_group: payment_date {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."PAYMENT_DATE" ;;
	}
		

	dimension: payment_type {
		type: string
		sql: ${TABLE}."PAYMENT_TYPE" ;;
	}
		

	dimension: provisioning_type {
		type: string
		sql: ${TABLE}."PROVISIONING_TYPE" ;;
	}
		

	dimension: core_text_isbn {
		type: string
		sql: ${TABLE}."CORE_TEXT_ISBN" ;;
	}
		

	dimension: iac_isbn {
		type: string
		sql: ${TABLE}."IAC_ISBN" ;;
	}
		

	dimension: user_type {
		type: string
		sql: ${TABLE}."USER_TYPE" ;;
	}
		

	dimension: user_environment {
		type: string
		sql: ${TABLE}."USER_ENVIRONMENT" ;;
	}
		

	dimension: institution_id {
		type: string
		sql: ${TABLE}."INSTITUTION_ID" ;;
	}
		

	dimension: region {
		type: string
		sql: ${TABLE}."REGION" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, link_user_product_key, hash_diff, is_latest_state, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, src_environment, src_platform, date_added_date, date_added_week, date_added_month, date_added_quarter, date_added_year, expiration_date_date, expiration_date_week, expiration_date_month, expiration_date_quarter, expiration_date_year, context_id, source, source_id, code_type, deleted, order_number, provisioned_product_row_id, modified_by, payment_date_date, payment_date_week, payment_date_month, payment_date_quarter, payment_date_year, payment_type, provisioning_type, core_text_isbn, iac_isbn, user_type, user_environment, institution_id, region]
	}
		 

}
		 