
view: all_user_inst {
	sql_table_name: DATAVAULT.ALL_USER_INST ;;


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


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_rsrc, created_at_date, created_at_week, created_at_month, created_at_quarter, created_at_year, link_user_institution_key, hub_user_key, new_record]
	}
		 

}
		 