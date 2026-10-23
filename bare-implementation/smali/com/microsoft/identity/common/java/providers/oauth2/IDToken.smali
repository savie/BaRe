.class public final Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mRawIdToken:Ljava/lang/String;

.field private final mTokenClaims:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ServiceException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lcom/nimbusds/jwt/JWTParser;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/JWT;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/nimbusds/jwt/JWT;->getJWTClaimsSet()Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/HashMap;

    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string p1, "IDToken:getClaims(String)"

    .line 40
    .line 41
    const-string v0, "Failed to parse IdToken"

    .line 42
    .line 43
    invoke-static {p1, v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ServiceException;

    .line 47
    .line 48
    const-string v0, "Failed to parse JWT"

    .line 49
    .line 50
    const-string v1, "invalid_jwt"

    .line 51
    .line 52
    invoke-direct {p1, p0, v0, v1}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_0
    const-string p0, "rawIdToken is marked non-null but is null"

    .line 57
    .line 58
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_1
    const-string p0, "null or empty raw idtoken"

    .line 63
    .line 64
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/HashMap;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/HashMap;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    iget-object p1, p1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    .line 30
    .line 31
    if-nez p0, :cond_4

    .line 32
    .line 33
    if-eqz p1, :cond_5

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_5

    .line 41
    .line 42
    :goto_0
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public final getRawIDToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTokenClaims()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x2b

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/HashMap;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    move v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :goto_0
    const/16 v2, 0x3b

    .line 14
    .line 15
    add-int/2addr v1, v2

    .line 16
    mul-int/2addr v1, v2

    .line 17
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_1
    add-int/2addr v1, v0

    .line 27
    return v1
.end method
