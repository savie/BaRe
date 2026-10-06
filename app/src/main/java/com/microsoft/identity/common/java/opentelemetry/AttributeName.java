package com.microsoft.identity.common.java.opentelemetry;

import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AttributeName {
    private static final /* synthetic */ AttributeName[] $VALUES;
    public static final AttributeName account_type;
    public static final AttributeName calling_package_name;
    public static final AttributeName correlation_id;
    public static final AttributeName tenant_id;

    /* JADX INFO: Fake field, exist only in values array */
    AttributeName EF1;

    static {
        AttributeName attributeName = new AttributeName("response_body_length", 0);
        AttributeName attributeName2 = new AttributeName("jwt_valid", 1);
        AttributeName attributeName3 = new AttributeName("jwt_alg", 2);
        AttributeName attributeName4 = new AttributeName("parent_span_name", 3);
        AttributeName attributeName5 = new AttributeName("crypto_controller", 4);
        AttributeName attributeName6 = new AttributeName("crypto_operation", 5);
        AttributeName attributeName7 = new AttributeName("crypto_exception_stack_trace", 6);
        AttributeName attributeName8 = new AttributeName("ccs_request_id", 7);
        AttributeName attributeName9 = new AttributeName("cert_based_auth_challenge_handler", 8);
        AttributeName attributeName10 = new AttributeName("cert_based_auth_existing_piv_provider_present", 9);
        AttributeName attributeName11 = new AttributeName("cert_based_auth_user_choice", 10);
        AttributeName attributeName12 = new AttributeName("cert_based_auth_public_key_algo_type", 11);
        AttributeName attributeName13 = new AttributeName("error_type", 12);
        AttributeName attributeName14 = new AttributeName("error_code", 13);
        AttributeName attributeName15 = new AttributeName("ipc_strategy", 14);
        AttributeName attributeName16 = new AttributeName("public_api_id", 15);
        AttributeName attributeName17 = new AttributeName("controller_name", 16);
        AttributeName attributeName18 = new AttributeName("application_name", 17);
        AttributeName attributeName19 = new AttributeName("correlation_id", 18);
        correlation_id = attributeName19;
        AttributeName attributeName20 = new AttributeName("correlation_id_v2", 19);
        AttributeName attributeName21 = new AttributeName("is_serviced_from_cache", 20);
        AttributeName attributeName22 = new AttributeName("error_message", 21);
        AttributeName attributeName23 = new AttributeName("is_device_id_claims_requested", 22);
        AttributeName attributeName24 = new AttributeName("response_content_type", 23);
        AttributeName attributeName25 = new AttributeName("http_status_code", 24);
        AttributeName attributeName26 = new AttributeName("num_concurrent_silent_requests", 25);
        AttributeName attributeName27 = new AttributeName("silent_requests_queue_size", 26);
        AttributeName attributeName28 = new AttributeName("silent_executor_pool_size", 27);
        AttributeName attributeName29 = new AttributeName("cancellation_outcome", 28);
        AttributeName attributeName30 = new AttributeName("elapsed_time_cache_save", 29);
        AttributeName attributeName31 = new AttributeName("elapsed_time_cache_load", 30);
        AttributeName attributeName32 = new AttributeName("elapsed_time_cache_load_aggregated_account_data", 31);
        AttributeName attributeName33 = new AttributeName("elapsed_time_cache_load_with_aggregated_account_data", 32);
        AttributeName attributeName34 = new AttributeName("elapsed_time_cache_save_and_load_aggregated_account_data", 33);
        AttributeName attributeName35 = new AttributeName("elapsed_time_cache_delete_access_tokens_with_intersecting_scopes", 34);
        AttributeName attributeName36 = new AttributeName("elapsed_time_cache_remove_credential", 35);
        AttributeName attributeName37 = new AttributeName("elapsed_time_cache_get_account", 36);
        AttributeName attributeName38 = new AttributeName("elapsed_time_cache_get_accounts_with_aggregated_account_data", 37);
        AttributeName attributeName39 = new AttributeName("elapsed_time_cache_get_account_by_local_account_id", 38);
        AttributeName attributeName40 = new AttributeName("elapsed_time_cache_get_account_with_aggregated_account_data_by_local_account_id", 39);
        AttributeName attributeName41 = new AttributeName("elapsed_time_cache_get_accounts", 40);
        AttributeName attributeName42 = new AttributeName("elapsed_time_cache_get_all_tenant_accounts_for_account_by_client_id", 41);
        AttributeName attributeName43 = new AttributeName("elapsed_time_cache_get_id_tokens_for_account_record", 42);
        AttributeName attributeName44 = new AttributeName("elapsed_time_cache_get_account_by_home_account_id", 43);
        AttributeName attributeName45 = new AttributeName("elapsed_time_cache_remove_account", 44);
        AttributeName attributeName46 = new AttributeName("elapsed_time_cache_clear_all", 45);
        AttributeName attributeName47 = new AttributeName("elapsed_time_cache_get_all_client_ids", 46);
        AttributeName attributeName48 = new AttributeName("elapsed_time_network_acquire_prt", 47);
        AttributeName attributeName49 = new AttributeName("elapsed_time_network_acquire_nonce", 48);
        AttributeName attributeName50 = new AttributeName("elapsed_time_network_acquire_at", 49);
        AttributeName attributeName51 = new AttributeName("broker_operation_name", 50);
        AttributeName attributeName52 = new AttributeName("fido_challenge_handler", 51);
        AttributeName attributeName53 = new AttributeName("fido_manager", 52);
        AttributeName attributeName54 = new AttributeName("ccs_request_sequence", 53);
        AttributeName attributeName55 = new AttributeName("backup_ipc_used", 54);
        AttributeName attributeName56 = new AttributeName("calling_package_name", 55);
        calling_package_name = attributeName56;
        AttributeName attributeName57 = new AttributeName("requested_cloud_name", 56);
        AttributeName attributeName58 = new AttributeName("home_cloud_name", 57);
        AttributeName attributeName59 = new AttributeName("stop_returning_rt_result", 58);
        AttributeName attributeName60 = new AttributeName("keystore_operation", 59);
        AttributeName attributeName61 = new AttributeName("keystore_exception_stack_trace", 60);
        AttributeName attributeName62 = new AttributeName("keystore_exception_message", 61);
        AttributeName attributeName63 = new AttributeName("keystore_numeric_error_code", 62);
        AttributeName attributeName64 = new AttributeName("is_sso_nonce_found_in_ests_request", 63);
        AttributeName attributeName65 = new AttributeName("is_new_refresh_token_cred_header_attached", 64);
        AttributeName attributeName66 = new AttributeName("elapsed_time_keypair_generation", 65);
        AttributeName attributeName67 = new AttributeName("key_pair_gen_successful_method", 66);
        AttributeName attributeName68 = new AttributeName("keypair_gen_exception", 67);
        AttributeName attributeName69 = new AttributeName("out_of_memory_exception_stacktrace", 68);
        AttributeName attributeName70 = new AttributeName("is_mam_flow", 69);
        AttributeName attributeName71 = new AttributeName("is_switch_browser_protocol", 70);
        AttributeName attributeName72 = new AttributeName("browser_package_name", 71);
        AttributeName attributeName73 = new AttributeName("is_custom_tabs_supported", 72);
        AttributeName attributeName74 = new AttributeName("is_switch_browser_request_handled", 73);
        AttributeName attributeName75 = new AttributeName("is_switch_browser_resume_handled", 74);
        AttributeName attributeName76 = new AttributeName("auth_tab_used", 75);
        AttributeName attributeName77 = new AttributeName("auth_tab_result_code", 76);
        AttributeName attributeName78 = new AttributeName("is_auth_tab_supported", 77);
        AttributeName attributeName79 = new AttributeName("auth_tab_fallback_to_custom_tabs", 78);
        AttributeName attributeName80 = new AttributeName("tenant_id", 79);
        tenant_id = attributeName80;
        AttributeName attributeName81 = new AttributeName("account_type", 80);
        account_type = attributeName81;
        $VALUES = new AttributeName[]{attributeName, attributeName2, attributeName3, attributeName4, attributeName5, attributeName6, attributeName7, attributeName8, attributeName9, attributeName10, attributeName11, attributeName12, attributeName13, attributeName14, attributeName15, attributeName16, attributeName17, attributeName18, attributeName19, attributeName20, attributeName21, attributeName22, attributeName23, attributeName24, attributeName25, attributeName26, attributeName27, attributeName28, attributeName29, attributeName30, attributeName31, attributeName32, attributeName33, attributeName34, attributeName35, attributeName36, attributeName37, attributeName38, attributeName39, attributeName40, attributeName41, attributeName42, attributeName43, attributeName44, attributeName45, attributeName46, attributeName47, attributeName48, attributeName49, attributeName50, attributeName51, attributeName52, attributeName53, attributeName54, attributeName55, attributeName56, attributeName57, attributeName58, attributeName59, attributeName60, attributeName61, attributeName62, attributeName63, attributeName64, attributeName65, attributeName66, attributeName67, attributeName68, attributeName69, attributeName70, attributeName71, attributeName72, attributeName73, attributeName74, attributeName75, attributeName76, attributeName77, attributeName78, attributeName79, attributeName80, attributeName81, new AttributeName("active_broker_package_name", 81), new AttributeName("current_broker_package_name", 82), new AttributeName("is_webcp_in_webview_enabled", 83), new AttributeName("web_view_ssl_primary_error_code", 84), new AttributeName("authux_js_action_name", 85), new AttributeName("authux_js_action_component", 86), new AttributeName("authux_js_operation", 87), new AttributeName("stored_number_match_entry", 88), new AttributeName("web_cp_flight_get_time", 89), new AttributeName("openid_issuer", 90), new AttributeName("openid_issuer_invalid_reason", 91), new AttributeName("openid_config_request_authority", 92), new AttributeName("is_redirect_to_playstore_launch_from_webcp", 93), new AttributeName("is_in_web_cp_flow", 94), new AttributeName("in_memory_cache_used_for_accounts_and_credentials", 95), new AttributeName("is_filter_then_clone_enabled", 96), new AttributeName("cache_key_in_storage_but_not_in_memory", 97), new AttributeName("elapsed_time_in_memory_cache_load", 98), new AttributeName("passkey_operation_type", 99), new AttributeName("passkey_dom_exception_name", 100), new AttributeName("passkey_origin", 101), new AttributeName("passkey_aaguid", 102), new AttributeName("elapsed_time_save_aggregated_account_data", 103), new AttributeName("elapsed_time_load_aggregated_account_data", 104), new AttributeName("is_account_aggregation_skipped", 105), new AttributeName("is_redirect_url_opened_in_browser", 106), new AttributeName("browser_sso_success_count", 107), new AttributeName("browser_sso_failure_count", 108), new AttributeName("drs_discovery_retry_number", 109), new AttributeName("client_tls_retry_number", 110), new AttributeName("key_pair_gen_description", 111), new AttributeName("key_pair_gen_algorithm", OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS), new AttributeName("key_pair_gen_encryption_paddings", 113), new AttributeName("key_pair_gen_failure_history", 114), new AttributeName("key_pair_gen_elapsed_time", 115), new AttributeName("key_pair_supported_paddings", 116), new AttributeName("available_transformation_list", 117), new AttributeName("elected_cipher_transformation", 118), new AttributeName("secret_key_transformation", 119), new AttributeName("secret_key_algorithm", 120), new AttributeName("secret_key_wrapping_serializer_id", 121), new AttributeName("secret_key_size", 122), new AttributeName("secret_key_serialization_duration", 123), new AttributeName("is_openid_vc_handler_found", 124), new AttributeName("content_provider_status", 125), new AttributeName("bound_service_status", 126), new AttributeName("legacy_account_manager_status", 127), new AttributeName("device_registration_protocol_name", 128), new AttributeName("target_blank_navigation_route", 129), new AttributeName("server_error", 130), new AttributeName("server_sub_error", 131), new AttributeName("server_cloud_instance", 132), new AttributeName("server_caller_data_boundary", 133)};
    }

    public static AttributeName valueOf(String str) {
        return (AttributeName) Enum.valueOf(AttributeName.class, str);
    }

    public static AttributeName[] values() {
        return (AttributeName[]) $VALUES.clone();
    }
}
