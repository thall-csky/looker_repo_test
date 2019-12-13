
view: sat_coursesection {
	sql_table_name: DATAVAULT.SAT_COURSESECTION ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {|		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hub_coursesection_key {
		primary_key: yes|		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY" ;;
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
		

	dimension: course_key {|		type: string
		sql: ${TABLE}."COURSE_KEY" ;;
	}
		

	dimension: course_name {|		type: string
		sql: ${TABLE}."COURSE_NAME" ;;
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
		

	dimension_group: grace_period_end_date {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."GRACE_PERIOD_END_DATE" ;;
	}
		

	dimension_group: grace_period_end_date_override {
		timeframes: [raw, time, date, week, month, quarter, year]|		type: time
		sql: ${TABLE}."GRACE_PERIOD_END_DATE_OVERRIDE" ;;
	}
		

	dimension: course_created_by_guid {|		type: string
		sql: ${TABLE}."COURSE_CREATED_BY_GUID" ;;
	}
		

	dimension: is_gateway_course {|		type: yesno
		sql: ${TABLE}."IS_GATEWAY_COURSE" ;;
	}
		

	dimension: is_partner_lms {|		type: yesno
		sql: ${TABLE}."IS_PARTNER_LMS" ;;
	}
		

	dimension: discipline {|		type: string
		sql: ${TABLE}."DISCIPLINE" ;;
	}
		

	dimension: course_platform {|		type: string
		sql: ${TABLE}."COURSE_PLATFORM" ;;
	}
		

	dimension: section {|		type: string
		sql: ${TABLE}."SECTION" ;;
	}
		

	dimension: course_master {|		type: string
		sql: ${TABLE}."COURSE_MASTER" ;;
	}
		

	dimension: master_context_id {|		type: string
		sql: ${TABLE}."MASTER_CONTEXT_ID" ;;
	}
		

	dimension: course_cgi {|		type: string
		sql: ${TABLE}."COURSE_CGI" ;;
	}
		

	dimension: from_course_cgi {|		type: string
		sql: ${TABLE}."FROM_COURSE_CGI" ;;
	}
		

	dimension: timezone {|		type: string
		sql: ${TABLE}."TIMEZONE" ;;
	}
		

	dimension: billing_type {|		type: string
		sql: ${TABLE}."BILLING_TYPE" ;;
	}
		

	dimension: iac_isbn {|		type: string
		sql: ${TABLE}."IAC_ISBN" ;;
	}
		

	dimension: multi_term_isbn13 {|		type: string
		sql: ${TABLE}."MULTI_TERM_ISBN13" ;;
	}
		

	dimension: core_text_isbn13 {|		type: string
		sql: ${TABLE}."CORE_TEXT_ISBN13" ;;
	}
		

	dimension: section_product_type {|		type: string
		sql: ${TABLE}."SECTION_PRODUCT_TYPE" ;;
	}
		

	dimension: cu_isbn13 {|		type: string
		sql: ${TABLE}."CU_ISBN13" ;;
	}
		

	dimension: cu_enabled {|		type: yesno
		sql: ${TABLE}."CU_ENABLED" ;;
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
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hash_diff, is_latest_state, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, course_key, course_name, created_on_date, created_on_week, created_on_month, created_on_quarter, created_on_year, begin_date_date, begin_date_week, begin_date_month, begin_date_quarter, begin_date_year, end_date_date, end_date_week, end_date_month, end_date_quarter, end_date_year, note, institution_id, institution_id_override, deleted, grace_period_end_date_date, grace_period_end_date_week, grace_period_end_date_month, grace_period_end_date_quarter, grace_period_end_date_year, grace_period_end_date_override_date, grace_period_end_date_override_week, grace_period_end_date_override_month, grace_period_end_date_override_quarter, grace_period_end_date_override_year, course_created_by_guid, is_gateway_course, is_partner_lms, discipline, course_platform, section, course_master, master_context_id, course_cgi, from_course_cgi, timezone, billing_type, iac_isbn, multi_term_isbn13, core_text_isbn13, section_product_type, cu_isbn13, cu_enabled, is_demo, opt_out_enabled, opt_out_days, opt_out_end_date_date, opt_out_end_date_week, opt_out_end_date_month, opt_out_end_date_quarter, opt_out_end_date_year]
	}
		 

}
		 