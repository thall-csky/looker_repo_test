
view: all_new_cscs {
	sql_table_name: DATAVAULT.ALL_NEW_CSCS ;;


	dimension: hub_coursesection_key_child {
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY_CHILD" ;;
	}
		

	dimension: hub_coursesection_key_master {
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY_MASTER" ;;
	}
		

	dimension: link_coursesection_coursesection_key {
		type: string
		sql: ${TABLE}."LINK_COURSESECTION_COURSESECTION_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [hub_coursesection_key_child, hub_coursesection_key_master, link_coursesection_coursesection_key]
	}
		 

}
		 