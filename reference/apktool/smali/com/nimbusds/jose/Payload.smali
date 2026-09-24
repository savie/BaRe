.class public final Lcom/nimbusds/jose/Payload;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/Payload$Origin;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final base64URL:Lcom/nimbusds/jose/util/Base64URL;

.field private final bytes:[B

.field private final jsonObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final jwsObject:Lcom/nimbusds/jose/JWSObject;

.field private final origin:Lcom/nimbusds/jose/Payload$Origin;

.field private final signedJWT:Lcom/nimbusds/jwt/SignedJWT;

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSObject;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getState()Lcom/nimbusds/jose/JWSObject$State;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 62
    iput-object v2, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 63
    iput-object v2, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 65
    iput-object v2, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 66
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 67
    iput-object v2, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 68
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->JWS_OBJECT:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 69
    :cond_0
    const-string p0, "The JWS object must be signed"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 54
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 56
    const-string v1, "The Base64URL-encoded object must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 57
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 58
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 59
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->BASE64URL:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jwt/SignedJWT;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getState()Lcom/nimbusds/jose/JWSObject$State;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 72
    iput-object v2, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 73
    iput-object v2, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 75
    iput-object v2, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 76
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 77
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 78
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->SIGNED_JWT:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 79
    :cond_0
    const-string p0, "The JWT must be signed"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 38
    const-string v1, "The string must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 40
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 41
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 42
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 43
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->STRING:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 9
    .line 10
    const-string v1, "The JSON object must not be null"

    .line 11
    .line 12
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 24
    .line 25
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 30
    .line 31
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->JSON:Lcom/nimbusds/jose/Payload$Origin;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 46
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 47
    const-string v1, "The byte array must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 48
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 49
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 50
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 51
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->BYTE_ARRAY:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method


# virtual methods
.method public getOrigin()Lcom/nimbusds/jose/Payload$Origin;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    .line 2
    .line 3
    return-object p0
.end method

.method public toBase64URL()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toBytes()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public toBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/nimbusds/jose/Payload;->stringToByteArray(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    return-object v0
.end method

.method public toJWSObject()Lcom/nimbusds/jose/JWSObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/nimbusds/jose/JWSObject;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSObject;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public toSignedJWT()Lcom/nimbusds/jwt/SignedJWT;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/nimbusds/jwt/SignedJWT;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/SignedJWT;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/nimbusds/jose/JOSEObject;->getParsedString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObject;->getParsedString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->serialize()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-static {v0}, Lcom/nimbusds/jose/Payload;->byteArrayToString([B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_4
    iget-object p0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 47
    .line 48
    if-eqz p0, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decodeToString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_5
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public toType(Lcom/nimbusds/jose/PayloadTransformer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/PayloadTransformer<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/nimbusds/jose/PayloadTransformer;->transform(Lcom/nimbusds/jose/Payload;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
