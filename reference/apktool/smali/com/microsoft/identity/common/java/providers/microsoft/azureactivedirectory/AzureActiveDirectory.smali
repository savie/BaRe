.class public abstract Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final KNOWN_CLOUD_DISCOVERY_HOSTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic a:I

.field private static final httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

.field private static final sAadClouds:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final sDiscoverySucceededHosts:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field private static sEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sAadClouds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sDiscoverySucceededHosts:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 13
    .line 14
    sget-object v0, Lcom/microsoft/identity/common/java/authorities/Environment;->Production:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 15
    .line 16
    sput-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 17
    .line 18
    invoke-static {}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getDefaultInstance()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 23
    .line 24
    new-instance v0, Ljava/util/HashSet;

    .line 25
    .line 26
    const-string v6, "login.sovcloud-identity.de"

    .line 27
    .line 28
    const-string v7, "login.sovcloud-identity.sg"

    .line 29
    .line 30
    const-string v1, "login.microsoftonline.com"

    .line 31
    .line 32
    const-string v2, "login.windows-ppe.net"

    .line 33
    .line 34
    const-string v3, "login.partner.microsoftonline.cn"

    .line 35
    .line 36
    const-string v4, "login.microsoftonline.us"

    .line 37
    .line 38
    const-string v5, "login.sovcloud-identity.fr"

    .line 39
    .line 40
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->KNOWN_CLOUD_DISCOVERY_HOSTS:Ljava/util/Set;

    .line 56
    .line 57
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->preSeedSovereignClouds()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static declared-synchronized ensureCloudDiscoveryForAuthority(Ljava/net/URL;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_1

    .line 5
    .line 6
    :try_start_0
    const-class p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;

    .line 7
    .line 8
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getDefaultCloudUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getHostFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sAadClouds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-class v1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;

    .line 26
    .line 27
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getDefaultCloudUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->performCloudDiscoveryForCloudUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v2

    .line 38
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 40
    :cond_0
    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_1
    move-exception v1

    .line 44
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 45
    :try_start_8
    throw v1

    .line 46
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :cond_2
    :try_start_9
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    sget-object v4, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sAadClouds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :cond_3
    :try_start_a
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    sget-object v5, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_SOVEREIGN_CLOUD_INSTANCE_DISCOVERY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 75
    .line 76
    invoke-interface {v4, v5}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_5

    .line 81
    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    sget-object v4, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->KNOWN_CLOUD_DISCOVERY_HOSTS:Ljava/util/Set;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p0, "://"

    .line 109
    .line 110
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->performCloudDiscoveryForCloudUrl(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_2
    move-exception p0

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 127
    .line 128
    const-string v1, "host is marked non-null but is null"

    .line 129
    .line 130
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_5
    const-class p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;

    .line 135
    .line 136
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 137
    :try_start_b
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getDefaultCloudUrl()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->performCloudDiscoveryForCloudUrl(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 142
    .line 143
    .line 144
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 145
    :goto_1
    monitor-exit v0

    .line 146
    return-void

    .line 147
    :catchall_3
    move-exception v1

    .line 148
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 149
    :try_start_e
    throw v1

    .line 150
    :goto_2
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 151
    throw p0
.end method

.method public static getAzureActiveDirectoryCloud(Ljava/net/URL;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sAadClouds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 18
    .line 19
    return-object p0
.end method

.method public static getAzureActiveDirectoryCloudFromHostName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sAadClouds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "preferredCacheHostName is marked non-null but is null"

    .line 19
    .line 20
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static declared-synchronized getDefaultCloudUrl()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 5
    .line 6
    sget-object v2, Lcom/microsoft/identity/common/java/authorities/Environment;->PreProduction:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const-string v1, "https://login.windows-ppe.net"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_1
    sget-object v2, Lcom/microsoft/identity/common/java/authorities/Environment;->OneBox:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    const-string v1, "https://zurich.test.dnsdemo1.test:8478"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :cond_1
    :try_start_2
    const-string v1, "https://login.microsoftonline.com"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object v1

    .line 28
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    throw v1
.end method

.method public static declared-synchronized getEnvironment()Lcom/microsoft/identity/common/java/authorities/Environment;
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method private static getHostFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 19
    .line 20
    const-string v1, "malformed_url"

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public static hasCloudHost(Ljava/net/URL;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sAadClouds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static declared-synchronized isPublicAzureActiveDirectoryCloud(Ljava/net/URL;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getAzureActiveDirectoryCloud(Ljava/net/URL;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v1, Ljava/net/URL;

    .line 9
    .line 10
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getDefaultCloudUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getAzureActiveDirectoryCloud(Ljava/net/URL;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    :try_start_1
    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 31
    .line 32
    const-string v2, "malformed_url"

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v1, v2, v3, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0
.end method

.method public static isValidCloudHost(Ljava/net/URL;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getAzureActiveDirectoryCloud(Ljava/net/URL;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->isValidated()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static declared-synchronized performCloudDiscoveryForCloudUrl(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "Discovered ["

    .line 2
    .line 3
    const-string v1, "Error getting cloud information from "

    .line 4
    .line 5
    const-string v2, "/common/oauth2/v2.0/authorize"

    .line 6
    .line 7
    const-string v3, "/common/discovery/instance"

    .line 8
    .line 9
    const-string v4, "Discovery already succeeded for "

    .line 10
    .line 11
    const-class v5, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getHostFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    sget-object v7, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sDiscoverySucceededHosts:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 19
    .line 20
    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    const-string p0, "AzureActiveDirectory:performCloudDiscoveryForCloudUrl"

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", skipping."

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit v5

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_0
    :try_start_1
    new-instance v4, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;

    .line 54
    .line 55
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-direct {v4, v3}, Lcom/microsoft/identity/common/java/util/CommonURIBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v3, "api-version"

    .line 63
    .line 64
    const-string v7, "1.1"

    .line 65
    .line 66
    invoke-virtual {v4, v3, v7}, Led8;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v3, "authorization_endpoint"

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v4, v3, v2}, Led8;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Led8;->build()Ljava/net/URI;

    .line 79
    .line 80
    .line 81
    move-result-object v2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    sget-object v3, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->httpClient:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    :try_start_3
    new-instance v4, Ljava/net/URL;

    .line 91
    .line 92
    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .line 94
    .line 95
    :try_start_4
    new-instance v2, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    sget-object v7, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->GET:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    invoke-virtual {v3, v7, v4, v2, v8}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->method(Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;Ljava/net/URL;Ljava/util/AbstractMap;[B)Lcom/microsoft/identity/common/java/net/HttpResponse;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getStatusCode()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    const/16 v4, 0x190

    .line 115
    .line 116
    if-lt v3, v4, :cond_1

    .line 117
    .line 118
    const-string v0, "AzureActiveDirectory:performCloudDiscoveryForCloudUrl"

    .line 119
    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    invoke-static {}, Lcom/microsoft/identity/common/java/cache/HttpCache;->flush()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getBody()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const-class v1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;

    .line 136
    .line 137
    sget-object v2, Lcom/microsoft/identity/common/java/util/ObjectMapper;->GSON:Lcom/google/gson/a;

    .line 138
    .line 139
    invoke-virtual {v2, p0, v1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    check-cast p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;

    .line 144
    .line 145
    const-string v1, "AzureActiveDirectory:performCloudDiscoveryForCloudUrl"

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->getClouds()Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, "] clouds."

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryInstanceResponse;->getClouds()Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_3

    .line 188
    .line 189
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->setIsValidated()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->getHostAliases()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_2

    .line 211
    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Ljava/lang/String;

    .line 217
    .line 218
    sget-object v3, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sAadClouds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 219
    .line 220
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 221
    .line 222
    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v3, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_3
    sget-object p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sDiscoverySucceededHosts:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 231
    .line 232
    invoke-virtual {p0, v6}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    .line 234
    .line 235
    :goto_1
    monitor-exit v5

    .line 236
    return-void

    .line 237
    :catch_0
    move-exception p0

    .line 238
    :try_start_5
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 239
    .line 240
    const-string v1, "malformed_url"

    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 251
    .line 252
    const-string v0, "urlString is marked non-null but is null"

    .line 253
    .line 254
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p0

    .line 258
    :catch_1
    move-exception p0

    .line 259
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 260
    .line 261
    const-string v1, "malformed_url"

    .line 262
    .line 263
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    throw v0

    .line 271
    :goto_2
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 272
    throw p0
.end method

.method private static preSeedSovereignClouds()V
    .locals 5

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->BLEU:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 2
    .line 3
    sget-object v1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->DELOS:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 4
    .line 5
    sget-object v2, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->GOVSG:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    const/4 v2, 0x3

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    aget-object v2, v0, v1

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->getPreferredNetworkHostName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sAadClouds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public static declared-synchronized setEnvironment(Lcom/microsoft/identity/common/java/authorities/Environment;)V
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 7
    .line 8
    if-eq p0, v1, :cond_0

    .line 9
    .line 10
    sput-object p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    .line 11
    .line 12
    sget-object p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sAadClouds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->sDiscoverySucceededHosts:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->clear()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->preSeedSovereignClouds()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 31
    .line 32
    const-string v1, "environment is marked non-null but is null"

    .line 33
    .line 34
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method
