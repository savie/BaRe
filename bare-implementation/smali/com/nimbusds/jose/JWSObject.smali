.class public Lcom/nimbusds/jose/JWSObject;
.super Lcom/nimbusds/jose/JOSEObject;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/JWSObject$State;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final header:Lcom/nimbusds/jose/JWSHeader;

.field private signature:Lcom/nimbusds/jose/util/Base64URL;

.field private final signingInputString:Ljava/lang/String;

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/nimbusds/jose/JWSObject$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/Payload;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/JWSObject;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->header:Lcom/nimbusds/jose/JWSHeader;

    .line 110
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/JOSEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    .line 111
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObject;->composeSigningInput()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->signingInputString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 113
    sget-object p0, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 3
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
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nimbusds/jose/JWSObject;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {p1}, Lcom/nimbusds/jose/JWSHeader;->parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, p0, Lcom/nimbusds/jose/JWSObject;->header:Lcom/nimbusds/jose/JWSHeader;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/JOSEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObject;->composeSigningInput()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/nimbusds/jose/JWSObject;->signingInputString:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    iput-object p3, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 45
    .line 46
    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->SIGNED:Lcom/nimbusds/jose/JWSObject$State;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSHeader;->isBase64URLEncodePayload()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/nimbusds/jose/Payload;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    filled-new-array {p1, p2, p3}, [Lcom/nimbusds/jose/util/Base64URL;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/JOSEObject;->setParsedParts([Lcom/nimbusds/jose/util/Base64URL;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    new-instance p2, Lcom/nimbusds/jose/util/Base64URL;

    .line 74
    .line 75
    const-string v0, ""

    .line 76
    .line 77
    invoke-direct {p2, v0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    filled-new-array {p1, p2, p3}, [Lcom/nimbusds/jose/util/Base64URL;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/JOSEObject;->setParsedParts([Lcom/nimbusds/jose/util/Base64URL;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    const-string p0, "The signature must not be empty"

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    invoke-static {p1, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v1

    .line 95
    :catch_0
    move-exception p0

    .line 96
    const-string p1, "Invalid JWS header: "

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0, p1}, Ll0;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/nimbusds/jose/Payload;

    invoke-direct {v0, p2}, Lcom/nimbusds/jose/Payload;-><init>(Lcom/nimbusds/jose/util/Base64URL;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/nimbusds/jose/JWSObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/nimbusds/jose/JWSObject;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/nimbusds/jose/JWSObject;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/nimbusds/jose/JWSObject;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    return-object p0
.end method

.method private composeSigningInput()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->header:Lcom/nimbusds/jose/JWSHeader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSHeader;->isBase64URLEncodePayload()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x2e

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/nimbusds/jose/Header;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObject;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/nimbusds/jose/Header;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObject;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method

.method private ensureJWSSignerSupport(Lcom/nimbusds/jose/JWSSigner;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/nimbusds/jose/JWSProvider;->supportedJWSAlgorithms()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "The "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Lcom/nimbusds/jose/JWSProvider;->supportedJWSAlgorithms()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, " algorithm is not allowed or supported by the JWS signer: Supported algorithms: "

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method private ensureSignedOrVerifiedState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->SIGNED:Lcom/nimbusds/jose/JWSObject$State;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lcom/nimbusds/jose/JWSObject$State;->VERIFIED:Lcom/nimbusds/jose/JWSObject$State;

    .line 18
    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "The JWS object must be in a signed or verified state"

    .line 23
    .line 24
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private ensureUnsignedState()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string p0, "The JWS object must be in an unsigned state"

    .line 13
    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lcom/nimbusds/jose/JOSEObject;->split(Ljava/lang/String;)[Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    .line 48
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Lcom/nimbusds/jose/JWSObject;

    aget-object v1, p0, v2

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-direct {v0, v1, v2, p0}, Lcom/nimbusds/jose/JWSObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-object v0

    .line 50
    :cond_0
    const-string p0, "Unexpected number of Base64URL parts, must be three"

    invoke-static {v2, p0}, Ly5;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/nimbusds/jose/Payload;)Lcom/nimbusds/jose/JWSObject;
    .locals 4
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
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aget-object v0, p0, v0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/nimbusds/jose/JWSObject;

    .line 25
    .line 26
    aget-object v1, p0, v3

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    aget-object p0, p0, v2

    .line 30
    .line 31
    invoke-direct {v0, v1, p1, p0}, Lcom/nimbusds/jose/JWSObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    const-string p0, "The payload Base64URL part must be empty"

    .line 36
    .line 37
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_1
    const-string p0, "Unexpected number of Base64URL parts, must be three"

    .line 42
    .line 43
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2
.end method


# virtual methods
.method public bridge synthetic getHeader()Lcom/nimbusds/jose/Header;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getHeader()Lcom/nimbusds/jose/JWSHeader;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject;->header:Lcom/nimbusds/jose/JWSHeader;

    return-object p0
.end method

.method public getSignature()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSigningInput()[B
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject;->signingInputString:Ljava/lang/String;

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
.end method

.method public getState()Lcom/nimbusds/jose/JWSObject$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/nimbusds/jose/JWSObject$State;

    .line 8
    .line 9
    return-object p0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSObject;->serialize(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObject;->ensureSignedOrVerifiedState()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->header:Lcom/nimbusds/jose/JWSHeader;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/nimbusds/jose/Header;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ".."

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->signingInputString:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v0, 0x2e

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public declared-synchronized sign(Lcom/nimbusds/jose/JWSSigner;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObject;->ensureUnsignedState()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JWSObject;->ensureJWSSignerSupport(Lcom/nimbusds/jose/JWSSigner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getSigningInput()[B

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v0, v1}, Lcom/nimbusds/jose/JWSSigner;->sign(Lcom/nimbusds/jose/JWSHeader;[B)Lcom/nimbusds/jose/util/Base64URL;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;
    :try_end_1
    .catch Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    :try_start_2
    iget-object p1, p0, Lcom/nimbusds/jose/JWSObject;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    sget-object v0, Lcom/nimbusds/jose/JWSObject$State;->SIGNED:Lcom/nimbusds/jose/JWSObject$State;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :catch_2
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :goto_0
    :try_start_3
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :goto_1
    throw p1

    .line 50
    :goto_2
    new-instance v0, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->getTriggeringOption()Lcom/nimbusds/jose/JWSSignerOption;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Lcom/nimbusds/jose/JWSObject$1;

    .line 61
    .line 62
    invoke-direct {v3, p0, p1}, Lcom/nimbusds/jose/JWSObject$1;-><init>(Lcom/nimbusds/jose/JWSObject;Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/JWSSignerOption;Lcom/nimbusds/jose/CompletableJWSObjectSigning;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    throw p1
.end method

.method public declared-synchronized verify(Lcom/nimbusds/jose/JWSVerifier;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObject;->ensureSignedOrVerifiedState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    :try_start_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getSigningInput()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getSignature()Lcom/nimbusds/jose/util/Base64URL;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {p1, v0, v1, v2}, Lcom/nimbusds/jose/JWSVerifier;->verify(Lcom/nimbusds/jose/JWSHeader;[BLcom/nimbusds/jose/util/Base64URL;)Z

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    :try_start_2
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->VERIFIED:Lcom/nimbusds/jose/JWSObject$State;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :cond_0
    :goto_0
    monitor-exit p0

    .line 34
    return p1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    :try_start_3
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :goto_2
    throw p1

    .line 50
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    throw p1
.end method
