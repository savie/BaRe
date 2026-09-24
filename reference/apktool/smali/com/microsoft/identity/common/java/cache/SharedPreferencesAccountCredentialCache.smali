.class public final Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;
.super Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final ACCOUNT_RECORD_DESERIALIZATION_FAILED:Ljava/lang/String;

.field public static final CREDENTIAL_DESERIALIZATION_FAILED:Ljava/lang/String;

.field public static final EMPTY_ACCOUNT:Lcom/microsoft/identity/common/java/dto/AccountRecord;

.field public static final EMPTY_AT:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

.field public static final EMPTY_ID:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

.field public static final EMPTY_RT:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;


# instance fields
.field private final mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->EMPTY_ACCOUNT:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 7
    .line 8
    new-instance v0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->EMPTY_AT:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 14
    .line 15
    new-instance v0, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->EMPTY_RT:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 21
    .line 22
    new-instance v0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->EMPTY_ID:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 28
    .line 29
    const-string v0, "Deserialization failed. Skipping AccountRecord"

    .line 30
    .line 31
    sput-object v0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->ACCOUNT_RECORD_DESERIALIZATION_FAILED:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Deserialization failed. Skipping Credential"

    .line 34
    .line 35
    sput-object v0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->CREDENTIAL_DESERIALIZATION_FAILED:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;-><init>(Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "SharedPreferencesAccountCredentialCache"

    .line 5
    .line 6
    const-string v0, "Init: SharedPreferencesAccountCredentialCache"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 12
    .line 13
    return-void
.end method

.method public static getCredentialTypeForCredentialCacheKey(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/CredentialType;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_a

    .line 3
    .line 4
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_9

    .line 9
    .line 10
    new-instance v1, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/microsoft/identity/common/java/dto/CredentialType;->valueSet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_8

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v4, "-"

    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    sget-object v3, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 85
    .line 86
    const-string v4, "AccessToken"

    .line 87
    .line 88
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    return-object v3

    .line 95
    :cond_2
    sget-object v3, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 96
    .line 97
    const-string v4, "AccessToken_With_AuthScheme"

    .line 98
    .line 99
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_3

    .line 104
    .line 105
    return-object v3

    .line 106
    :cond_3
    sget-object v3, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 107
    .line 108
    const-string v4, "RefreshToken"

    .line 109
    .line 110
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_4

    .line 115
    .line 116
    return-object v3

    .line 117
    :cond_4
    sget-object v3, Lcom/microsoft/identity/common/java/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 118
    .line 119
    const-string v4, "IdToken"

    .line 120
    .line 121
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_5

    .line 126
    .line 127
    return-object v3

    .line 128
    :cond_5
    sget-object v3, Lcom/microsoft/identity/common/java/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 129
    .line 130
    const-string v4, "V1IdToken"

    .line 131
    .line 132
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    return-object v3

    .line 139
    :cond_6
    sget-object v3, Lcom/microsoft/identity/common/java/dto/CredentialType;->PrimaryRefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 140
    .line 141
    const-string v4, "PrimaryRefreshToken"

    .line 142
    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_7

    .line 148
    .line 149
    return-object v3

    .line 150
    :cond_7
    const-string v2, "Unexpected credential type."

    .line 151
    .line 152
    const-string v3, "SharedPreferencesAccountCredentialCache:getCredentialTypeForCredentialCacheKey"

    .line 153
    .line 154
    invoke-static {v3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    return-object v0

    .line 159
    :cond_9
    const-string p0, "Param [cacheKey] cannot be null."

    .line 160
    .line 161
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v0

    .line 165
    :cond_a
    const-string p0, "cacheKey is marked non-null but is null"

    .line 166
    .line 167
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-object v0
.end method


# virtual methods
.method public final getAccount(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    const-string v1, "Loading Account by key..."

    .line 5
    .line 6
    const-string v2, "SharedPreferencesAccountCredentialCache"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 12
    .line 13
    invoke-interface {v1, p1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    const-class v4, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 22
    .line 23
    invoke-virtual {p0, v4, v3}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->fromCacheValue(Ljava/lang/Class;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    sget-object p1, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->ACCOUNT_RECORD_DESERIALIZATION_FAILED:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    sget-object v3, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->EMPTY_ACCOUNT:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 38
    .line 39
    invoke-virtual {v3, p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    const-string p0, "The returned Account was uninitialized. Removing..."

    .line 46
    .line 47
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->remove(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_1
    return-object p0

    .line 55
    :cond_2
    const-string p0, "cacheKey is marked non-null but is null"

    .line 56
    .line 57
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public final getAccounts()Ljava/util/ArrayList;
    .locals 8

    .line 1
    const-string v0, "Loading Accounts...(no arg)"

    .line 2
    .line 3
    const-string v1, "SharedPreferencesAccountCredentialCache:getAccounts"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "Loading Accounts + keys..."

    .line 9
    .line 10
    const-string v2, "SharedPreferencesAccountCredentialCache"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache$1;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 21
    .line 22
    invoke-interface {v3, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->getAllFilteredByKey(Lcom/microsoft/identity/common/java/util/ported/Predicate;)Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v3, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-class v6, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 60
    .line 61
    iget-object v7, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 62
    .line 63
    invoke-virtual {v7, v6, v4}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->fromCacheValue(Ljava/lang/Class;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 68
    .line 69
    if-nez v4, :cond_0

    .line 70
    .line 71
    sget-object v4, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->ACCOUNT_RECORD_DESERIALIZATION_FAILED:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v2, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v0, "Returning ["

    .line 84
    .line 85
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, "] Accounts w/ keys..."

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance p0, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "Found ["

    .line 119
    .line 120
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, "] Accounts..."

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-object p0
.end method

.method public final getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    const-string v0, "Loading Accounts..."

    .line 2
    .line 3
    const-string v1, "SharedPreferencesAccountCredentialCache:getAccountsFilteredBy"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->getAccounts()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    xor-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    xor-int/2addr v4, v4

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v6, "Account lookup filtered by home_account_id? ["

    .line 27
    .line 28
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "]\nAccount lookup filtered by realm? ["

    .line 35
    .line 36
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "]"

    .line 43
    .line 44
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v4, "AbstractAccountCredentialCache"

    .line 52
    .line 53
    invoke-static {v4, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 76
    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {p1, v6}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    if-nez v3, :cond_1

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {p2, v6}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCaseTrimBoth(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-nez v6, :cond_1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string p1, "Found ["

    .line 110
    .line 111
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p2, "] matching accounts"

    .line 122
    .line 123
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {v4, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, "] matching Accounts..."

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-object v2
.end method

.method public final getCredential(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/Credential;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    const-string v1, "getCredential()"

    .line 5
    .line 6
    const-string v2, "SharedPreferencesAccountCredentialCache"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Using cache key: ["

    .line 14
    .line 15
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "]"

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->getCredentialTypeForCredentialCacheKey(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-static {p1, v1}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getTargetClassForCredentialType(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v1, v0

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v3, p1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/String;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 56
    .line 57
    invoke-virtual {p0, v1, v4}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->fromCacheValue(Ljava/lang/Class;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcom/microsoft/identity/common/java/dto/Credential;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-object p0, v0

    .line 65
    :goto_1
    if-nez p0, :cond_2

    .line 66
    .line 67
    sget-object p1, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->CREDENTIAL_DESERIALIZATION_FAILED:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_2
    const-class v4, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 74
    .line 75
    if-ne v4, v1, :cond_3

    .line 76
    .line 77
    sget-object v4, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->EMPTY_AT:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 78
    .line 79
    invoke-virtual {v4, p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_5

    .line 84
    .line 85
    :cond_3
    const-class v4, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 86
    .line 87
    if-ne v4, v1, :cond_4

    .line 88
    .line 89
    sget-object v4, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->EMPTY_RT:Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 90
    .line 91
    invoke-virtual {v4, p0}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_5

    .line 96
    .line 97
    :cond_4
    const-class v4, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 98
    .line 99
    if-ne v4, v1, :cond_6

    .line 100
    .line 101
    sget-object v1, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->EMPTY_ID:Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 102
    .line 103
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    :cond_5
    const-string p0, "The returned Credential was uninitialized. Removing..."

    .line 110
    .line 111
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->remove(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_6
    return-object p0

    .line 119
    :cond_7
    const-string p0, "cacheKey is marked non-null but is null"

    .line 120
    .line 121
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-object v0
.end method

.method public final getCredentials()Ljava/util/ArrayList;
    .locals 10

    .line 1
    const-string v0, "SharedPreferencesAccountCredentialCache:getCredentials"

    .line 2
    .line 3
    const-string v1, "Loading Credentials..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "Loading Credentials with keys..."

    .line 9
    .line 10
    const-string v1, "SharedPreferencesAccountCredentialCache:getCredentialsWithKeys"

    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache$2;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 26
    .line 27
    invoke-interface {v3, v2}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->getAllFilteredByKey(Lcom/microsoft/identity/common/java/util/ported/Predicate;)Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    const-string v6, "Resolving class for key/CredentialType..."

    .line 61
    .line 62
    const-string v7, "SharedPreferencesAccountCredentialCache:credentialClassForType"

    .line 63
    .line 64
    invoke-static {v7, v6}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v8, "Supplied key: ["

    .line 70
    .line 71
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v8, "]"

    .line 78
    .line 79
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v7, v6}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v4}, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->getCredentialTypeForCredentialCacheKey(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    if-nez v6, :cond_0

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v9, "CredentialType matched: ["

    .line 99
    .line 100
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-static {v7, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v4, v6}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getTargetClassForCredentialType(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;)Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    :goto_1
    iget-object v6, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 121
    .line 122
    invoke-virtual {v6, v5, v3}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->fromCacheValue(Ljava/lang/Class;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Lcom/microsoft/identity/common/java/dto/Credential;

    .line 127
    .line 128
    if-nez v3, :cond_1

    .line 129
    .line 130
    sget-object v3, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->CREDENTIAL_DESERIALIZATION_FAILED:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v1, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    const-string p0, "cacheKey is marked non-null but is null"

    .line 141
    .line 142
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-object v5

    .line 146
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v2, "Loaded ["

    .line 149
    .line 150
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, "] Credentials..."

    .line 161
    .line 162
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance p0, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    .line 180
    .line 181
    return-object p0
.end method

.method public final getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14

    .line 72
    const-string v0, "getCredentialsFilteredBy()"

    const-string v1, "SharedPreferencesAccountCredentialCache:getCredentialsFilteredBy"

    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->getCredentials()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    .line 74
    invoke-static/range {v2 .. v13}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredByInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Found ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] matching Credentials..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 13

    .line 1
    if-eqz p10, :cond_0

    .line 2
    .line 3
    const-string p0, "getCredentialsFilteredBy()"

    .line 4
    .line 5
    const-string v0, "SharedPreferencesAccountCredentialCache:getCredentialsFilteredBy"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v12, 0x0

    .line 11
    const/4 v9, 0x0

    .line 12
    move-object v2, p1

    .line 13
    move-object v3, p2

    .line 14
    move-object/from16 v4, p3

    .line 15
    .line 16
    move-object/from16 v5, p4

    .line 17
    .line 18
    move-object/from16 v6, p5

    .line 19
    .line 20
    move-object/from16 v7, p6

    .line 21
    .line 22
    move-object/from16 v8, p7

    .line 23
    .line 24
    move-object/from16 v10, p8

    .line 25
    .line 26
    move-object/from16 v11, p9

    .line 27
    .line 28
    move-object/from16 v1, p10

    .line 29
    .line 30
    invoke-static/range {v1 .. v12}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredByInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Found ["

    .line 37
    .line 38
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, "] matching Credentials..."

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_0
    const-string p0, "inputCredentials is marked non-null but is null"

    .line 62
    .line 63
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return-object p0
.end method

.method public final getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 13

    if-eqz p7, :cond_0

    .line 68
    const-string p0, "getCredentialsFilteredBy() -- with input list"

    const-string v0, "SharedPreferencesAccountCredentialCache:getCredentialsFilteredBy"

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v1, p7

    .line 69
    invoke-static/range {v1 .. v12}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredByInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Found ["

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] matching Credentials..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 71
    :cond_0
    const-string p0, "inputCredentials is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCredentialsFilteredBy(Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12

    .line 76
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->getCredentials()Ljava/util/ArrayList;

    move-result-object v0

    .line 77
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/microsoft/identity/common/java/dto/CredentialType;

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v4, p3

    .line 79
    invoke-static/range {v0 .. v11}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredByInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object p1, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getCredentialsFilteredBy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12

    if-eqz p1, :cond_0

    .line 81
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v11, p11

    .line 82
    invoke-static/range {v0 .. v11}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredByInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 84
    :cond_0
    const-string p0, "inputCredentials is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    const-string v1, "Removing Account..."

    .line 5
    .line 6
    const-string v2, "SharedPreferencesAccountCredentialCache:removeAccount"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->generateCacheKey(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->remove(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, "Account was removed? ["

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "]"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v0

    .line 59
    :cond_1
    const-string p0, "accountToRemove is marked non-null but is null"

    .line 60
    .line 61
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return v0
.end method

.method public final removeCredential(Lcom/microsoft/identity/common/java/dto/Credential;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    const-string v1, "Removing Credential..."

    .line 5
    .line 6
    const-string v2, "SharedPreferencesAccountCredentialCache:removeCredential"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->generateCacheKey(Lcom/microsoft/identity/common/java/dto/Credential;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->remove(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, "Credential was removed? ["

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "]"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v0

    .line 59
    :cond_1
    const-string p0, "credentialToRemove is marked non-null but is null"

    .line 60
    .line 61
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return v0
.end method

.method public final declared-synchronized saveAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V
    .locals 4

    .line 1
    const-string v0, "Generated cache key: ["

    .line 2
    .line 3
    const-string v1, "Account type: ["

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    :try_start_0
    const-string v2, "SharedPreferencesAccountCredentialCache"

    .line 9
    .line 10
    const-string v3, "Saving Account..."

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "SharedPreferencesAccountCredentialCache"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "]"

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->generateCacheKey(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "SharedPreferencesAccountCredentialCache"

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, "]"

    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->getAccount(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;->mergeAdditionalFields(Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->generateCacheValue(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 95
    .line 96
    invoke-interface {v0, p1, v1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 102
    .line 103
    const-string v0, "accountToSave is marked non-null but is null"

    .line 104
    .line 105
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    throw p1
.end method

.method public final declared-synchronized saveCredential(Lcom/microsoft/identity/common/java/dto/Credential;)V
    .locals 4

    .line 1
    const-string v0, "Generated cache key: ["

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "SharedPreferencesAccountCredentialCache"

    .line 5
    .line 6
    const-string v2, "Saving credential..."

    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->generateCacheKey(Lcom/microsoft/identity/common/java/dto/Credential;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "SharedPreferencesAccountCredentialCache"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "]"

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->getCredential(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/Credential;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;->mergeAdditionalFields(Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->generateCacheValue(Lcom/microsoft/identity/common/java/dto/Credential;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 61
    .line 62
    invoke-interface {v0, p1, v1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1
.end method
