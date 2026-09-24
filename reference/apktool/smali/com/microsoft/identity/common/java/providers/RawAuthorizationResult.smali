.class public final Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mAuthorizationFinalUri:Ljava/net/URI;

.field private final mException:Lcom/microsoft/identity/common/java/exception/BaseException;

.field private final mResultCode:I


# direct methods
.method public constructor <init>(ILjava/net/URI;Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mResultCode:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mAuthorizationFinalUri:Ljava/net/URI;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mException:Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 9
    .line 10
    return-void
.end method

.method public static fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$200(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static fromPropertyBag(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 9

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.microsoft.identity.client.result.code"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->get(Ljava/lang/String;)Ljava/io/Serializable;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Integer;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-static {v2}, Ldj7;->C(I)[I

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    array-length v3, v2

    .line 25
    const/4 v4, 0x0

    .line 26
    move v5, v4

    .line 27
    :goto_0
    if-ge v5, v3, :cond_2

    .line 28
    .line 29
    aget v6, v2, v5

    .line 30
    .line 31
    invoke-static {v6}, Lfz5;->d(I)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-ne v7, v8, :cond_1

    .line 40
    .line 41
    move v1, v6

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v1, v4

    .line 47
    :goto_1
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;I)V

    .line 48
    .line 49
    .line 50
    const-string v1, "com.microsoft.aad.adal:BrowserFinalUrl"

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->get(Ljava/lang/String;)Ljava/io/Serializable;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/net/URI;

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$300(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Ljava/net/URI;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "com.microsoft.aad.adal:AuthenticationException"

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->get(Ljava/lang/String;)Ljava/io/Serializable;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 68
    .line 69
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$200(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method public static fromRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getResultCodeFromFinalRedirectUri(Ljava/net/URI;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$300(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Ljava/net/URI;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    .line 30
    .line 31
    const-string v1, "malformed_url"

    .line 32
    .line 33
    const-string v2, "Failed to parse redirect URL"

    .line 34
    .line 35
    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    const-string p0, "redirectUri is marked non-null but is null"

    .line 44
    .line 45
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static fromResultCode(I)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-static {p0}, Lfz5;->v(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, " should be set via other factory methods"

    .line 31
    .line 32
    const-string v1, "Result code "

    .line 33
    .line 34
    invoke-static {p0, v0, v1}, Lz5;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public static fromThrowable(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/microsoft/identity/common/PropertyBagUtil;->baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$200(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private static getResultCodeFromFinalRedirectUri(Ljava/net/URI;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/UrlUtil;->getParameters(Ljava/net/URI;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "msauth"

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "RawAuthorizationResultgetResultCodeFromFinalRedirectUri"

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const-string v1, "app_link"

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string p0, "Return to caller with BROWSER_CODE_WAIT_FOR_BROKER_INSTALL, and waiting for result."

    .line 28
    .line 29
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x5

    .line 33
    return p0

    .line 34
    :cond_0
    const-string v1, "wpj"

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const-string p0, " Device needs to be registered, sending BROWSER_CODE_DEVICE_REGISTER"

    .line 47
    .line 48
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x6

    .line 52
    return p0

    .line 53
    :cond_1
    const-string v1, "upgradeReg"

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    const-string p0, " Device registration needs to be upgraded, sending INSUFFICIENT_DEVICE_REGISTRATION"

    .line 66
    .line 67
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/16 p0, 0x9

    .line 71
    .line 72
    return p0

    .line 73
    :cond_2
    const-string p0, "error_subcode"

    .line 74
    .line 75
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "cancel"

    .line 82
    .line 83
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    const-string p0, "User cancelled the session"

    .line 90
    .line 91
    invoke-static {v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x2

    .line 95
    return p0

    .line 96
    :cond_3
    const/4 p0, 0x4

    .line 97
    return p0
.end method

.method public static toPropertyBag(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)Lcom/microsoft/identity/common/java/util/ported/PropertyBag;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mResultCode:I

    .line 7
    .line 8
    invoke-static {v1}, Lfz5;->d(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "com.microsoft.identity.client.result.code"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "com.microsoft.aad.adal:BrowserFinalUrl"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mAuthorizationFinalUri:Ljava/net/URI;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "com.microsoft.aad.adal:AuthenticationException"

    .line 29
    .line 30
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mException:Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method


# virtual methods
.method public final getAuthorizationFinalUri()Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mAuthorizationFinalUri:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getException()Lcom/microsoft/identity/common/java/exception/BaseException;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mException:Lcom/microsoft/identity/common/java/exception/BaseException;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getResultCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mResultCode:I

    .line 2
    .line 3
    return p0
.end method
