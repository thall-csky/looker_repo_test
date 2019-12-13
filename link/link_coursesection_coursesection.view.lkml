
view: link_coursesection_coursesection {
	sql_table_name: DATAVAULT.LINK_COURSESECTION_COURSESECTION ;;


	dimension_group: _ldts {
		timeframes: [raw, time, date, week, month, quarter, year]
		type: time
		sql: ${TABLE}."_LDTS" ;;
	}
		

	dimension: _rsrc {
		type: string
		sql: ${TABLE}."_RSRC" ;;
	}
		

	dimension: link_coursesection_coursesection_key {
		primary_key: yes
		type: string
		sql: ${TABLE}."LINK_COURSESECTION_COURSESECTION_KEY" ;;
	}
		

	dimension: hub_coursesection_key_child {
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY_CHILD" ;;
	}
		

	dimension: hub_coursesection_key_master {
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY_MASTER" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [_ldts_date, _ldts_week, _ldts_month, _ldts_quarter, _ldts_year, _rsrc, hub_coursesection_key_child, hub_coursesection_key_master]
	}
		 

}
		 