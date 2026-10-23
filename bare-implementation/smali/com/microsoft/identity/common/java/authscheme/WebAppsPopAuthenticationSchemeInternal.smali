.class public Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;
.super Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final SCHEME_POP_PREGENERATED:Ljava/lang/String; = "PoP_Pregenerated"

.field private static final TAG:Ljava/lang/String; = "WebAppsPopAuthenticationSchemeInternal"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mKid:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "kid"
    .end annotation
.end field

.field private mRequestConfirmation:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "req_cnf"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    const-string v0, "PoP_Pregenerated"

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "kid"

    .line 2
    .line 3
    const-string v1, "PoP_Pregenerated"

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->mRequestConfirmation:Ljava/lang/String;

    .line 18
    .line 19
    :try_start_0
    sget v1, Lcom/microsoft/identity/common/java/base64/Base64Util;->a:I

    .line 20
    .line 21
    sget-object v1, Lcom/microsoft/identity/common/java/base64/Base64Flags;->URL_SAFE:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 22
    .line 23
    sget-object v2, Lcom/microsoft/identity/common/java/base64/Base64Flags;->NO_PADDING:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 24
    .line 25
    sget-object v3, Lcom/microsoft/identity/common/java/base64/Base64Flags;->NO_WRAP:Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 26
    .line 27
    filled-new-array {v1, v2, v3}, [Lcom/microsoft/identity/common/java/base64/Base64Flags;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {p1, v1}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->decode(Ljava/lang/String;[Lcom/microsoft/identity/common/java/base64/Base64Flags;)[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v2, Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lqj4;->i()Lfl4;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v1, p1, Lfl4;->a:Liw4;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Liw4;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lqj4;->o()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->mKid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    :cond_0
    return-void

    .line 72
    :catch_0
    move-exception p0

    .line 73
    sget-object p1, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "Failed to parse kid from reqCnf. Exception type and message: "

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ": "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_1
    const-string p0, "requestConfirmation (req_cnf) cannot be null or empty for WebAppsPopAuthenticationSchemeInternal"

    .line 114
    .line 115
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v1

    .line 119
    :cond_2
    const-string p0, "requestConfirmation is marked non-null but is null"

    .line 120
    .line 121
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;

    .line 2
    .line 3
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->canEqual(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_2

    .line 19
    .line 20
    return v2

    .line 21
    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    return v2

    .line 28
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->getRequestConfirmation()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->getRequestConfirmation()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez p1, :cond_4

    .line 37
    .line 38
    if-eqz v3, :cond_5

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_5

    .line 46
    .line 47
    :goto_0
    return v2

    .line 48
    :cond_5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->getKid()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->getKid()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p0, :cond_6

    .line 57
    .line 58
    if-eqz p1, :cond_7

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_7

    .line 66
    .line 67
    :goto_1
    return v2

    .line 68
    :cond_7
    return v0
.end method

.method public getAccessTokenForScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    const-string p0, "accessToken is marked non-null but is null"

    .line 5
    .line 6
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public getKid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->mKid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRequestConfirmation()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->mRequestConfirmation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->getRequestConfirmation()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    mul-int/lit8 v0, v0, 0x3b

    .line 10
    .line 11
    const/16 v2, 0x2b

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    add-int/2addr v0, v1

    .line 22
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/WebAppsPopAuthenticationSchemeInternal;->getKid()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    mul-int/lit8 v0, v0, 0x3b

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :goto_1
    add-int/2addr v0, v2

    .line 36
    return v0
.end method
