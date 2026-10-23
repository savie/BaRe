.class public Lcom/nimbusds/jose/JWEObject;
.super Lcom/nimbusds/jose/JOSEObject;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/JWEObject$State;
    }
.end annotation


# static fields
.field public static final MAX_COMPRESSED_CIPHER_TEXT_LENGTH:I = 0x186a0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private authTag:Lcom/nimbusds/jose/util/Base64URL;

.field private cipherText:Lcom/nimbusds/jose/util/Base64URL;

.field private encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

.field private header:Lcom/nimbusds/jose/JWEHeader;

.field private iv:Lcom/nimbusds/jose/util/Base64URL;

.field private state:Lcom/nimbusds/jose/JWEObject$State;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/Payload;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    .line 97
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->header:Lcom/nimbusds/jose/JWEHeader;

    .line 98
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/JOSEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 100
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 101
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->UNENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
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
    invoke-static {p1}, Lcom/nimbusds/jose/JWEHeader;->parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/nimbusds/jose/JWEObject;->header:Lcom/nimbusds/jose/JWEHeader;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput-object p2, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 31
    .line 32
    :goto_1
    if-eqz p3, :cond_3

    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iput-object p3, p0, Lcom/nimbusds/jose/JWEObject;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    :goto_2
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 49
    .line 50
    :goto_3
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iput-object p4, p0, Lcom/nimbusds/jose/JWEObject;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 54
    .line 55
    if-eqz p5, :cond_5

    .line 56
    .line 57
    invoke-virtual {p5}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    iput-object p5, p0, Lcom/nimbusds/jose/JWEObject;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_5
    :goto_4
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 72
    .line 73
    :goto_5
    sget-object v0, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    .line 76
    .line 77
    filled-new-array {p1, p2, p3, p4, p5}, [Lcom/nimbusds/jose/util/Base64URL;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/JOSEObject;->setParsedParts([Lcom/nimbusds/jose/util/Base64URL;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catch_0
    move-exception p0

    .line 86
    const-string p1, "Invalid JWE header: "

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0, p1}, Ll0;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0
.end method

.method private ensureEncryptedOrDecryptedState()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    .line 2
    .line 3
    sget-object v0, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/nimbusds/jose/JWEObject$State;->DECRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "The JWE object must be in an encrypted or decrypted state"

    .line 13
    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method private ensureEncryptedState()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    .line 2
    .line 3
    sget-object v0, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "The JWE object must be in an encrypted state"

    .line 9
    .line 10
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private ensureJWEEncrypterSupport(Lcom/nimbusds/jose/JWEEncrypter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEProvider;->supportedJWEAlgorithms()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

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
    const-string v1, "The "

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEProvider;->supportedEncryptionMethods()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEProvider;->supportedEncryptionMethods()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, " encryption method or key size is not supported by the JWE encrypter: Supported methods: "

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_1
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEProvider;->supportedJWEAlgorithms()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string p1, " algorithm is not supported by the JWE encrypter: Supported algorithms: "

    .line 101
    .line 102
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0
.end method

.method private ensureUnencryptedState()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    .line 2
    .line 3
    sget-object v0, Lcom/nimbusds/jose/JWEObject$State;->UNENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "The JWE object must be in an unencrypted state"

    .line 9
    .line 10
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWEObject;
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
    new-instance v3, Lcom/nimbusds/jose/JWEObject;

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
    invoke-direct/range {v3 .. v8}, Lcom/nimbusds/jose/JWEObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

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
.method public declared-synchronized decrypt(Lcom/nimbusds/jose/JWEDecrypter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObject;->ensureEncryptedState()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEHeader;->getCompressionAlgorithm()Lcom/nimbusds/jose/CompressionAlgorithm;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getCipherText()Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const v1, 0x186a0

    .line 28
    .line 29
    .line 30
    if-gt v0, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 34
    .line 35
    const-string v0, "The JWE compressed cipher text exceeds the maximum allowed length of 100000 characters"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    goto :goto_3

    .line 44
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Lcom/nimbusds/jose/Payload;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getIV()Lcom/nimbusds/jose/util/Base64URL;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getCipherText()Lcom/nimbusds/jose/util/Base64URL;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getAuthTag()Lcom/nimbusds/jose/util/Base64URL;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    move-object v1, p1

    .line 75
    invoke-interface/range {v1 .. v7}, Lcom/nimbusds/jose/JWEDecrypter;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/Payload;-><init>([B)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JOSEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V
    :try_end_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    :try_start_2
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->DECRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    move-object p1, v0

    .line 93
    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    move-object p1, v0

    .line 96
    goto :goto_2

    .line 97
    :goto_1
    :try_start_3
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :goto_2
    throw p1

    .line 108
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    throw p1
.end method

.method public declared-synchronized encrypt(Lcom/nimbusds/jose/JWEEncrypter;)V
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
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObject;->ensureUnencryptedState()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JWEObject;->ensureJWEEncrypterSupport(Lcom/nimbusds/jose/JWEEncrypter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObject;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/nimbusds/jose/Payload;->toBytes()[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {p1, v0, v1, v2}, Lcom/nimbusds/jose/JWEEncrypter;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->header:Lcom/nimbusds/jose/JWEHeader;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getInitializationVector()Lcom/nimbusds/jose/util/Base64URL;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getCipherText()Lcom/nimbusds/jose/util/Base64URL;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getAuthenticationTag()Lcom/nimbusds/jose/util/Base64URL;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 70
    .line 71
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :catch_1
    move-exception p1

    .line 80
    goto :goto_2

    .line 81
    :goto_1
    :try_start_3
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :goto_2
    throw p1

    .line 92
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    throw p1
.end method

.method public getAuthTag()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObject;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCipherText()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObject;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getHeader()Lcom/nimbusds/jose/Header;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getHeader()Lcom/nimbusds/jose/JWEHeader;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObject;->header:Lcom/nimbusds/jose/JWEHeader;

    return-object p0
.end method

.method public getIV()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObject;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getState()Lcom/nimbusds/jose/JWEObject$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    .line 2
    .line 3
    return-object p0
.end method

.method public serialize()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObject;->ensureEncryptedOrDecryptedState()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObject;->header:Lcom/nimbusds/jose/JWEHeader;

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
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    iget-object v2, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/nimbusds/jose/JWEObject;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/nimbusds/jose/JWEObject;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObject;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
