
view: all_parent_child {
	sql_table_name: DATAVAULT.ALL_PARENT_CHILD ;;


	dimension: parent_product {
		type: number
		sql: ${TABLE}."PARENT_PRODUCT" ;;
	}

	dimension: child_product {
		type: number
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
		 