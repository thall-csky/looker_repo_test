
view: all_new_user_platforms {
	sql_table_name: DATAVAULT.ALL_NEW_USER_PLATFORMS ;;


	dimension: user_sso_guid {
		type: string
		sql: ${TABLE}."USER_SSO_GUID" ;;
	}
		

	dimension: u_platform {
		type: string
		sql: ${TABLE}."U_PLATFORM" ;;
	}
		

	dimension: u_environment {
		type: string
		sql: ${TABLE}."U_ENVIRONMENT" ;;
	}
		

	dimension: p_platform {
		type: string
		sql: ${TABLE}."P_PLATFORM" ;;
	}
		

	dimension: p_environment {
		type: string
		sql: ${TABLE}."P_ENVIRONMENT" ;;
	}
		

	dimension: user_iam_provider {
		type: string
		sql: ${TABLE}."USER_IAM_PROVIDER" ;;
	}
		

	dimension: hub_user_key {
		type: string
		sql: ${TABLE}."HUB_USER_KEY" ;;
	}
		

	dimension: hub_platform_key {
		type: string
		sql: ${TABLE}."HUB_PLATFORM_KEY" ;;
	}
		

	dimension: link_user_platform_key {
		type: string
		sql: ${TABLE}."LINK_USER_PLATFORM_KEY" ;;
	}
		


	measure: count {
		type: count
		
		drill_fields: [all_dims_but_primary*]
	}
		


	set: all_dims_but_primary {
		fields: [user_sso_guid, u_platform, u_environment, p_platform, p_environment, user_iam_provider, hub_user_key, hub_platform_key, link_user_platform_key]
	}
		 

}
		 