.class public abstract Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static sGlobalStateInitalized:Z = false


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static create(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/o;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;
    .locals 6

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const-class v0, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "AndroidPlatformComponentsFactory:initializeGlobalStates"

    .line 7
    .line 8
    sget-boolean v2, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->sGlobalStateInitalized:Z

    .line 9
    .line 10
    if-nez v2, :cond_3

    .line 11
    .line 12
    const-class v2, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;

    .line 13
    .line 14
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    const-string v3, "HttpCache:initialize"

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->initialize$1(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_3

    .line 30
    :cond_0
    :try_start_3
    const-string v4, "Http caching is not enabled because the cache dir is null"

    .line 31
    .line 32
    sget v5, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 33
    .line 34
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    .line 36
    .line 37
    :try_start_4
    monitor-exit v2

    .line 38
    :goto_0
    new-instance v2, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lcom/microsoft/identity/common/java/platform/Device;->setDeviceMetadata(Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 51
    .line 52
    invoke-interface {v2, v3}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/util/WorkProfileUtil;->checkIfIsInPersonalProfileButClouddpcWorkProfileAvailable(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Lcom/microsoft/identity/common/java/platform/Device;->setIsInPersonalProfileButClouddpcWorkProfileAvailable(Ljava/lang/Boolean;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_1
    :goto_1
    invoke-static {}, Lcom/microsoft/identity/common/logging/Logger;->setAndroidLogger()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->initialize$1(Ljava/io/File;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    const-string v2, "Http caching is not enabled because the cache dir is null"

    .line 87
    .line 88
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    const/4 v1, 0x1

    .line 92
    sput-boolean v1, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->sGlobalStateInitalized:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 97
    :cond_3
    :goto_4
    monitor-exit v0

    .line 98
    invoke-static {}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->builder()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v1, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->clockSkewManager(Lcom/microsoft/identity/common/components/AndroidClockSkewManager;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-instance v2, Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->broadcaster(Lcom/microsoft/identity/common/internal/platform/AndroidBroadcaster;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v2, Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;

    .line 121
    .line 122
    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->popManagerLoader(Lcom/microsoft/identity/common/components/AndroidPopManagerSupplier;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    new-instance v2, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 130
    .line 131
    new-instance v3, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;

    .line 132
    .line 133
    invoke-direct {v3, p0}, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v2, p0, v3}, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->storageSupplier(Lcom/microsoft/identity/common/components/AndroidStorageSupplier;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    new-instance v2, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;

    .line 144
    .line 145
    invoke-direct {v2, p0, p1}, Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->platformUtil(Lcom/microsoft/identity/common/internal/platform/AndroidPlatformUtil;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    new-instance v2, Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;

    .line 153
    .line 154
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->httpClientWrapper(Lcom/microsoft/identity/common/java/net/DefaultHttpClientWrapper;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 162
    .line 163
    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->browserSelector(Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;)V

    .line 167
    .line 168
    .line 169
    if-eqz p1, :cond_4

    .line 170
    .line 171
    new-instance v1, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->context(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->activity(Landroid/app/Activity;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->fragment(Landroidx/fragment/app/o;)V

    .line 187
    .line 188
    .line 189
    new-instance p2, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 190
    .line 191
    invoke-direct {p2, p0}, Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;-><init>(Landroid/content/Context;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->browserSelector(Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->build()Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->authorizationStrategyFactory(Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    new-instance p2, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    invoke-direct {p2, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;-><init>(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->stateGenerator(Lcom/microsoft/identity/common/internal/providers/oauth2/AndroidTaskStateGenerator;)V

    .line 215
    .line 216
    .line 217
    :cond_4
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents$PlatformComponentsBuilder;->build()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    :goto_5
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 223
    throw p0

    .line 224
    :cond_5
    const-string p0, "context is marked non-null but is null"

    .line 225
    .line 226
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const/4 p0, 0x0

    .line 230
    return-object p0
.end method

.method public static createFromActivity(Landroid/app/Activity;Landroidx/fragment/app/o;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0, p1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->create(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/o;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "activity is marked non-null but is null"

    .line 13
    .line 14
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static createFromContext(Landroid/content/Context;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-static {p0, v0, v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->create(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/o;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string p0, "context is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static createSpan(Ljava/lang/String;)Lr86;
    .locals 0

    .line 1
    invoke-static {}, Lqj7;->current()Lqj7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lqj7;->getSpanContext()Lrj7;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lqj7;->b(Lrj7;)Lr86;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public static varargs decode(Ljava/lang/String;[Lcom/microsoft/identity/common/java/base64/Base64Flags;)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/java/base64/Base64Util;->access$getBase64$cp()Lcom/microsoft/identity/common/base64/AndroidBase64;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    array-length v1, p1

    .line 18
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 23
    .line 24
    invoke-virtual {v0, p0, p1}, Lcom/microsoft/identity/common/base64/AndroidBase64;->decode([B[Lcom/microsoft/identity/common/java/base64/Base64Flags;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static varargs encodeToString([B[Lcom/microsoft/identity/common/java/base64/Base64Flags;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 10
    .line 11
    invoke-static {}, Lcom/microsoft/identity/common/java/base64/Base64Util;->access$getBase64$cp()Lcom/microsoft/identity/common/base64/AndroidBase64;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v1, p1

    .line 16
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 21
    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/microsoft/identity/common/base64/AndroidBase64;->encode([B[Lcom/microsoft/identity/common/java/base64/Base64Flags;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static encodeUrlSafeString([B)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/microsoft/identity/common/java/base64/Base64Flags;->NO_PADDING:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/java/base64/Base64Flags;->URL_SAFE:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 7
    .line 8
    sget-object v2, Lcom/microsoft/identity/common/java/base64/Base64Flags;->NO_WRAP:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 9
    .line 10
    filled-new-array {v2, v0, v1}, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->encodeToString([B[Lcom/microsoft/identity/common/java/base64/Base64Flags;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getLibraryName()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "x-client-SKU"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v0, "Product is not set."

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const-string v2, "LibraryInfoHelper:getLibraryName"

    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "NOT_SET"

    .line 30
    .line 31
    :cond_0
    return-object v0
.end method

.method public static getLibraryVersion()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/RequestContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "x-client-Ver"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v0, "Product version is not set."

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const-string v2, "LibraryInfoHelper:getLibraryVersion"

    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "1.5.9-default"

    .line 30
    .line 31
    :cond_0
    return-object v0
.end method

.method public static msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/microsoft/identity/client/exception/MsalException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/microsoft/identity/client/exception/MsalException;

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    move-object v0, p0

    .line 15
    check-cast v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 16
    .line 17
    new-instance v1, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v1, v2, v3, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    move-object v0, v1

    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_2
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    move-object v0, p0

    .line 38
    check-cast v0, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    .line 39
    .line 40
    new-instance v1, Lcom/microsoft/identity/client/exception/MsalArgumentException;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "illegal_argument_exception"

    .line 47
    .line 48
    invoke-direct {v1, v3, v2, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/UiRequiredException;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    move-object v0, p0

    .line 57
    check-cast v0, Lcom/microsoft/identity/common/java/exception/UiRequiredException;

    .line 58
    .line 59
    new-instance v1, Lcom/microsoft/identity/client/exception/MsalUiRequiredException;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-direct {v1, v2, v3, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getUsername()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getUsername()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setUsername(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;

    .line 95
    .line 96
    move-object v1, p0

    .line 97
    check-cast v1, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-direct {v0, v2, v3, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalUnsupportedBrokerException;

    .line 117
    .line 118
    move-object v2, p0

    .line 119
    check-cast v2, Lcom/microsoft/identity/common/java/exception/UnsupportedBrokerException;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-direct {v0, v3, v2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 134
    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    move-object v0, p0

    .line 138
    check-cast v0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 139
    .line 140
    new-instance v1, Lcom/microsoft/identity/client/exception/MsalServiceException;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-direct {v1, v2, v3, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_7
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    .line 155
    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalUserCancelException;

    .line 159
    .line 160
    invoke-direct {v0, v1, v1, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_8
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 165
    .line 166
    const-string v1, "unknown_error"

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getSubErrorCode()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setSubErrorCode(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-object v0
.end method

.method public static print(Lcom/microsoft/identity/common/crypto/IKeyGenSpec;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "KeyGenSpec(description=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/microsoft/identity/common/crypto/IKeyGenSpec;->getDescription()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "\', algorithm=\'"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Lcom/microsoft/identity/common/crypto/IKeyGenSpec;->getAlgorithm()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "\', encryptionPaddings=\'"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Lcom/microsoft/identity/common/crypto/IKeyGenSpec;->getEncryptionPaddings()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, "\')"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static storeNumberMatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->a:I

    .line 2
    .line 3
    const-string v0, "Adding entry in NumberMatch hashmap for session ID: "

    .line 4
    .line 5
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 10
    .line 11
    const-string v1, "NumberMatchHelper:storeNumberMatch"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "NumberMatchHelper"

    .line 21
    .line 22
    if-eqz p0, :cond_5

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->access$getGuidRegex$cp()Lai6;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, p0}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    invoke-static {}, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->access$getAlphaNum8Regex$cp()Lai6;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, p0}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    const-string p1, "Session ID is not a valid GUID or 8-character alphanumeric string. Value: "

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->access$getTwoDigitRegex$cp()Lai6;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, p1}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    const-string p0, "Number match is not a valid 2-digit numerical string. Value: "

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    invoke-static {}, Lcom/microsoft/identity/common/internal/numberMatch/NumberMatchHelper;->access$getNumberMatchMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    :goto_0
    const-string p0, "Number match is null or empty."

    .line 102
    .line 103
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    :goto_1
    const-string p0, "Session ID is null or empty."

    .line 108
    .line 109
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lt40;->a()Lt40;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lxu1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2, v0, p0}, Lxu1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-object v1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string v1, "OtelContextExtension:wrapRunnableWithCurrentTelemetryContext"

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public abstract getData()Lorg/json/JSONObject;
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "status"

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->getStatus()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string v1, "data"

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->getData()Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "type"

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->getType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
