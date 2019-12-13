
view: hub_user {
	sql_table_name: DATAVAULT.HUB_USER ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: hub_user_key {
		
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		

	dimension: uid {
		
		type: string
		sql: ${TABLE}."UID" ;;
	}
		

	dimension: iam_provider {
		
		type: string
		sql: ${TABLE}."IAM_PROVIDER" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_user_key, uid, iam_provider]
	}
		 

}
		 