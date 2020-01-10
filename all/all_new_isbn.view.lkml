
view: all_new_isbn {
	sql_table_name: DATAVAULT.ALL_NEW_ISBN ;;


	dimension: isbn13 {
		type: string
		sql: ${TABLE}."ISBN13" ;;
	}
		

	dimension: hub_isbn_key {
		type: string
		sql: ${TABLE}."HUB_ISBN_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [isbn13, hub_isbn_key]
	}
		 

}
		 