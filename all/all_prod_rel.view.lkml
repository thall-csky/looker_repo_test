
view: all_prod_rel {
	sql_table_name: DATAVAULT.ALL_PROD_REL ;;


	dimension: child_product {
		type: number
		sql: ${TABLE}."CHILD_PRODUCT" ;;
	}

	dimension: parent_product {
		type: number
		sql: ${TABLE}."PARENT_PRODUCT" ;;
	}

	dimension: path_to_parent {
		type: string
		sql: ${TABLE}."PATH_TO_PARENT" ;;
	}

	dimension: start_product {
		type: number
		sql: ${TABLE}."START_PRODUCT" ;;
	}

	dimension: level {
		type: string
		sql: ${TABLE}."LEVEL" ;;
	}

	dimension: link_product_relationship_key {
		type: string
		sql: ${TABLE}."LINK_PRODUCT_RELATIONSHIP_KEY" ;;
	}


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [child_product, parent_product, path_to_parent, start_product, level, link_product_relationship_key]
	}
		 

}
		 