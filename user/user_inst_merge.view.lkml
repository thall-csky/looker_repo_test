
view: user_inst_merge {
	sql_table_name: DATAVAULT.USER_INST_MERGE ;;


	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}

	dimension_group: created_at {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."CREATED_AT" ;;
	}

	dimension: link_user_institution_key {
		type: string
		sql: ${TABLE}."LINK_USER_INSTITUTION_KEY" ;;
	}

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}

	dimension: new_record {
		type: yesno
		sql: ${TABLE}."NEW_RECORD" ;;
	}

	dimension: institution_change {
		type: number
		sql: ${TABLE}."INSTITUTION_CHANGE" ;;
	}

	dimension: is_institution_change {
		type: yesno
		sql: ${TABLE}."IS_INSTITUTION_CHANGE" ;;
	}

	dimension: latest_institution_for_user {
		type: number
		sql: ${TABLE}."LATEST_INSTITUTION_FOR_USER" ;;
	}


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_rsrc, created_at_date, created_at_week, created_at_month, created_at_quarter, created_at_year, link_user_institution_key, hub_user_key, new_record, institution_change, is_institution_change, latest_institution_for_user]
	}
		 

}
		 