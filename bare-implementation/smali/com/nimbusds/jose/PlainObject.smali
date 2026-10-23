.class public Lcom/nimbusds/jose/PlainObject;
.super Lcom/nimbusds/jose/JOSEObject;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final header:Lcom/nimbusds/jose/PlainHeader;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/Payload;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/JOSEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    .line 49
    new-instance p1, Lcom/nimbusds/jose/PlainHeader;

    invoke-direct {p1}, Lcom/nimbusds/jose/PlainHeader;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/PlainObject;->header:Lcom/nimbusds/jose/PlainHeader;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/PlainHeader;Lcom/nimbusds/jose/Payload;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/PlainObject;->header:Lcom/nimbusds/jose/PlainHeader;

    .line 46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/JOSEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/nimbusds/jose/PlainHeader;->parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/PlainHeader;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/nimbusds/jose/PlainObject;->header:Lcom/nimbusds/jose/PlainHeader;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    new-instance v1, Lcom/nimbusds/jose/Payload;

    .line 15
    .line 16
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p2}, Lcom/nimbusds/jose/Payload;-><init>(Lcom/nimbusds/jose/util/Base64URL;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/JOSEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    .line 23
    .line 24
    .line 25
    filled-new-array {p1, p2, v0}, [Lcom/nimbusds/jose/util/Base64URL;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/JOSEObject;->setParsedParts([Lcom/nimbusds/jose/util/Base64URL;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "Invalid unsecured header: "

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0, p1}, Ll0;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/PlainObject;
    .locals 3
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
    const/4 v0, 0x2

    .line 6
    aget-object v0, p0, v0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/nimbusds/jose/PlainObject;

    .line 20
    .line 21
    aget-object v1, p0, v1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aget-object p0, p0, v2

    .line 25
    .line 26
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/PlainObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    const-string p0, "Unexpected third Base64URL part"

    .line 31
    .line 32
    invoke-static {v1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method


# virtual methods
.method public bridge synthetic getHeader()Lcom/nimbusds/jose/Header;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/PlainObject;->getHeader()Lcom/nimbusds/jose/PlainHeader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getHeader()Lcom/nimbusds/jose/PlainHeader;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/nimbusds/jose/PlainObject;->header:Lcom/nimbusds/jose/PlainHeader;

    return-object p0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/nimbusds/jose/PlainObject;->header:Lcom/nimbusds/jose/PlainHeader;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/nimbusds/jose/Header;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x2e

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObject;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
