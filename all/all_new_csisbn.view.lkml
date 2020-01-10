
view: all_new_csisbn {
	sql_table_name: DATAVAULT.ALL_NEW_CSISBN ;;


	dimension: hub_isbn_key {
		type: string
		sql: ${TABLE}."HUB_ISBN_KEY" ;;
	}
		

	dimension: hub_coursesection_key {
		type: string
		sql: ${TABLE}."HUB_COURSESECTION_KEY" ;;
	}
		

	dimension: link_coursesection_isbn_key {
		type: string
		sql: ${TABLE}."LINK_COURSESECTION_ISBN_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [hub_isbn_key, hub_coursesection_key, link_coursesection_isbn_key]
	}
		 

}
		 