.class public final Lcom/microsoft/identity/common/internal/cache/HelloCache;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

.field private final targetAppPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/HelloCache;->context:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/cache/HelloCache;->targetAppPackageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getStorageSupplier()Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "com.microsoft.common.ipc.hello.cache"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;->getUnencryptedNameValueStore(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/HelloCache;->fileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 28
    .line 29
    return-void
.end method

.method private final getNegotiatedProtocolVersionCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "msal.to.broker["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x2c

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, "]:"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/cache/HelloCache;->targetAppPackageName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 p2, 0x5b

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/HelloCache;->context:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 p2, 0x1c

    .line 48
    .line 49
    if-lt p1, p2, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 61
    .line 62
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/16 p0, 0x5d

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method private final saveNegotiatedValue(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "HelloCache"

    .line 2
    .line 3
    const-string v1, ":saveNegotiatedProtocolVersion"

    .line 4
    .line 5
    invoke-static {v0, p4, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/HelloCache;->getNegotiatedProtocolVersionCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/HelloCache;->fileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->serialize$common_distRelease()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p0, p2, p1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 25
    .line 26
    const-string p1, "Failed to retrieve key"

    .line 27
    .line 28
    invoke-static {p4, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final getHelloCacheResult(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "HelloCache:tryGetNegotiatedProtocolVersion"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/HelloCache;->getNegotiatedProtocolVersionCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/HelloCache;->fileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz p2, :cond_5

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    const-string v2, ","

    .line 30
    .line 31
    filled-new-array {v2}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x6

    .line 36
    invoke-static {p2, v2, v3}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x3

    .line 45
    const-string v5, "HelloCacheResult:deserialize"

    .line 46
    .line 47
    if-eq v3, v4, :cond_1

    .line 48
    .line 49
    const-string v2, "Legacy or Invalid cache entry. "

    .line 50
    .line 51
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 56
    .line 57
    invoke-static {v5, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    move-object v6, v1

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    const/4 v3, 0x2

    .line 63
    :try_start_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    const/4 v6, 0x0

    .line 74
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const-string v7, "E"

    .line 79
    .line 80
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    const/4 v7, 0x1

    .line 85
    if-eqz v6, :cond_2

    .line 86
    .line 87
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/String;

    .line 92
    .line 93
    new-instance v6, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;

    .line 94
    .line 95
    invoke-direct {v6, v1, v2, v3, v4}, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catch_0
    move-exception v2

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/String;

    .line 106
    .line 107
    new-instance v6, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;

    .line 108
    .line 109
    invoke-direct {v6, v2, v1, v3, v4}, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :goto_1
    const-string v3, "Invalid cache entry. "

    .line 114
    .line 115
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 120
    .line 121
    invoke-static {v5, p2, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :goto_2
    if-nez v6, :cond_3

    .line 126
    .line 127
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 128
    .line 129
    const-string p2, "Legacy or invalid cache value."

    .line 130
    .line 131
    invoke-static {v0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->remove(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    invoke-virtual {v6}, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->getTimeStamp$common_distRelease()J

    .line 143
    .line 144
    .line 145
    move-result-wide v4

    .line 146
    sub-long/2addr v2, v4

    .line 147
    const-wide/32 v4, 0xdbba00

    .line 148
    .line 149
    .line 150
    cmp-long p2, v2, v4

    .line 151
    .line 152
    if-lez p2, :cond_4

    .line 153
    .line 154
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 155
    .line 156
    const-string p2, "Cache entry is expired."

    .line 157
    .line 158
    invoke-static {v0, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->remove(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_4
    return-object v6

    .line 166
    :cond_5
    :goto_3
    return-object v1

    .line 167
    :catch_1
    move-exception p0

    .line 168
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 169
    .line 170
    const-string p1, "Failed to retrieve key"

    .line 171
    .line 172
    invoke-static {v0, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    return-object v1
.end method

.method public final saveHandshakeError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    new-instance v2, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "handshake_error"

    .line 12
    .line 13
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 14
    .line 15
    .line 16
    const-string v0, "HelloCache:saveHandShakeError"

    .line 17
    .line 18
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/microsoft/identity/common/internal/cache/HelloCache;->saveNegotiatedValue(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final saveNegotiatedProtocolVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    new-instance v2, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, p3, v3, v0, v1}, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    const-string p3, "HelloCache:saveNegotiatedProtocolVersion"

    .line 18
    .line 19
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/microsoft/identity/common/internal/cache/HelloCache;->saveNegotiatedValue(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
