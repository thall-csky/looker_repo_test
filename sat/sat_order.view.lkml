
view: sat_order {
	sql_table_name: DATAVAULT.SAT_ORDER ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_user_contract_key {
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_USER_CONTRACT_KEY" ;;
	}
		

	dimension: hash_diff {
		primary_key: yes
		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension: order_id {
		type: string
		sql: ${TABLE}."ORDER_ID" ;;
	}
		

	dimension: internal {
		type: yesno
		sql: ${TABLE}."INTERNAL" ;;
	}
		

	dimension: currency_code {
		type: string
		sql: ${TABLE}."CURRENCY_CODE" ;;
	}
		

	dimension_group: order_date {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."ORDER_DATE" ;;
	}
		

	dimension: order_source {
		type: string
		sql: ${TABLE}."ORDER_SOURCE" ;;
	}
		

	dimension: order_taken_by {
		type: string
		sql: ${TABLE}."ORDER_TAKEN_BY" ;;
	}
		

	dimension: total_amount {
		type: number
		sql: ${TABLE}."TOTAL_AMOUNT" ;;
	}
		

	dimension: po_number {
		type: string
		sql: ${TABLE}."PO_NUMBER" ;;
	}
		

	dimension: processed_method {
		type: string
		sql: ${TABLE}."PROCESSED_METHOD" ;;
	}
		

	dimension: store_id {
		type: string
		sql: ${TABLE}."STORE_ID" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, order_id, internal, currency_code, order_date_date, order_date_week, order_date_month, order_date_quarter, order_date_year, order_source, order_taken_by, total_amount, po_number, processed_method, store_id]
	}
		 

}
		 