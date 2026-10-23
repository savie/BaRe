.class public Lcom/nimbusds/jose/jwk/ThumbprintURI;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# static fields
.field public static final PREFIX:Ljava/lang/String; = "urn:ietf:params:oauth:jwk-thumbprint:"


# instance fields
.field private final hashAlg:Ljava/lang/String;

.field private final thumbprint:Lcom/nimbusds/jose/util/Base64URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

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
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/ThumbprintURI;->hashAlg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/ThumbprintURI;->thumbprint:Lcom/nimbusds/jose/util/Base64URL;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "The thumbprint must not be empty"

    .line 27
    .line 28
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    const-string p0, "The hash algorithm must not be empty"

    .line 33
    .line 34
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method public static compute(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/jwk/ThumbprintURI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/ThumbprintURI;

    .line 2
    .line 3
    const-string v1, "sha-256"

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->computeThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/jwk/ThumbprintURI;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/ThumbprintURI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 85
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/ThumbprintURI;->parse(Ljava/net/URI;)Lcom/nimbusds/jose/jwk/ThumbprintURI;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ly5;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/net/URI;)Lcom/nimbusds/jose/jwk/ThumbprintURI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "urn:ietf:params:oauth:jwk-thumbprint:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    const/16 v0, 0x25

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    const-string v0, ":"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    array-length v0, p0

    .line 34
    const/4 v3, 0x2

    .line 35
    if-ne v0, v3, :cond_1

    .line 36
    .line 37
    aget-object v0, p0, v2

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    new-instance v0, Lcom/nimbusds/jose/jwk/ThumbprintURI;

    .line 46
    .line 47
    aget-object v1, p0, v2

    .line 48
    .line 49
    new-instance v2, Lcom/nimbusds/jose/util/Base64URL;

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    aget-object p0, p0, v3

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/jwk/ThumbprintURI;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_0
    const-string p0, "Illegal JWK thumbprint: The hash algorithm must not be empty"

    .line 62
    .line 63
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_1
    const-string p0, "Illegal JWK thumbprint: Unexpected number of components"

    .line 68
    .line 69
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_2
    const-string p0, "Illegal JWK thumbprint: Missing value"

    .line 74
    .line 75
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_3
    const-string p0, "Illegal JWK thumbprint prefix"

    .line 80
    .line 81
    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/nimbusds/jose/jwk/ThumbprintURI;

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
    check-cast p1, Lcom/nimbusds/jose/jwk/ThumbprintURI;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/ThumbprintURI;->hashAlg:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/nimbusds/jose/jwk/ThumbprintURI;->hashAlg:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/ThumbprintURI;->getThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/ThumbprintURI;->getThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/util/Base64URL;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    return v2
.end method

.method public getAlgorithmString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/ThumbprintURI;->hashAlg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getThumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/ThumbprintURI;->thumbprint:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/ThumbprintURI;->hashAlg:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/ThumbprintURI;->getThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "urn:ietf:params:oauth:jwk-thumbprint:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/ThumbprintURI;->hashAlg:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/ThumbprintURI;->thumbprint:Lcom/nimbusds/jose/util/Base64URL;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public toURI()Ljava/net/URI;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/ThumbprintURI;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
