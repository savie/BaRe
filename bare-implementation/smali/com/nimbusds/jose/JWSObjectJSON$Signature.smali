.class public final Lcom/nimbusds/jose/JWSObjectJSON$Signature;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWSObjectJSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Signature"
.end annotation


# instance fields
.field private final header:Lcom/nimbusds/jose/JWSHeader;

.field private final payload:Lcom/nimbusds/jose/Payload;

.field private final signature:Lcom/nimbusds/jose/util/Base64URL;

.field private final unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

.field private final verified:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->verified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->payload:Lcom/nimbusds/jose/Payload;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->header:Lcom/nimbusds/jose/JWSHeader;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 20
    .line 21
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p4, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 25
    .line 26
    return-void
.end method

.method public synthetic constructor <init>(Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/JWSObjectJSON$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/JWSObjectJSON$Signature;-><init>(Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/nimbusds/jose/JWSObjectJSON$Signature;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->toJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private toJSONObject()Ljava/util/Map;
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
    iget-object v1, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->header:Lcom/nimbusds/jose/JWSHeader;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/nimbusds/jose/Header;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "protected"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/nimbusds/jose/UnprotectedHeader;->getIncludedParams()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/nimbusds/jose/UnprotectedHeader;->toJSONObject()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "header"

    .line 43
    .line 44
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v1, "signature"

    .line 54
    .line 55
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-object v0
.end method


# virtual methods
.method public getHeader()Lcom/nimbusds/jose/JWSHeader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->header:Lcom/nimbusds/jose/JWSHeader;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSignature()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUnprotectedHeader()Lcom/nimbusds/jose/UnprotectedHeader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 2
    .line 3
    return-object p0
.end method

.method public isVerified()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->verified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public toJWSObject()Lcom/nimbusds/jose/JWSObject;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/JWSObject;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->header:Lcom/nimbusds/jose/JWSHeader;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/nimbusds/jose/Header;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->payload:Lcom/nimbusds/jose/Payload;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/nimbusds/jose/Payload;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, p0}, Lcom/nimbusds/jose/JWSObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    invoke-static {}, Lg84;->c()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public declared-synchronized verify(Lcom/nimbusds/jose/JWSVerifier;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->verified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->toJWSObject()Lcom/nimbusds/jose/JWSObject;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Lcom/nimbusds/jose/JWSObject;->verify(Lcom/nimbusds/jose/JWSVerifier;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    iget-object p1, p0, Lcom/nimbusds/jose/JWSObjectJSON$Signature;->verified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit p0

    .line 22
    return p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    :try_start_2
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :goto_1
    throw p1

    .line 40
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p1
.end method
