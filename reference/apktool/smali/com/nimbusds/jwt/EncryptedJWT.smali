.class public Lcom/nimbusds/jwt/EncryptedJWT;
.super Lcom/nimbusds/jose/JWEObject;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jwt/JWT;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jwt/JWTClaimsSet;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet;->toPayload()Lcom/nimbusds/jose/Payload;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/JWEObject;-><init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/Payload;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/nimbusds/jwt/EncryptedJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/nimbusds/jose/JWEObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jwt/EncryptedJWT;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/nimbusds/jose/JOSEObject;->split(Ljava/lang/String;)[Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x5

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v3, Lcom/nimbusds/jwt/EncryptedJWT;

    .line 11
    .line 12
    aget-object v4, p0, v2

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    aget-object v5, p0, v0

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    aget-object v6, p0, v0

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    aget-object v7, p0, v0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    aget-object v8, p0, v0

    .line 25
    .line 26
    invoke-direct/range {v3 .. v8}, Lcom/nimbusds/jwt/EncryptedJWT;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 27
    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_0
    const-string p0, "Unexpected number of Base64URL parts, must be five"

    .line 31
    .line 32
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method


# virtual methods
.method public getJWTClaimsSet()Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/EncryptedJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObject;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/nimbusds/jose/Payload;->toJSONObject()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-static {v0}, Lcom/nimbusds/jwt/JWTClaimsSet;->parse(Ljava/util/Map;)Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/nimbusds/jwt/EncryptedJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    const-string p0, "Payload of JWE object is not a valid JSON object"

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {v0, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v1
.end method

.method public setPayload(Lcom/nimbusds/jose/Payload;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/nimbusds/jwt/EncryptedJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/nimbusds/jose/JOSEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
