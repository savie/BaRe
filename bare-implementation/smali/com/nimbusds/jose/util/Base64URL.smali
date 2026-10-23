.class public Lcom/nimbusds/jose/util/Base64URL;
.super Lcom/nimbusds/jose/util/Base64;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/util/Base64;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static encode(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 13
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/nimbusds/jose/util/BigIntegerUtils;->toBytesUnsigned(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Lcom/nimbusds/jose/util/Base64URL;
    .locals 2

    .line 1
    new-instance v0, Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->encodeToString([BZ)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/util/Base64URL;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method
