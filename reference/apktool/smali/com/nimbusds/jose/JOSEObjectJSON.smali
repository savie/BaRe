.class public abstract Lcom/nimbusds/jose/JOSEObjectJSON;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MIME_TYPE_JOSE_JSON:Ljava/lang/String; = "application/jose+json; charset=UTF-8"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private payload:Lcom/nimbusds/jose/Payload;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/Payload;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/JOSEObjectJSON;->payload:Lcom/nimbusds/jose/Payload;

    .line 5
    .line 6
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JOSEObjectJSON;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/JOSEObjectJSON;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/JOSEObjectJSON;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/JOSEObjectJSON;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/JOSEObjectJSON;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "signature"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-string v0, "signatures"

    .line 10
    .line 11
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "ciphertext"

    .line 19
    .line 20
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const-string p0, "JWE JSON not supported"

    .line 29
    .line 30
    invoke-static {v1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    const-string p0, "Invalid JOSE object"

    .line 35
    .line 36
    invoke-static {v1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/nimbusds/jose/JWSObjectJSON;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/JWSObjectJSON;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method


# virtual methods
.method public getPayload()Lcom/nimbusds/jose/Payload;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JOSEObjectJSON;->payload:Lcom/nimbusds/jose/Payload;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract serializeFlattened()Ljava/lang/String;
.end method

.method public abstract serializeGeneral()Ljava/lang/String;
.end method

.method public setPayload(Lcom/nimbusds/jose/Payload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JOSEObjectJSON;->payload:Lcom/nimbusds/jose/Payload;

    .line 2
    .line 3
    return-void
.end method

.method public abstract toFlattenedJSONObject()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toGeneralJSONObject()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
