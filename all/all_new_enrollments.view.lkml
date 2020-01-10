
view: all_new_enrollments {
	sql_table_name: DATAVAULT.ALL_NEW_ENROLLMENTS ;;


	dimension_group: max_ts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."MAX_TS" ;;
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
		

	dimension: user_environment {
		type: string
		sql: ${TABLE}."USER_ENVIRONMENT" ;;
	}
		

	dimension: access_role {
		type: string
		sql: ${TABLE}."ACCESS_ROLE" ;;
	}
		

	dimension: self_study_isbn13 {
		type: string
		sql: ${TABLE}."SELF_STUDY_ISBN13" ;;
	}
		

	dimension_group: enrollment_date {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."ENROLLMENT_DATE" ;;
	}
		

	dimension: paid_in_full {
		type: string
		sql: ${TABLE}."PAID_IN_FULL" ;;
	}
		

	dimension: order_number {
		type: string
		sql: ${TABLE}."ORDER_NUMBER" ;;
	}
		

	dimension: payment_code {
		type: string
		sql: ${TABLE}."PAYMENT_CODE" ;;
	}
		

	dimension_group: grace_end_date {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."GRACE_END_DATE" ;;
	}
		

	dimension: transferred {
		type: string
		sql: ${TABLE}."TRANSFERRED" ;;
	}
		

	dimension: opt_out_institution_purchase {
		type: string
		sql: ${TABLE}."OPT_OUT_INSTITUTION_PURCHASE" ;;
	}
		

	dimension: modified_by {
		type: string
		sql: ${TABLE}."MODIFIED_BY" ;;
	}
		

	dimension: access_code_swap {
		type: string
		sql: ${TABLE}."ACCESS_CODE_SWAP" ;;
	}
		

	dimension: access_code_isbn13 {
		type: string
		sql: ${TABLE}."ACCESS_CODE_ISBN13" ;;
	}
		

	dimension: access_code_price {
		type: number
		sql: ${TABLE}."ACCESS_CODE_PRICE" ;;
	}
		

	dimension: course_isbn_price {
		type: number
		sql: ${TABLE}."COURSE_ISBN_PRICE" ;;
	}
		

	dimension: billing_type {
		type: string
		sql: ${TABLE}."BILLING_TYPE" ;;
	}
		

	dimension: payment_isbn13 {
		type: string
		sql: ${TABLE}."PAYMENT_ISBN13" ;;
	}
		

	dimension: deleted {
		type: yesno
		sql: ${TABLE}."DELETED" ;;
	}
		

	dimension: iam_provider {
		type: string
		sql: ${TABLE}."IAM_PROVIDER" ;;
	}
		

	dimension: link_user_coursesection_key {
		type: string
		sql: ${TABLE}."LINK_USER_COURSESECTION_KEY" ;;
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
		fields: [max_ts_date, max_ts_week, max_ts_month, max_ts_quarter, max_ts_year, rsrc_timestamp_date, rsrc_timestamp_week, rsrc_timestamp_month, rsrc_timestamp_quarter, rsrc_timestamp_year, src_platform, src_environment, user_environment, access_role, self_study_isbn13, enrollment_date_date, enrollment_date_week, enrollment_date_month, enrollment_date_quarter, enrollment_date_year, paid_in_full, order_number, payment_code, grace_end_date_date, grace_end_date_week, grace_end_date_month, grace_end_date_quarter, grace_end_date_year, transferred, opt_out_institution_purchase, modified_by, access_code_swap, access_code_isbn13, access_code_price, course_isbn_price, billing_type, payment_isbn13, deleted, iam_provider, link_user_coursesection_key, hash_diff]
	}
		 

}
		 