
view: sat_enterpriselicense {
	sql_table_name: DATAVAULT.SAT_ENTERPRISELICENSE ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {|		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hub_enterpriselicense_key {|		type: string
		sql: ${TABLE}."HUB_ENTERPRISELICENSE_KEY" ;;
	}
		

	dimension: hash_diff {|		type: string
		sql: ${TABLE}."HASH_DIFF" ;;
	}
		

	dimension: is_latest_state {|		type: yesno
		sql: ${TABLE}."IS_LATEST_STATE" ;;
	}
		

	dimension_group: rsrc_timestamp {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."RSRC_TIMESTAMP" ;;
	}
		

	dimension_group: created_on {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."CREATED_ON" ;;
	}
		

	dimension_group: begin_date {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."BEGIN_DATE" ;;
	}
		

	dimension_group: end_date {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."END_DATE" ;;
	}
		

	dimension: note {|		type: string
		sql: ${TABLE}."NOTE" ;;
	}
		

	dimension: institution_id {|		type: string
		sql: ${TABLE}."INSTITUTION_ID" ;;
	}
		

	dimension: institution_id_override {|		type: string
		sql: ${TABLE}."INSTITUTION_ID_OVERRIDE" ;;
	}
		

	dimension: deleted {|		type: yesno
		sql: ${TABLE}."DELETED" ;;
	}
		

	dimension: iac_isbn13 {|		type: string
		sql: ${TABLE}."IAC_ISBN13" ;;
	}
		

	dimension: multi_term_isbn13 {|		type: string
		sql: ${TABLE}."MULTI_TERM_ISBN13" ;;
	}
		

	dimension: core_text_isbn13 {|		type: string
		sql: ${TABLE}."CORE_TEXT_ISBN13" ;;
	}
		

	dimension: product_type {|		type: string
		sql: ${TABLE}."PRODUCT_TYPE" ;;
	}
		

	dimension: cu_isbn13 {|		type: string
		sql: ${TABLE}."CU_ISBN13" ;;
	}
		

	dimension: cu_enabled {|		type: yesno
		sql: ${TABLE}."CU_ENABLED" ;;
	}
		

	dimension: el_contract_id {|		type: string
		sql: ${TABLE}."EL_CONTRACT_ID" ;;
	}
		

	dimension: el_type {|		type: string
		sql: ${TABLE}."EL_TYPE" ;;
	}
		

	dimension: el_max_seat {|		type: number
		sql: ${TABLE}."EL_MAX_SEAT" ;;
	}
		

	dimension: el_class_test {|		type: yesno
		sql: ${TABLE}."EL_CLASS_TEST" ;;
	}
		

	dimension: is_demo {|		type: yesno
		sql: ${TABLE}."IS_DEMO" ;;
	}
		

	dimension: opt_out_enabled {|		type: yesno
		sql: ${TABLE}."OPT_OUT_ENABLED" ;;
	}
		

	dimension: opt_out_days {|		type: number
		sql: ${TABLE}."OPT_OUT_DAYS" ;;
	}
		

	dimension_group: opt_out_end_date {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."OPT_OUT_END_DATE" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_enterpriselicense_key, hash_diff, is_latest_state, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, created_on_date, created_on_week, created_on_month, created_on_quarter, created_on_year, begin_date_date, begin_date_week, begin_date_month, begin_date_quarter, begin_date_year, end_date_date, end_date_week, end_date_month, end_date_quarter, end_date_year, note, institution_id, institution_id_override, deleted, iac_isbn13, multi_term_isbn13, core_text_isbn13, product_type, cu_isbn13, cu_enabled, el_contract_id, el_type, el_max_seat, el_class_test, is_demo, opt_out_enabled, opt_out_days, opt_out_end_date_date, opt_out_end_date_week, opt_out_end_date_month, opt_out_end_date_quarter, opt_out_end_date_year]
	}
		 

}
		 