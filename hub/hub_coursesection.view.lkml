
view: hub_coursesection {
	sql_table_name: DATAVAULT.HUB_COURSESECTION ;;


	dimension: hub_coursesection_key {
		primary_key: yes
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY" ;;
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
		

	dimension: hub_coursesection_key {
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY" ;;
	}
		

	dimension: context_id {
		type: string
		sql: ${TABLE}."CONTEXT_ID" ;;
	}
		

	dimension: environment {
		type: string
		sql: ${TABLE}."ENVIRONMENT" ;;
	}
		

	dimension: platform {
		type: string
		sql: ${TABLE}."PLATFORM" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_coursesection_key, context_id, environment, platform]
	}
		 

}
		 