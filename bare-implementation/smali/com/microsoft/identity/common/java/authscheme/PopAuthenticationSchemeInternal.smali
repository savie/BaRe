.class public Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;
.super Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SCHEME_POP:Ljava/lang/String; = "PoP"

.field private static final serialVersionUID:J = 0xaf0ef4a5366b9e6L


# instance fields
.field private mClientClaims:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_claims"
    .end annotation
.end field

.field private transient mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

.field private mHttpMethod:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "http_method"
    .end annotation
.end field

.field private mNonce:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "nonce"
    .end annotation
.end field

.field private transient mPopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

.field private mUrl:Ljava/net/URL;
    .annotation runtime Ly77;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    const-string v0, "PoP"

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;)V

    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->access$600(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->access$700(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mHttpMethod:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->access$800(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mUrl:Ljava/net/URL;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->access$900(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mNonce:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->access$1000(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClientClaims:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->access$1100(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mPopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    const-string v0, "PoP"

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 47
    iput-object v0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 48
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mPopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 49
    iput-object p2, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mHttpMethod:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mUrl:Ljava/net/URL;

    .line 51
    iput-object p4, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mNonce:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClientClaims:Ljava/lang/String;

    return-void

    .line 53
    :cond_0
    const-string p0, "url is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    const-string p0, "popManager is marked non-null but is null"

    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/util/IClockSkewManager;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "PoP"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mPopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mHttpMethod:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mUrl:Ljava/net/URL;

    .line 20
    .line 21
    iput-object p5, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mNonce:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p6, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClientClaims:Ljava/lang/String;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "url is marked non-null but is null"

    .line 27
    .line 28
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    const-string p0, "popManager is marked non-null but is null"

    .line 33
    .line 34
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_2
    const-string p0, "clockSkewManager is marked non-null but is null"

    .line 39
    .line 40
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Lcom/microsoft/identity/common/java/util/IClockSkewManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mHttpMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Ljava/net/URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mUrl:Ljava/net/URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mNonce:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClientClaims:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mPopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static builder()Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;

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
    instance-of v1, p1, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;

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
    check-cast v1, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getHttpMethod()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getHttpMethod()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getUrl()Ljava/net/URL;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getUrl()Ljava/net/URL;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez p1, :cond_6

    .line 57
    .line 58
    if-eqz v3, :cond_7

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_7

    .line 66
    .line 67
    :goto_1
    return v2

    .line 68
    :cond_7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getNonce()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getNonce()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-nez p1, :cond_8

    .line 77
    .line 78
    if-eqz v3, :cond_9

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_9

    .line 86
    .line 87
    :goto_2
    return v2

    .line 88
    :cond_9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getClientClaims()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getClientClaims()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-nez p0, :cond_a

    .line 97
    .line 98
    if-eqz p1, :cond_b

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_b

    .line 106
    .line 107
    :goto_3
    return v2

    .line 108
    :cond_b
    return v0
.end method

.method public getAccessTokenForScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v1, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/microsoft/identity/common/components/AndroidClockSkewManager;->getAdjustedReferenceTime()Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget-object v2, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mPopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getHttpMethod()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const-wide/16 v5, 0x3e8

    .line 25
    .line 26
    div-long v5, v0, v5

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getUrl()Ljava/net/URL;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getNonce()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getClientClaims()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    move-object v3, v2

    .line 41
    check-cast v3, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    .line 42
    .line 43
    move-object v8, p1

    .line 44
    invoke-virtual/range {v3 .. v10}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->mintSignedAccessToken(Ljava/lang/String;JLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_0
    const-string p0, "IClockSkewManager not initialized."

    .line 50
    .line 51
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    const-string p0, "accessToken is marked non-null but is null"

    .line 56
    .line 57
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public getClientClaims()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClientClaims:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mHttpMethod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mNonce:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mUrl:Ljava/net/URL;

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
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getHttpMethod()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getUrl()Ljava/net/URL;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    mul-int/lit8 v0, v0, 0x3b

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_1
    add-int/2addr v0, v1

    .line 37
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getNonce()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    mul-int/lit8 v0, v0, 0x3b

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    move v1, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :goto_2
    add-int/2addr v0, v1

    .line 52
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->getClientClaims()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    mul-int/lit8 v0, v0, 0x3b

    .line 57
    .line 58
    if-nez p0, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    :goto_3
    add-int/2addr v0, v2

    .line 66
    return v0
.end method

.method public setClockSkewManager(Lcom/microsoft/identity/common/java/util/IClockSkewManager;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mClockSkewManager:Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "clockSkewManager is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setDevicePopManager(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;->mPopManager:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "devicePopManager is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toBuilder()Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal;)Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeInternal$PopAuthenticationSchemeInternalBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
