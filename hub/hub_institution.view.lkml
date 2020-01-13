
view: hub_institution {
	sql_table_name: DATAVAULT.HUB_INSTITUTION ;;


	dimension: hub_institution_key {
		primary_key: yes
		type: string
		sql: ${TABLE}."HUB_INSTITUTION_KEY" ;;
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

	dimension: institution_id {
		type: string
		sql: ${TABLE}."INSTITUTION_ID" ;;
	}


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, institution_id]
	}
		 

}
		 