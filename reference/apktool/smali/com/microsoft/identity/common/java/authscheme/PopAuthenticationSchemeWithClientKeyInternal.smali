.class public Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;
.super Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SCHEME_POP_WITH_CLIENT_KEY:Ljava/lang/String; = "PoP_With_Client_Key"

.field private static final serialVersionUID:J = 0xaf0ef4a5366b9e7L


# instance fields
.field private mKid:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "kid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    const-string v0, "PoP_With_Client_Key"

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;)V

    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;->access$100(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->mKid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "PoP_With_Client_Key"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->mKid:Ljava/lang/String;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "kid is marked non-null but is null"

    .line 12
    .line 13
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->mKid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static builder()Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilderImpl;

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
    instance-of p0, p1, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

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
    instance-of v1, p1, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

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
    check-cast v1, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->getKid()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->getKid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p0, :cond_4

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_5

    .line 46
    .line 47
    :goto_0
    return v2

    .line 48
    :cond_5
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

.method public getClientClaims()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getKid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->mKid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getRequestConfirmation()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "kid"

    .line 7
    .line 8
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->mKid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->getKid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    mul-int/lit8 v0, v0, 0x3b

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/16 p0, 0x2b

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    :goto_0
    add-int/2addr v0, p0

    .line 21
    return v0
.end method

.method public toBuilder()Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;)Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
