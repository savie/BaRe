package com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.common.java.authorities.Environment;
import com.microsoft.identity.common.java.cache.HttpCache;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.net.HttpClient$HttpMethod;
import com.microsoft.identity.common.java.net.HttpResponse;
import com.microsoft.identity.common.java.net.UrlConnectionHttpClient;
import com.microsoft.identity.common.java.util.CommonURIBuilder;
import com.microsoft.identity.common.java.util.ObjectMapper;
import defpackage.f6;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AzureActiveDirectory {
    public static final /* synthetic */ int a = 0;
    private static final ConcurrentHashMap sAadClouds = new ConcurrentHashMap();
    private static final ConcurrentHashMap.KeySetView sDiscoverySucceededHosts = ConcurrentHashMap.newKeySet();
    private static Environment sEnvironment = Environment.Production;
    private static final UrlConnectionHttpClient httpClient = UrlConnectionHttpClient.getDefaultInstance();
    private static final Set<String> KNOWN_CLOUD_DISCOVERY_HOSTS = Collections.unmodifiableSet(new HashSet(Arrays.asList("login.microsoftonline.com", "login.windows-ppe.net", "login.partner.microsoftonline.cn", "login.microsoftonline.us", "login.sovcloud-identity.fr", "login.sovcloud-identity.de", "login.sovcloud-identity.sg")));

    static {
        preSeedSovereignClouds();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static synchronized void ensureCloudDiscoveryForAuthority(URL url) throws ClientException {
        try {
            if (url == null) {
                synchronized (AzureActiveDirectory.class) {
                    if (!sAadClouds.containsKey(getHostFromUrl(getDefaultCloudUrl()))) {
                        synchronized (AzureActiveDirectory.class) {
                            performCloudDiscoveryForCloudUrl(getDefaultCloudUrl());
                        }
                    }
                }
                return;
            }
            String host = url.getHost();
            if (host == null) {
                return;
            }
            Locale locale = Locale.US;
            String lowerCase = host.toLowerCase(locale);
            if (sAadClouds.containsKey(lowerCase)) {
                return;
            }
            if (!CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_SOVEREIGN_CLOUD_INSTANCE_DISCOVERY)) {
                synchronized (AzureActiveDirectory.class) {
                    performCloudDiscoveryForCloudUrl(getDefaultCloudUrl());
                }
            } else {
                if (lowerCase == null) {
                    throw new NullPointerException("host is marked non-null but is null");
                }
                if (KNOWN_CLOUD_DISCOVERY_HOSTS.contains(lowerCase.toLowerCase(locale))) {
                    performCloudDiscoveryForCloudUrl(url.getProtocol() + "://" + host);
                } else {
                    synchronized (AzureActiveDirectory.class) {
                        performCloudDiscoveryForCloudUrl(getDefaultCloudUrl());
                    }
                }
            }
            return;
        } catch (Throwable th) {
            throw th;
        }
        throw th;
    }

    public static AzureActiveDirectoryCloud getAzureActiveDirectoryCloud(URL url) {
        return (AzureActiveDirectoryCloud) sAadClouds.get(url.getHost().toLowerCase(Locale.US));
    }

    public static AzureActiveDirectoryCloud getAzureActiveDirectoryCloudFromHostName(String str) {
        if (str != null) {
            return (AzureActiveDirectoryCloud) sAadClouds.get(str.toLowerCase(Locale.US));
        }
        f6.n("preferredCacheHostName is marked non-null but is null");
        return null;
    }

    public static synchronized String getDefaultCloudUrl() {
        Environment environment = sEnvironment;
        if (environment == Environment.PreProduction) {
            return "https://login.windows-ppe.net";
        }
        return environment == Environment.OneBox ? "https://zurich.test.dnsdemo1.test:8478" : "https://login.microsoftonline.com";
    }

    public static synchronized Environment getEnvironment() {
        return sEnvironment;
    }

    private static String getHostFromUrl(String str) throws ClientException {
        try {
            return new URL(str).getHost().toLowerCase(Locale.US);
        } catch (MalformedURLException e) {
            throw new ClientException("malformed_url", e.getMessage(), e);
        }
    }

    public static boolean hasCloudHost(URL url) {
        return sAadClouds.containsKey(url.getHost().toLowerCase(Locale.US));
    }

    public static synchronized boolean isPublicAzureActiveDirectoryCloud(URL url) throws ClientException {
        try {
        } catch (MalformedURLException e) {
            throw new ClientException("malformed_url", e.getMessage(), e);
        }
        return Objects.equals(getAzureActiveDirectoryCloud(url), getAzureActiveDirectoryCloud(new URL(getDefaultCloudUrl())));
    }

    public static boolean isValidCloudHost(URL url) {
        AzureActiveDirectoryCloud azureActiveDirectoryCloud = getAzureActiveDirectoryCloud(url);
        return azureActiveDirectoryCloud != null && azureActiveDirectoryCloud.isValidated();
    }

    public static synchronized void performCloudDiscoveryForCloudUrl(String str) throws ClientException {
        String hostFromUrl = getHostFromUrl(str);
        if (sDiscoverySucceededHosts.contains(hostFromUrl)) {
            Logger.verbose("AzureActiveDirectory:performCloudDiscoveryForCloudUrl", "Discovery already succeeded for " + hostFromUrl + ", skipping.");
            return;
        }
        try {
            CommonURIBuilder commonURIBuilder = new CommonURIBuilder(str.concat("/common/discovery/instance"));
            commonURIBuilder.c("api-version", "1.1");
            commonURIBuilder.c("authorization_endpoint", str.concat("/common/oauth2/v2.0/authorize"));
            URI uriBuild = commonURIBuilder.build();
            UrlConnectionHttpClient urlConnectionHttpClient = httpClient;
            String string = uriBuild.toString();
            if (string == null) {
                throw new NullPointerException("urlString is marked non-null but is null");
            }
            try {
                URL url = new URL(string);
                HashMap map = new HashMap();
                urlConnectionHttpClient.getClass();
                HttpResponse httpResponseMethod = urlConnectionHttpClient.method(HttpClient$HttpMethod.GET, url, map, null);
                if (httpResponseMethod.getStatusCode() >= 400) {
                    Logger.warn("AzureActiveDirectory:performCloudDiscoveryForCloudUrl", "Error getting cloud information from ".concat(str));
                } else {
                    HttpCache.flush();
                    AzureActiveDirectoryInstanceResponse azureActiveDirectoryInstanceResponse = (AzureActiveDirectoryInstanceResponse) ObjectMapper.GSON.c(httpResponseMethod.getBody(), AzureActiveDirectoryInstanceResponse.class);
                    Logger.verbose("AzureActiveDirectory:performCloudDiscoveryForCloudUrl", "Discovered [" + azureActiveDirectoryInstanceResponse.getClouds().size() + "] clouds.");
                    for (AzureActiveDirectoryCloud azureActiveDirectoryCloud : azureActiveDirectoryInstanceResponse.getClouds()) {
                        azureActiveDirectoryCloud.setIsValidated();
                        Iterator<String> it = azureActiveDirectoryCloud.getHostAliases().iterator();
                        while (it.hasNext()) {
                            sAadClouds.put(it.next().toLowerCase(Locale.US), azureActiveDirectoryCloud);
                        }
                    }
                    sDiscoverySucceededHosts.add(hostFromUrl);
                }
            } catch (MalformedURLException e) {
                throw new ClientException("malformed_url", e.getMessage(), e);
            }
        } catch (URISyntaxException e2) {
            throw new ClientException("malformed_url", e2.getMessage(), e2);
        }
    }

    private static void preSeedSovereignClouds() {
        AzureActiveDirectoryCloud[] azureActiveDirectoryCloudArr = {AzureActiveDirectoryCloud.BLEU, AzureActiveDirectoryCloud.DELOS, AzureActiveDirectoryCloud.GOVSG};
        for (int i = 0; i < 3; i++) {
            AzureActiveDirectoryCloud azureActiveDirectoryCloud = azureActiveDirectoryCloudArr[i];
            sAadClouds.put(azureActiveDirectoryCloud.getPreferredNetworkHostName().toLowerCase(Locale.US), azureActiveDirectoryCloud);
        }
    }

    public static synchronized void setEnvironment(Environment environment) {
        try {
            if (environment == null) {
                throw new NullPointerException("environment is marked non-null but is null");
            }
            if (environment != sEnvironment) {
                sEnvironment = environment;
                sAadClouds.clear();
                sDiscoverySucceededHosts.clear();
                preSeedSovereignClouds();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
