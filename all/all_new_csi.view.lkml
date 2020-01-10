
view: all_new_csi {
	sql_table_name: DATAVAULT.ALL_NEW_CSI ;;


	dimension: hub_institution_key {
		type: string
		sql: ${TABLE}."HUB_INSTITUTION_KEY" ;;
	}
		

	dimension: hub_coursesection_key {
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY" ;;
	}
		

	dimension: link_coursesection_institution_key {
		type: string
		sql: ${TABLE}."LINK_COURSESECTION_INSTITUTION_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [hub_institution_key, hub_coursesection_key, link_coursesection_institution_key]
	}
		 

}
		 