package com.microsoft.identity.common.java.providers.oauth2;

import com.google.gson.a;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.net.HttpClient$HttpMethod;
import com.microsoft.identity.common.java.net.HttpResponse;
import com.microsoft.identity.common.java.net.UrlConnectionHttpClient;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectoryCloud;
import com.microsoft.identity.common.java.util.StringUtil;
import defpackage.eq3;
import defpackage.f6;
import defpackage.ge;
import defpackage.r40;
import defpackage.s40;
import defpackage.zh8;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class OpenIdProviderConfigurationClient {
    private static final a GSON;
    private static final ge sOpenIdProviderConfigurationIssuerValidationFailedCount;
    private static final HashMap sConfigCache = new HashMap();
    private static final UrlConnectionHttpClient httpClient = UrlConnectionHttpClient.getDefaultInstance();

    static {
        PropertyBagUtil.createLongCounter("openid_provider_configuration_issuer_validation_failed_count", "Track failure in validating OpenID Provider configuration issuer");
        sOpenIdProviderConfigurationIssuerValidationFailedCount = zh8.d;
        GSON = new a();
    }

    private static void cacheConfiguration(URI uri, OpenIdProviderConfiguration openIdProviderConfiguration) {
        if (openIdProviderConfiguration != null) {
            sConfigCache.put(uri, openIdProviderConfiguration);
        } else {
            f6.n("parsedConfig is marked non-null but is null");
        }
    }

    private static String getConfigRequestBaseUrl(String str) {
        if (str == null) {
            f6.n("issuerUrl is marked non-null but is null");
            return null;
        }
        String strTrim = str.trim();
        if (str.endsWith("/")) {
            strTrim = str.substring(0, strTrim.length() - 1);
        }
        return eq3.j(strTrim, "/v2.0");
    }

    private synchronized OpenIdProviderConfiguration loadOpenIdProviderConfigurationInternal(String str, String str2) throws ServiceException {
        String strConcat;
        try {
            if (str == null) {
                throw new NullPointerException("tenantedAuthorityString is marked non-null but is null");
            }
            try {
                String configRequestBaseUrl = getConfigRequestBaseUrl(str);
                if (str2 != null) {
                    strConcat = configRequestBaseUrl + "/.well-known/openid-configuration" + str2;
                } else {
                    strConcat = configRequestBaseUrl.concat("/.well-known/openid-configuration");
                }
                URI uri = new URI(strConcat);
                OpenIdProviderConfiguration openIdProviderConfiguration = (OpenIdProviderConfiguration) sConfigCache.get(uri);
                if (openIdProviderConfiguration != null) {
                    Logger.info("OpenIdProviderConfigurationClient:loadOpenIdProviderConfigurationInternal", "Using cached metadata result.");
                    return openIdProviderConfiguration;
                }
                Logger.verbose("OpenIdProviderConfigurationClient:loadOpenIdProviderConfigurationInternal", "Config URL is valid.");
                Logger.verbosePII("OpenIdProviderConfigurationClient:loadOpenIdProviderConfigurationInternal", "Using request URL: " + uri);
                UrlConnectionHttpClient urlConnectionHttpClient = httpClient;
                URL url = uri.toURL();
                HashMap map = new HashMap();
                urlConnectionHttpClient.getClass();
                if (url == null) {
                    throw new NullPointerException("requestUrl is marked non-null but is null");
                }
                HttpResponse httpResponseMethod = urlConnectionHttpClient.method(HttpClient$HttpMethod.GET, url, map, null);
                int statusCode = httpResponseMethod.getStatusCode();
                if (200 != statusCode || StringUtil.isNullOrEmpty(httpResponseMethod.getBody())) {
                    throw new ServiceException((Exception) null, "failed_to_load_openid_configuration", "OpenId Provider Configuration metadata failed to load with status: " + statusCode);
                }
                OpenIdProviderConfiguration metadata = parseMetadata(httpResponseMethod.getBody());
                if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_OPENID_ISSUER_VALIDATION_REPORTING) && validateIssuer(metadata, configRequestBaseUrl) != null) {
                    sOpenIdProviderConfigurationIssuerValidationFailedCount.getClass();
                }
                cacheConfiguration(uri, metadata);
                return metadata;
            } catch (ClientException e) {
                e = e;
                throw new ServiceException(e, "failed_to_load_openid_configuration", "IOException while requesting metadata");
            } catch (MalformedURLException e2) {
                e = e2;
                throw new ServiceException(e, "failed_to_load_openid_configuration", "IOException while requesting metadata");
            } catch (URISyntaxException e3) {
                e = e3;
                throw new ServiceException(e, "failed_to_load_openid_configuration", "IOException while requesting metadata");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private static OpenIdProviderConfiguration parseMetadata(String str) {
        if (str != null) {
            return (OpenIdProviderConfiguration) GSON.c(str, OpenIdProviderConfiguration.class);
        }
        f6.n("body is marked non-null but is null");
        return null;
    }

    public static r40 validateIssuer(OpenIdProviderConfiguration openIdProviderConfiguration, String str) {
        if (openIdProviderConfiguration == null) {
            f6.n("config is marked non-null but is null");
            return null;
        }
        s40 s40Var = new s40(0);
        if (StringUtil.isNullOrEmpty(openIdProviderConfiguration.getIssuer())) {
            Logger.warn("OpenIdProviderConfigurationClient:validateIssuer", "Issuer is missing in the metadata.");
            s40Var.c("openid_issuer_invalid_reason", "issuer_missing");
            return s40Var.a();
        }
        String issuer = openIdProviderConfiguration.getIssuer();
        if (!str.equals(issuer)) {
            s40Var.c("openid_config_request_authority", str);
            s40Var.c("openid_issuer", issuer);
            try {
                URL url = new URL(issuer);
                try {
                    URL url2 = new URL(str);
                    AzureActiveDirectory.ensureCloudDiscoveryForAuthority(url2);
                    AzureActiveDirectoryCloud azureActiveDirectoryCloud = AzureActiveDirectory.getAzureActiveDirectoryCloud(url2);
                    if (azureActiveDirectoryCloud != null && azureActiveDirectoryCloud.isValidated()) {
                        AzureActiveDirectoryCloud azureActiveDirectoryCloud2 = AzureActiveDirectory.getAzureActiveDirectoryCloud(url);
                        if (azureActiveDirectoryCloud2 == null || !azureActiveDirectoryCloud2.isValidated() || (!azureActiveDirectoryCloud.equals(azureActiveDirectoryCloud2) && !AzureActiveDirectory.isPublicAzureActiveDirectoryCloud(url2))) {
                            s40Var.c("openid_issuer_invalid_reason", "issuer_aad_host_mismatch");
                            return s40Var.a();
                        }
                    }
                } catch (ClientException e) {
                    Logger.error("OpenIdProviderConfigurationClient:validateIssuer", "Failed to complete AAD cloud discovery.", e);
                } catch (MalformedURLException e2) {
                    Logger.error("OpenIdProviderConfigurationClient:validateIssuer", "Request URL is malformed.", e2);
                }
                s40Var.c("openid_issuer_invalid_reason", "issuer_validation_skipped");
                return s40Var.a();
            } catch (MalformedURLException e3) {
                Logger.warn("OpenIdProviderConfigurationClient:validateIssuer", "Issuer URL is malformed. " + e3.getMessage());
                s40Var.c("openid_issuer_invalid_reason", "issuer_malformed");
                return s40Var.a();
            }
        }
        return null;
    }

    public final synchronized OpenIdProviderConfiguration loadOpenIdProviderConfigurationFromAuthority(String str) throws ServiceException {
        try {
            if (str == null) {
                throw new NullPointerException("authorityUrl is marked non-null but is null");
            }
        } catch (Throwable th) {
            throw th;
        }
        return loadOpenIdProviderConfigurationInternal(str, null);
    }

    public final synchronized OpenIdProviderConfiguration loadOpenIdProviderConfigurationFromAuthorityWithExtraParams(String str, String str2) throws ServiceException {
        try {
            if (str == null) {
                throw new NullPointerException("authorityUrl is marked non-null but is null");
            }
        } catch (Throwable th) {
            throw th;
        }
        return loadOpenIdProviderConfigurationInternal(str, str2);
    }
}
