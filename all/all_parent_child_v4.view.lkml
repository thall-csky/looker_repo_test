
view: all_parent_child_v4 {
	sql_table_name: DATAVAULT.ALL_PARENT_CHILD_V4 ;;


	dimension: parent_product {
		type: string
		sql: ${TABLE}."PARENT_PRODUCT" ;;
	}

	dimension: child_product {
		type: string
		sql: ${TABLE}."CHILD_PRODUCT" ;;
	}


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [parent_product, child_product]
	}
		 

}
		 