.class public final Lcom/nimbusds/jose/JWEObjectJSON$Recipient;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWEObjectJSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Recipient"
.end annotation


# instance fields
.field private final encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

.field private final unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 7
    .line 8
    return-void
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/JWEObjectJSON$Recipient;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/JWEObjectJSON$Recipient;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "header"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/nimbusds/jose/UnprotectedHeader;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/UnprotectedHeader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "encrypted_key"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 18
    .line 19
    invoke-direct {v1, v0, p0}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;-><init>(Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method


# virtual methods
.method public getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUnprotectedHeader()Lcom/nimbusds/jose/UnprotectedHeader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 2
    .line 3
    return-object p0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 3
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
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/nimbusds/jose/UnprotectedHeader;->getIncludedParams()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/nimbusds/jose/UnprotectedHeader;->toJSONObject()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "header"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    const-string v1, "encrypted_key"

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object v0
.end method
