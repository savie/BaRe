.class public final Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericOAuth2Strategy:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;",
        "GenericTokenResponse:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;",
        "GenericAccount:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;",
        "GenericRefreshToken:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sCacheLock:Ljava/lang/Object;


# instance fields
.field private final mAccountCredentialAdapter:Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;"
        }
    .end annotation
.end field

.field private final mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->sCacheLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;",
            "Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;",
            "Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p1, "MsalOAuth2TokenCache"

    .line 5
    .line 6
    const-string v0, "Init: MsalOAuth2TokenCache"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;

    .line 14
    .line 15
    return-void
.end method

.method private static accountHasCredential(Lcom/microsoft/identity/common/java/dto/AccountRecord;Ljava/util/List;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v2, "]\nEnvironment: ["

    .line 15
    .line 16
    const-string v3, "]"

    .line 17
    .line 18
    const-string v4, "HomeAccountId: ["

    .line 19
    .line 20
    invoke-static {v4, v1, v2, p0, v3}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "MsalOAuth2TokenCache:accountHasCredential"

    .line 25
    .line 26
    invoke-static {v3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/microsoft/identity/common/java/dto/Credential;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/Credential;->getEnvironment()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    const-string p0, "Credentials located for account."

    .line 66
    .line 67
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x1

    .line 71
    return p0

    .line 72
    :cond_1
    return v0

    .line 73
    :cond_2
    const-string p0, "appCredentials is marked non-null but is null"

    .line 74
    .line 75
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return v0

    .line 79
    :cond_3
    const-string p0, "account is marked non-null but is null"

    .line 80
    .line 81
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return v0
.end method

.method private getFamilyRefreshTokenForAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    sget-object v4, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 17
    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const-string p1, "Inspecting fallback RTs for a FoCI match."

    .line 29
    .line 30
    const-string v1, "MsalOAuth2TokenCache:getFamilyRefreshTokensForAccount"

    .line 31
    .line 32
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/microsoft/identity/common/java/dto/Credential;

    .line 50
    .line 51
    instance-of v2, p1, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    check-cast p1, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    const-string p0, "Fallback RT found."

    .line 68
    .line 69
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_1
    return-object v0

    .line 74
    :cond_2
    const-string p0, "account is marked non-null but is null"

    .line 75
    .line 76
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v0
.end method

.method private static isSchemaCompliant(Ljava/lang/Class;[[Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    move v4, v1

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v0, :cond_1

    .line 7
    .line 8
    aget-object v5, p1, v3

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    aget-object v4, v5, v1

    .line 13
    .line 14
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    move v4, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v4, v2

    .line 23
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-nez v4, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, " does not contain all required fields."

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "MsalOAuth2TokenCache:isSchemaCompliant"

    .line 39
    .line 40
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    array-length p0, p1

    .line 44
    move v3, v2

    .line 45
    :goto_2
    if-ge v3, p0, :cond_2

    .line 46
    .line 47
    aget-object v5, p1, v3

    .line 48
    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    aget-object v7, v5, v2

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v7, " is null? ["

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    aget-object v5, v5, v1

    .line 65
    .line 66
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, "]"

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v0, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    return v4
.end method

.method private mergeCacheRecordWithOtherTenantCacheRecords(Lcom/microsoft/identity/common/java/cache/CacheRecord;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0, v2, v3}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAllTenantAccountsForAccountByClientId(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 55
    .line 56
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p0, v3, v2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getSparseCacheRecordForAccount(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    return-object v0
.end method

.method private removeAllRefreshTokensExcept(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "isFamilyRefreshToken? ["

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "]"

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "MsalOAuth2TokenCache:removeAllRefreshTokensExcept"

    .line 31
    .line 32
    invoke-static {v3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "MSSTS"

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getAuthorityType()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v5, "isMultiResourceCapable? ["

    .line 48
    .line 49
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    :cond_1
    move-object v9, v2

    .line 81
    sget-object v8, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 82
    .line 83
    if-eqz v7, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    const/4 v10, 0x0

    .line 90
    iget-object v5, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 91
    .line 92
    invoke-virtual/range {v5 .. v10}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 v0, 0x0

    .line 101
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/microsoft/identity/common/java/dto/Credential;

    .line 112
    .line 113
    invoke-virtual {p2, v2}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_2

    .line 118
    .line 119
    iget-object v4, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 120
    .line 121
    invoke-virtual {v4, v2}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->removeCredential(Lcom/microsoft/identity/common/java/dto/Credential;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_2

    .line 126
    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string p1, "Refresh tokens removed: ["

    .line 133
    .line 134
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 p0, 0x1

    .line 151
    if-le v0, p0, :cond_4

    .line 152
    .line 153
    const-string p0, "Multiple refresh tokens found for Account."

    .line 154
    .line 155
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    return-void

    .line 159
    :cond_5
    const-string p0, "environment is marked non-null but is null"

    .line 160
    .line 161
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method private static scopesAsSet(Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;)Ljava/util/HashSet;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "\\s+"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_0

    .line 25
    .line 26
    aget-object v3, p0, v2

    .line 27
    .line 28
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0

    .line 41
    :cond_1
    new-instance p0, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method private static setToCacheRecord(Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getCredentialType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/microsoft/identity/common/java/dto/CredentialType;->values()[Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-eqz v4, :cond_4

    .line 33
    .line 34
    sget-object v0, Lcom/microsoft/identity/common/java/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 35
    .line 36
    if-ne v0, v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->v1IdToken(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    sget-object v0, Lcom/microsoft/identity/common/java/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 43
    .line 44
    if-ne v0, v4, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->idToken(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v0, "Unrecognized IdToken type: "

    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getCredentialType()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "MsalOAuth2TokenCache:setToCacheRecord"

    .line 69
    .line 70
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    return-void

    .line 74
    :cond_5
    const-string p0, "idTokenRecord is marked non-null but is null"

    .line 75
    .line 76
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static validateCacheArtifacts(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "MsalOAuth2TokenCache:validateCacheArtifacts"

    .line 2
    .line 3
    const-string v1, "Validating cache artifacts..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "home_account_id"

    .line 13
    .line 14
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "environment"

    .line 23
    .line 24
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v4, "local_account_id"

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getLocalAccountId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "username"

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getUsername()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string v6, "authority_type"

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getAuthorityType()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    filled-new-array {v0, v2, v4, v5, v6}, [[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->isSchemaCompliant(Ljava/lang/Class;[[Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    const-string v0, "secret"

    .line 71
    .line 72
    const-string v2, "client_id"

    .line 73
    .line 74
    const-string v4, "credential_type"

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getCredentialType()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    filled-new-array {v1, v5}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getEnvironment()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    filled-new-array {v2, v5}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    const-string v5, "target"

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    filled-new-array {v5, v10}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    const-string v5, "cached_at"

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getCachedAt()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    filled-new-array {v5, v11}, [Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    const-string v5, "expires_on"

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getExpiresOn()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    filled-new-array {v5, v12}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    filled-new-array/range {v6 .. v13}, [[Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v6, v5}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->isSchemaCompliant(Ljava/lang/Class;[[Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_0

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_0
    const/4 v5, 0x0

    .line 164
    goto :goto_1

    .line 165
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 166
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/identity/common/java/dto/Credential;->getCredentialType()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    filled-new-array {v4, v6}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/identity/common/java/dto/Credential;->getEnvironment()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    filled-new-array {v3, v7}, [Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    filled-new-array {v1, v8}, [Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    filled-new-array {v2, v9}, [Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    filled-new-array {v0, v10}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    filled-new-array {v6, v7, v8, v9, v10}, [[Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-static {v7, v6}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->isSchemaCompliant(Ljava/lang/Class;[[Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    filled-new-array {v1, v7}, [Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/identity/common/java/dto/Credential;->getEnvironment()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    filled-new-array {v3, v7}, [Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/identity/common/java/dto/Credential;->getCredentialType()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    filled-new-array {v2, v7}, [Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    filled-new-array {v0, v7}, [Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    filled-new-array {v1, v3, v4, v2, v0}, [[Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->isSchemaCompliant(Ljava/lang/Class;[[Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    const/4 v1, 0x0

    .line 271
    if-eqz p0, :cond_7

    .line 272
    .line 273
    if-eqz v5, :cond_3

    .line 274
    .line 275
    if-eqz v6, :cond_3

    .line 276
    .line 277
    if-nez v0, :cond_2

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_2
    return-void

    .line 281
    :cond_3
    :goto_2
    if-nez v5, :cond_4

    .line 282
    .line 283
    const-string p0, "[(AT)"

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_4
    const-string p0, "["

    .line 287
    .line 288
    :goto_3
    if-nez v6, :cond_5

    .line 289
    .line 290
    const-string v2, "(RT)"

    .line 291
    .line 292
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    :cond_5
    if-nez v0, :cond_6

    .line 297
    .line 298
    const-string v0, "(ID)"

    .line 299
    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    :cond_6
    const-string v0, "]"

    .line 305
    .line 306
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    const-string v0, "Credential is missing schema-required fields."

    .line 311
    .line 312
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :cond_7
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 317
    .line 318
    const-string v0, "Account is missing schema-required fields."

    .line 319
    .line 320
    invoke-direct {p0, v0, v1, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    throw p0
.end method


# virtual methods
.method public final getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    if-eqz p3, :cond_3

    .line 5
    .line 6
    const-string v1, "]\nClientId: ["

    .line 7
    .line 8
    const-string v2, "]\nHomeAccountId: ["

    .line 9
    .line 10
    const-string v3, "Environment: ["

    .line 11
    .line 12
    invoke-static {v3, p1, v1, p2, v2}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "]\nRealm: ["

    .line 17
    .line 18
    const-string v3, "]"

    .line 19
    .line 20
    invoke-static {v1, p3, v2, p4, v3}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "MsalOAuth2TokenCache:getAccount"

    .line 25
    .line 26
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p2, "Found "

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, " accounts"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_0

    .line 84
    .line 85
    if-eqz p4, :cond_1

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_0

    .line 96
    .line 97
    :cond_1
    return-object p1

    .line 98
    :cond_2
    const-string p0, "No matching account found."

    .line 99
    .line 100
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_3
    const-string p0, "homeAccountId is marked non-null but is null"

    .line 105
    .line 106
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_4
    const-string p0, "clientId is marked non-null but is null"

    .line 111
    .line 112
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v0
.end method

.method public final getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    if-eqz p3, :cond_3

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "LocalAccountId: ["

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "]"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "MsalOAuth2TokenCache:getAccountByLocalAccountId"

    .line 26
    .line 27
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getAccounts()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    const-string p0, "No accounts found in the cache."

    .line 43
    .line 44
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    .line 49
    .line 50
    sget-object v3, Lcom/microsoft/identity/common/java/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 51
    .line 52
    sget-object v4, Lcom/microsoft/identity/common/java/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 53
    .line 54
    sget-object v5, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 55
    .line 56
    filled-new-array {v3, v4, v5}, [Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v2, p2}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getLocalAccountId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    invoke-static {p2, p0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->accountHasCredential(Lcom/microsoft/identity/common/java/dto/AccountRecord;Ljava/util/List;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    return-object p2

    .line 104
    :cond_2
    return-object v0

    .line 105
    :cond_3
    const-string p0, "localAccountId is marked non-null but is null"

    .line 106
    .line 107
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_4
    const-string p0, "clientId is marked non-null but is null"

    .line 112
    .line 113
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-object v0
.end method

.method public final getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    const-string v1, "]\nClientId: ["

    .line 5
    .line 6
    const-string v2, "]"

    .line 7
    .line 8
    const-string v3, "Environment: ["

    .line 9
    .line 10
    invoke-static {v3, p1, v1, p2, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "MsalOAuth2TokenCache:getAccounts"

    .line 15
    .line 16
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "Found "

    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v5, " accounts for this environment"

    .line 45
    .line 46
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    .line 68
    .line 69
    sget-object v5, Lcom/microsoft/identity/common/java/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 70
    .line 71
    sget-object v6, Lcom/microsoft/identity/common/java/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 72
    .line 73
    sget-object v7, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 74
    .line 75
    filled-new-array {v5, v6, v7}, [Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1, v3, p2}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 105
    .line 106
    invoke-static {p2, p0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->accountHasCredential(Lcom/microsoft/identity/common/java/dto/AccountRecord;Ljava/util/List;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, " accounts for this clientId"

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_3
    const-string p0, "clientId is marked non-null but is null"

    .line 146
    .line 147
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object v0
.end method

.method public final getAccountsWithAggregatedAccountData(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 28
    .line 29
    invoke-virtual {p0, p1, v2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getIdTokensForAccountRecord(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->builder()Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4, v2}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 64
    .line 65
    invoke-static {v4, v3}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->setToCacheRecord(Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->build()Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string p1, "Found "

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, " accounts with IdTokens"

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string p1, "MsalOAuth2TokenCache:getAccountsWithAggregatedAccountData"

    .line 101
    .line 102
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_4
    const-string p0, "clientId is marked non-null but is null"

    .line 111
    .line 112
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v0
.end method

.method public final getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0, p2, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAllTenantAccountsForAccountByClientId(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/util/List;

    move-result-object p1

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 120
    invoke-virtual {p0, p2, p3}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getSparseCacheRecordForAccount(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/cache/CacheRecord;

    move-result-object p3

    .line 121
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 123
    :cond_1
    const-string p0, "homeAccountId is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    return-object v0

    .line 124
    :cond_2
    const-string p0, "clientId is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAllTenantAccountsForAccountByClientId(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/dto/AccountRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 23
    .line 24
    invoke-virtual {v3, v1, v2}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v2, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_2
    const-string p0, "accountRecord is marked non-null but is null"

    .line 74
    .line 75
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    const-string p0, "clientId is marked non-null but is null"

    .line 80
    .line 81
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method

.method public final getFamilyRefreshTokenForHomeAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getAccounts()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-direct {p0, v2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getFamilyRefreshTokenForAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    return-object v0

    .line 42
    :cond_2
    const-string p0, "homeAccountId is marked non-null but is null"

    .line 43
    .line 44
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public final getIdTokensForAccountRecord(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/dto/AccountRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/dto/IdTokenRecord;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentials()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v9

    .line 14
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object v5, Lcom/microsoft/identity/common/java/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    const/4 v8, 0x0

    .line 29
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 30
    .line 31
    move-object v6, p1

    .line 32
    invoke-virtual/range {v2 .. v9}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sget-object v5, Lcom/microsoft/identity/common/java/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 51
    .line 52
    invoke-virtual/range {v2 .. v9}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/microsoft/identity/common/java/dto/Credential;

    .line 74
    .line 75
    instance-of p2, p1, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 76
    .line 77
    if-eqz p2, :cond_0

    .line 78
    .line 79
    check-cast p1, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_2
    const-string p0, "accountRecord is marked non-null but is null"

    .line 91
    .line 92
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    return-object p0
.end method

.method public final getSparseCacheRecordForAccount(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/cache/CacheRecord;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getIdTokensForAccountRecord(Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sget-object v0, Lcom/microsoft/identity/common/java/dto/CredentialType;->ID_TOKEN_TYPES:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-le p1, v0, :cond_0

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "Found more IdTokens than expected.\nFound: ["

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "]"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "MsalOAuth2TokenCache:getSparseCacheRecordForAccount"

    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->builder()Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 72
    .line 73
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->setToCacheRecord(Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->build()Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_2
    const-string p0, "acct is marked non-null but is null"

    .line 83
    .line 84
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_3
    const-string p0, "clientId is marked non-null but is null"

    .line 89
    .line 90
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v0
.end method

.method public final load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/java/cache/CacheRecord;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz p1, :cond_11

    .line 9
    .line 10
    if-eqz v1, :cond_10

    .line 11
    .line 12
    if-eqz v2, :cond_f

    .line 13
    .line 14
    new-instance v4, Lcom/microsoft/identity/common/java/telemetry/events/CacheStartEvent;

    .line 15
    .line 16
    invoke-direct {v4}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "cache_start_event"

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->names(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v5, "Microsoft.MSAL.cache_event"

    .line 25
    .line 26
    const-string v6, "Microsoft.MSAL.event_type"

    .line 27
    .line 28
    invoke-virtual {v4, v6, v5}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v4}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 32
    .line 33
    .line 34
    const-string v4, "MSSTS"

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getAuthorityType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v5, v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentials()Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    instance-of v5, v2, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 51
    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    move-object v5, v2

    .line 55
    check-cast v5, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->getKid()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    move-object/from16 v17, v5

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object/from16 v17, v3

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    const-string v5, "Bearer"

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_1

    .line 85
    .line 86
    sget-object v5, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 87
    .line 88
    :goto_1
    move-object v10, v5

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    sget-object v5, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :goto_2
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v16

    .line 101
    iget-object v6, v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 102
    .line 103
    move-object/from16 v11, p1

    .line 104
    .line 105
    move-object/from16 v12, p2

    .line 106
    .line 107
    move-object/from16 v15, p4

    .line 108
    .line 109
    move-object v7, v13

    .line 110
    move-object/from16 v13, p3

    .line 111
    .line 112
    invoke-virtual/range {v6 .. v17}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    move-object v13, v7

    .line 117
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    sget-object v9, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 126
    .line 127
    if-eqz v4, :cond_2

    .line 128
    .line 129
    move-object v11, v3

    .line 130
    goto :goto_3

    .line 131
    :cond_2
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    move-object v11, v5

    .line 136
    :goto_3
    if-eqz v4, :cond_3

    .line 137
    .line 138
    move-object v12, v3

    .line 139
    goto :goto_4

    .line 140
    :cond_3
    move-object/from16 v12, p4

    .line 141
    .line 142
    :goto_4
    iget-object v6, v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 143
    .line 144
    move-object/from16 v10, p1

    .line 145
    .line 146
    invoke-virtual/range {v6 .. v13}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_4

    .line 155
    .line 156
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getFamilyRefreshTokenForAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    if-eqz v5, :cond_4

    .line 161
    .line 162
    new-instance v4, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_4
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    sget-object v9, Lcom/microsoft/identity/common/java/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    const/4 v12, 0x0

    .line 185
    iget-object v6, v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 186
    .line 187
    move-object/from16 v10, p1

    .line 188
    .line 189
    invoke-virtual/range {v6 .. v13}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    sget-object v9, Lcom/microsoft/identity/common/java/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 202
    .line 203
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    iget-object v6, v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 208
    .line 209
    invoke-virtual/range {v6 .. v13}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->builder()Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    const/4 v7, 0x0

    .line 225
    if-eqz v1, :cond_5

    .line 226
    .line 227
    move-object v1, v3

    .line 228
    goto :goto_5

    .line 229
    :cond_5
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 234
    .line 235
    :goto_5
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->accessToken(Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_6

    .line 243
    .line 244
    move-object v1, v3

    .line 245
    goto :goto_6

    .line 246
    :cond_6
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 251
    .line 252
    :goto_6
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->refreshToken(Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_7

    .line 260
    .line 261
    move-object v1, v3

    .line 262
    goto :goto_7

    .line 263
    :cond_7
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 268
    .line 269
    :goto_7
    invoke-virtual {v6, v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->idToken(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_8

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_8
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    move-object v3, v0

    .line 284
    check-cast v3, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 285
    .line 286
    :goto_8
    invoke-virtual {v6, v3}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->v1IdToken(Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Lcom/microsoft/identity/common/java/telemetry/events/CacheEndEvent;

    .line 290
    .line 291
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/telemetry/events/CacheEndEvent;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->build()Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    const-string v3, "false"

    .line 303
    .line 304
    const-string v4, "true"

    .line 305
    .line 306
    if-nez v2, :cond_9

    .line 307
    .line 308
    move-object v2, v3

    .line 309
    goto :goto_9

    .line 310
    :cond_9
    move-object v2, v4

    .line 311
    :goto_9
    const-string v5, "Microsoft.MSAL.at_status"

    .line 312
    .line 313
    invoke-virtual {v0, v5, v2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    const-string v5, "Microsoft.MSAL.rt_status"

    .line 321
    .line 322
    if-eqz v2, :cond_b

    .line 323
    .line 324
    const-string v2, "Microsoft.MSAL.mrrt_status"

    .line 325
    .line 326
    invoke-virtual {v0, v2, v4}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v5, v4}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-static {v2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eqz v2, :cond_a

    .line 345
    .line 346
    move-object v2, v3

    .line 347
    goto :goto_a

    .line 348
    :cond_a
    move-object v2, v4

    .line 349
    :goto_a
    const-string v5, "Microsoft.MSAL.frt_status"

    .line 350
    .line 351
    invoke-virtual {v0, v5, v2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_b
    invoke-virtual {v0, v5, v3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :goto_b
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getIdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    if-nez v2, :cond_c

    .line 363
    .line 364
    move-object v2, v3

    .line 365
    goto :goto_c

    .line 366
    :cond_c
    move-object v2, v4

    .line 367
    :goto_c
    const-string v5, "Microsoft.MSAL.id_token_status"

    .line 368
    .line 369
    invoke-virtual {v0, v5, v2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    if-nez v2, :cond_d

    .line 377
    .line 378
    move-object v2, v3

    .line 379
    goto :goto_d

    .line 380
    :cond_d
    move-object v2, v4

    .line 381
    :goto_d
    const-string v5, "Microsoft.MSAL.v1_id_token_status"

    .line 382
    .line 383
    invoke-virtual {v0, v5, v2}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    if-nez v1, :cond_e

    .line 391
    .line 392
    goto :goto_e

    .line 393
    :cond_e
    move-object v3, v4

    .line 394
    :goto_e
    const-string v1, "Microsoft.MSAL.account_status"

    .line 395
    .line 396
    invoke-virtual {v0, v1, v3}, Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->build()Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    return-object v0

    .line 407
    :cond_f
    const-string v0, "authScheme is marked non-null but is null"

    .line 408
    .line 409
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    return-object v3

    .line 413
    :cond_10
    const-string v0, "account is marked non-null but is null"

    .line 414
    .line 415
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    return-object v3

    .line 419
    :cond_11
    const-string v0, "clientId is marked non-null but is null"

    .line 420
    .line 421
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    return-object v3
.end method

.method public final removeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move-object/from16 v1, p3

    .line 8
    .line 9
    sget-object v2, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 10
    .line 11
    sget-object v3, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 12
    .line 13
    sget-object v4, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 14
    .line 15
    sget-object v6, Lcom/microsoft/identity/common/java/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 16
    .line 17
    sget-object v8, Lcom/microsoft/identity/common/java/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 18
    .line 19
    filled-new-array {v2, v3, v4, v6, v8}, [Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    const-string v2, "]\nHomeAccountId: ["

    .line 24
    .line 25
    const-string v3, "]\nRealm: ["

    .line 26
    .line 27
    const-string v4, "Environment: [null]\nClientId: ["

    .line 28
    .line 29
    invoke-static {v4, v5, v2, v7, v3}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, "]\nCredentialTypes to delete: ["

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, "]"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v9, "MsalOAuth2TokenCache:removeAccount"

    .line 58
    .line 59
    invoke-static {v9, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    if-eqz v5, :cond_a

    .line 64
    .line 65
    if-eqz v7, :cond_a

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-virtual {v0, v3, v5, v7, v1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    if-nez v11, :cond_0

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_0
    const/4 v12, 0x0

    .line 77
    if-nez v1, :cond_1

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    move v13, v1

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move v13, v12

    .line 83
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "IsRealmAgnostic? "

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v9, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    move v14, v12

    .line 101
    :goto_1
    const/4 v1, 0x5

    .line 102
    iget-object v15, v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 103
    .line 104
    if-ge v14, v1, :cond_6

    .line 105
    .line 106
    aget-object v4, v8, v14

    .line 107
    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    invoke-virtual {v11}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v13, :cond_2

    .line 115
    .line 116
    move-object v6, v10

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v11}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    move-object v6, v1

    .line 123
    :goto_2
    iget-object v1, v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 124
    .line 125
    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    move v2, v12

    .line 134
    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_4

    .line 139
    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Lcom/microsoft/identity/common/java/dto/Credential;

    .line 145
    .line 146
    invoke-virtual {v15, v5}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->removeCredential(Lcom/microsoft/identity/common/java/dto/Credential;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_3

    .line 151
    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v5, "Removed "

    .line 158
    .line 159
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v2, " credentials of type: "

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v9, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    add-int/lit8 v14, v14, 0x1

    .line 181
    .line 182
    move-object/from16 v5, p1

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_5
    const-string v0, "credentialType is marked non-null but is null"

    .line 186
    .line 187
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-object v10

    .line 191
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .line 195
    .line 196
    if-eqz v13, :cond_8

    .line 197
    .line 198
    invoke-virtual {v15, v7, v3}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_9

    .line 211
    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 217
    .line 218
    invoke-virtual {v15, v2}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->removeAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_7

    .line 223
    .line 224
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_8
    invoke-virtual {v15, v11}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->removeAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_9

    .line 233
    .line 234
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    :cond_9
    new-instance v1, Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;

    .line 238
    .line 239
    invoke-direct {v1, v0}, Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;-><init>(Ljava/util/ArrayList;)V

    .line 240
    .line 241
    .line 242
    return-object v1

    .line 243
    :cond_a
    :goto_5
    const-string v0, "Insufficient filtering provided for account removal - preserving Account."

    .line 244
    .line 245
    invoke-static {v9, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance v0, Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;

    .line 249
    .line 250
    invoke-direct {v0, v10}, Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;-><init>(Ljava/util/ArrayList;)V

    .line 251
    .line 252
    .line 253
    return-object v0
.end method

.method public final removeCredential(Lcom/microsoft/identity/common/java/dto/Credential;)Z
    .locals 3

    .line 1
    const-string v0, "Removing credential..."

    .line 2
    .line 3
    const-string v1, "MsalOAuth2TokenCache:removeCredential"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "ClientId: ["

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "]\nCredentialType: ["

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getCredentialType()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "]\nCachedAt: ["

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getCachedAt()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "]\nEnvironment: ["

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getEnvironment()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, "]\nHomeAccountId: ["

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, "]\nIsExpired?: ["

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/Credential;->isExpired()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, "]"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->removeCredential(Lcom/microsoft/identity/common/java/dto/Credential;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    return p0
.end method

.method public final save(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/cache/CacheRecord;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast p1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    .line 14
    .line 15
    check-cast p2, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    .line 16
    .line 17
    check-cast p3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    .line 18
    .line 19
    const-string v0, "MicrosoftStsAccountCredentialAdapter"

    .line 20
    .line 21
    const-string v1, "Creating Account"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 27
    .line 28
    invoke-virtual {p1, p3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAccount(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->createAccessToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->createRefreshToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;->createIdToken(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, v1, v2, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->validateCacheArtifacts(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 63
    .line 64
    .line 65
    filled-new-array {v0}, [Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const/4 p3, 0x0

    .line 70
    aget-object p2, p2, p3

    .line 71
    .line 72
    iget-object v3, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 73
    .line 74
    invoke-virtual {v3, p2}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->saveAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V

    .line 75
    .line 76
    .line 77
    sget-object p2, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->sCacheLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter p2

    .line 80
    const/4 v3, 0x3

    .line 81
    :try_start_0
    new-array v3, v3, [Lcom/microsoft/identity/common/java/dto/Credential;

    .line 82
    .line 83
    aput-object v1, v3, p3

    .line 84
    .line 85
    const/4 p3, 0x1

    .line 86
    aput-object v2, v3, p3

    .line 87
    .line 88
    const/4 p3, 0x2

    .line 89
    aput-object p1, v3, p3

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->saveCredentialsInternal([Lcom/microsoft/identity/common/java/dto/Credential;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v0, v2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->removeAllRefreshTokensExcept(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)V

    .line 95
    .line 96
    .line 97
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {}, Lcom/microsoft/identity/common/java/cache/CacheRecord;->builder()Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->account(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->accessToken(Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->refreshToken(Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->setToCacheRecord(Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/CacheRecord$CacheRecordBuilder;->build()Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw p0

    .line 122
    :cond_0
    const-string p0, "response is marked non-null but is null"

    .line 123
    .line 124
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_1
    const-string p0, "request is marked non-null but is null"

    .line 129
    .line 130
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_2
    const-string p0, "oAuth2Strategy is marked non-null but is null"

    .line 135
    .line 136
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-object v0
.end method

.method public final saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->save(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/java/cache/CacheRecord;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mergeCacheRecordWithOtherTenantCacheRecords(Lcom/microsoft/identity/common/java/cache/CacheRecord;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1

    .line 22
    :cond_0
    const-string p0, "response is marked non-null but is null"

    .line 23
    .line 24
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    const-string p0, "request is marked non-null but is null"

    .line 29
    .line 30
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    const-string p0, "oAuth2Strategy is marked non-null but is null"

    .line 35
    .line 36
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public final varargs saveCredentialsInternal([Lcom/microsoft/identity/common/java/dto/Credential;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    if-ge v4, v2, :cond_7

    .line 9
    .line 10
    aget-object v5, v1, v4

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    instance-of v6, v5, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 17
    .line 18
    iget-object v7, v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 19
    .line 20
    if-eqz v6, :cond_6

    .line 21
    .line 22
    move-object v6, v5

    .line 23
    check-cast v6, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/Credential;->getEnvironment()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/Credential;->getCredentialType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-static {}, Lcom/microsoft/identity/common/java/dto/CredentialType;->values()[Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    array-length v12, v11

    .line 45
    move v13, v3

    .line 46
    :goto_1
    if-ge v13, v12, :cond_2

    .line 47
    .line 48
    aget-object v14, v11, v13

    .line 49
    .line 50
    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v15

    .line 54
    invoke-virtual {v15, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v15

    .line 58
    if-eqz v15, :cond_1

    .line 59
    .line 60
    :goto_2
    move-object v11, v14

    .line 61
    goto :goto_3

    .line 62
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v14, 0x0

    .line 66
    goto :goto_2

    .line 67
    :goto_3
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getApplicationIdentifier()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getMamEnrollmentIdentifier()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRealm()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getAccessTokenType()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v16

    .line 87
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRequestedClaims()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v17

    .line 91
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentials()Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    move-result-object v18

    .line 95
    iget-object v8, v0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 96
    .line 97
    invoke-virtual/range {v8 .. v18}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v10, "Inspecting "

    .line 104
    .line 105
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v10, " accessToken[s]."

    .line 116
    .line 117
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    const-string v10, "MsalOAuth2TokenCache:deleteAccessTokensWithIntersectingScopes"

    .line 125
    .line 126
    invoke-static {v10, v9}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    :cond_3
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_5

    .line 138
    .line 139
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    check-cast v9, Lcom/microsoft/identity/common/java/dto/Credential;

    .line 144
    .line 145
    move-object v11, v9

    .line 146
    check-cast v11, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 147
    .line 148
    invoke-static {v6}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->scopesAsSet(Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;)Ljava/util/HashSet;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    invoke-static {v11}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->scopesAsSet(Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;)Ljava/util/HashSet;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    sget-object v13, Lcom/microsoft/identity/common/java/AuthenticationConstants;->DEFAULT_SCOPES:Ljava/util/Set;

    .line 157
    .line 158
    invoke-interface {v12, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 159
    .line 160
    .line 161
    invoke-interface {v11, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-eqz v13, :cond_3

    .line 173
    .line 174
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    check-cast v13, Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v14

    .line 184
    if-eqz v14, :cond_4

    .line 185
    .line 186
    const-string v11, "Scopes intersect."

    .line 187
    .line 188
    const-string v14, "MsalOAuth2TokenCache:scopesIntersect"

    .line 189
    .line 190
    invoke-static {v14, v11}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    new-instance v11, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v12, " contains ["

    .line 206
    .line 207
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v12, "]"

    .line 214
    .line 215
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    invoke-static {v14, v11}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance v11, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v12, "Removing credential: "

    .line 228
    .line 229
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    invoke-static {v10, v11}, Lcom/microsoft/identity/common/java/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v9}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->removeCredential(Lcom/microsoft/identity/common/java/dto/Credential;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 247
    .line 248
    .line 249
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    :cond_6
    invoke-virtual {v7, v5}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->saveCredential(Lcom/microsoft/identity/common/java/dto/Credential;)V

    .line 257
    .line 258
    .line 259
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_7
    return-void
.end method

.method public final setSingleSignOnState(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericAccount;TGenericRefreshToken;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "MsalOAuth2TokenCache:setSingleSignOnState"

    .line 2
    .line 3
    const-string v1, "Set SSO state called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getHomeAccountId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getEnvironment()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v2, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    .line 45
    .line 46
    const-string v2, "RefreshToken"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getClientId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/dto/Credential;->setClientId(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getSecret()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getTarget()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->setTarget(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    const-wide/16 v4, 0x3e8

    .line 77
    .line 78
    div-long/2addr v2, v4

    .line 79
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/dto/Credential;->setCachedAt(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getFamilyId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->setFamilyId(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/java/cache/MicrosoftStsAccountCredentialAdapter;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    div-long/2addr v2, v4

    .line 103
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getIDToken()Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    new-instance v5, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 108
    .line 109
    invoke-direct {v5}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getHomeAccountId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v5, v6}, Lcom/microsoft/identity/common/java/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getEnvironment()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v5, v6}, Lcom/microsoft/identity/common/java/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAccount;->getRealm()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v5, p1}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->setRealm(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string p1, "IdToken"

    .line 134
    .line 135
    invoke-virtual {v5, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->getClientId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v5, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setClientId(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->getRawIDToken()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v5, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v5, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->setCachedAt(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string p1, "SchemaUtil:getAuthority"

    .line 160
    .line 161
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->getTokenClaims()Ljava/util/Map;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    const-string v2, "iss"

    .line 166
    .line 167
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    check-cast p2, Ljava/lang/String;

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v3, "Issuer: "

    .line 176
    .line 177
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {p1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    if-nez p2, :cond_0

    .line 191
    .line 192
    const-string v2, "Environment was null or could not be parsed."

    .line 193
    .line 194
    invoke-static {p1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_0
    invoke-virtual {v5, p2}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->setAuthority(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const/4 p1, 0x0

    .line 201
    invoke-static {v0, p1, v1, v5}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->validateCacheArtifacts(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/java/dto/IdTokenRecord;)V

    .line 202
    .line 203
    .line 204
    filled-new-array {v0}, [Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    const/4 p2, 0x0

    .line 209
    aget-object p1, p1, p2

    .line 210
    .line 211
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;

    .line 212
    .line 213
    invoke-virtual {v2, p1}, Lcom/microsoft/identity/common/java/cache/AbstractAccountCredentialCache;->saveAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V

    .line 214
    .line 215
    .line 216
    sget-object p1, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->sCacheLock:Ljava/lang/Object;

    .line 217
    .line 218
    monitor-enter p1

    .line 219
    const/4 v2, 0x2

    .line 220
    :try_start_0
    new-array v2, v2, [Lcom/microsoft/identity/common/java/dto/Credential;

    .line 221
    .line 222
    aput-object v5, v2, p2

    .line 223
    .line 224
    const/4 p2, 0x1

    .line 225
    aput-object v1, v2, p2

    .line 226
    .line 227
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->saveCredentialsInternal([Lcom/microsoft/identity/common/java/dto/Credential;)V

    .line 228
    .line 229
    .line 230
    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->removeAllRefreshTokensExcept(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)V

    .line 231
    .line 232
    .line 233
    monitor-exit p1

    .line 234
    return-void

    .line 235
    :catchall_0
    move-exception p0

    .line 236
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    throw p0

    .line 238
    :cond_1
    const-string p0, "refreshTokenIn is marked non-null but is null"

    .line 239
    .line 240
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-void
.end method
