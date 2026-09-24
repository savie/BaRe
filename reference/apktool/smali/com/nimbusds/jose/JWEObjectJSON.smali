.class public Lcom/nimbusds/jose/JWEObjectJSON;
.super Lcom/nimbusds/jose/JOSEObjectJSON;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/JWEObjectJSON$Recipient;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final aad:[B

.field private authTag:Lcom/nimbusds/jose/util/Base64URL;

.field private cipherText:Lcom/nimbusds/jose/util/Base64URL;

.field private final header:Lcom/nimbusds/jose/JWEHeader;

.field private iv:Lcom/nimbusds/jose/util/Base64URL;

.field private final recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/JWEObjectJSON$Recipient;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/nimbusds/jose/JWEObject$State;

.field private unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/Payload;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/nimbusds/jose/JWEObjectJSON;-><init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/UnprotectedHeader;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/UnprotectedHeader;[B)V
    .locals 1

    .line 94
    invoke-direct {p0, p2}, Lcom/nimbusds/jose/JOSEObjectJSON;-><init>(Lcom/nimbusds/jose/Payload;)V

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 96
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->header:Lcom/nimbusds/jose/JWEHeader;

    .line 97
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/JOSEObjectJSON;->setPayload(Lcom/nimbusds/jose/Payload;)V

    .line 98
    iput-object p3, p0, Lcom/nimbusds/jose/JWEObjectJSON;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 99
    iput-object p4, p0, Lcom/nimbusds/jose/JWEObjectJSON;->aad:[B

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 101
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->UNENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    iput-object p1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Lcom/nimbusds/jose/UnprotectedHeader;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWEHeader;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/JWEObjectJSON$Recipient;",
            ">;",
            "Lcom/nimbusds/jose/UnprotectedHeader;",
            "[B)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEObjectJSON;-><init>(Lcom/nimbusds/jose/Payload;)V

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->header:Lcom/nimbusds/jose/JWEHeader;

    .line 105
    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    iput-object p6, p0, Lcom/nimbusds/jose/JWEObjectJSON;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 107
    iput-object p7, p0, Lcom/nimbusds/jose/JWEObjectJSON;->aad:[B

    .line 108
    iput-object p3, p0, Lcom/nimbusds/jose/JWEObjectJSON;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 109
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/nimbusds/jose/JWEObjectJSON;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 110
    iput-object p4, p0, Lcom/nimbusds/jose/JWEObjectJSON;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 111
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    iput-object p1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWEObject;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/JOSEObject;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEObjectJSON;-><init>(Lcom/nimbusds/jose/Payload;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->header:Lcom/nimbusds/jose/JWEHeader;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->aad:[B

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getIV()Lcom/nimbusds/jose/util/Base64URL;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/nimbusds/jose/JWEObjectJSON;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getCipherText()Lcom/nimbusds/jose/util/Base64URL;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/nimbusds/jose/JWEObjectJSON;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getAuthTag()Lcom/nimbusds/jose/util/Base64URL;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Lcom/nimbusds/jose/JWEObjectJSON;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getState()Lcom/nimbusds/jose/JWEObject$State;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget-object v3, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 47
    .line 48
    if-ne v2, v3, :cond_0

    .line 49
    .line 50
    new-instance v2, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v2, v1, p1}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;-><init>(Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iput-object v3, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getState()Lcom/nimbusds/jose/JWEObject$State;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sget-object v3, Lcom/nimbusds/jose/JWEObject$State;->DECRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 70
    .line 71
    if-ne v2, v3, :cond_1

    .line 72
    .line 73
    new-instance v2, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v2, v1, p1}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;-><init>(Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iput-object v3, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;

    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->UNENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;

    .line 91
    .line 92
    return-void
.end method

.method private ensureEncryptedOrDecryptedState()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;

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
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;

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
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getHeader()Lcom/nimbusds/jose/JWEHeader;

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
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getHeader()Lcom/nimbusds/jose/JWEHeader;

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
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getHeader()Lcom/nimbusds/jose/JWEHeader;

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
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getHeader()Lcom/nimbusds/jose/JWEHeader;

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
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;

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

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWEObjectJSON;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 161
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/JWEObjectJSON;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/Map;)Lcom/nimbusds/jose/JWEObjectJSON;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/JWEObjectJSON;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "protected"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    new-instance v9, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/nimbusds/jose/JWEHeader;->parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string v0, "unprotected"

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObject(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/nimbusds/jose/UnprotectedHeader;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/UnprotectedHeader;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    const-string v0, "ciphertext"

    .line 35
    .line 36
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const-string v0, "iv"

    .line 41
    .line 42
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const-string v0, "tag"

    .line 47
    .line 48
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const-string v0, "aad"

    .line 53
    .line 54
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v5, v10}, Lcom/nimbusds/jose/Header;->join(Lcom/nimbusds/jose/UnprotectedHeader;)Lcom/nimbusds/jose/Header;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/nimbusds/jose/JWEHeader;

    .line 63
    .line 64
    const-string v4, "recipients"

    .line 65
    .line 66
    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-eqz v11, :cond_1

    .line 71
    .line 72
    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObjectArray(Ljava/util/Map;Ljava/lang/String;)[Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz p0, :cond_0

    .line 77
    .line 78
    array-length v4, p0

    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    array-length v4, p0

    .line 82
    move v11, v3

    .line 83
    :goto_0
    if-ge v11, v4, :cond_2

    .line 84
    .line 85
    aget-object v12, p0, v11

    .line 86
    .line 87
    invoke-static {v12}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    :try_start_0
    invoke-virtual {v12}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->getUnprotectedHeader()Lcom/nimbusds/jose/UnprotectedHeader;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    invoke-static {v1, v13}, Lcom/nimbusds/jose/HeaderValidation;->ensureDisjoint(Lcom/nimbusds/jose/Header;Lcom/nimbusds/jose/UnprotectedHeader;)V
    :try_end_0
    .catch Lcom/nimbusds/jose/IllegalHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    add-int/lit8 v11, v11, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    move-object p0, v0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v2

    .line 114
    :cond_0
    const-string p0, "The \"recipients\" member must be present in general JSON Serialization"

    .line 115
    .line 116
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v2

    .line 120
    :cond_1
    const-string v1, "encrypted_key"

    .line 121
    .line 122
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getBase64URL(Ljava/util/Map;Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    new-instance v1, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 127
    .line 128
    invoke-direct {v1, v2, p0}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;-><init>(Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    :cond_2
    new-instance v4, Lcom/nimbusds/jose/JWEObjectJSON;

    .line 135
    .line 136
    if-nez v0, :cond_3

    .line 137
    .line 138
    :goto_1
    move-object v11, v2

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    goto :goto_1

    .line 151
    :goto_2
    invoke-direct/range {v4 .. v11}, Lcom/nimbusds/jose/JWEObjectJSON;-><init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Lcom/nimbusds/jose/UnprotectedHeader;[B)V

    .line 152
    .line 153
    .line 154
    return-object v4

    .line 155
    :cond_4
    const-string p0, "The JWE protected header mast be present"

    .line 156
    .line 157
    invoke-static {v3, p0}, Ly5;->e(ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-object v2
.end method

.method private toBaseJSONObject()Ljava/util/Map;
    .locals 4
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
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->header:Lcom/nimbusds/jose/JWEHeader;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/nimbusds/jose/Header;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "protected"

    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->aad:[B

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v2, Ljava/lang/String;

    .line 25
    .line 26
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "aad"

    .line 32
    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "ciphertext"

    .line 43
    .line 44
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "iv"

    .line 54
    .line 55
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v1, "tag"

    .line 65
    .line 66
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object v0
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
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->ensureEncryptedState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    :try_start_1
    new-instance v0, Lcom/nimbusds/jose/Payload;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getIV()Lcom/nimbusds/jose/util/Base64URL;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getCipherText()Lcom/nimbusds/jose/util/Base64URL;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getAuthTag()Lcom/nimbusds/jose/util/Base64URL;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getAAD()[B

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    move-object v1, p1

    .line 32
    invoke-interface/range {v1 .. v7}, Lcom/nimbusds/jose/JWEDecrypter;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/Payload;-><init>([B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JOSEObjectJSON;->setPayload(Lcom/nimbusds/jose/Payload;)V
    :try_end_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->DECRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object p1, v0

    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    move-object p1, v0

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    move-object p1, v0

    .line 56
    goto :goto_1

    .line 57
    :goto_0
    :try_start_3
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :goto_1
    throw p1

    .line 68
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    throw p1
.end method

.method public declared-synchronized encrypt(Lcom/nimbusds/jose/JWEEncrypter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->ensureUnencryptedState()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JWEObjectJSON;->ensureJWEEncrypterSupport(Lcom/nimbusds/jose/JWEEncrypter;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getHeader()Lcom/nimbusds/jose/JWEHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/Header;->join(Lcom/nimbusds/jose/UnprotectedHeader;)Lcom/nimbusds/jose/Header;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/nimbusds/jose/JWEHeader;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/nimbusds/jose/JOSEObjectJSON;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/nimbusds/jose/Payload;->toBytes()[B

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->getAAD()[B

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {p1, v0, v1, v2}, Lcom/nimbusds/jose/JWEEncrypter;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 40
    .line 41
    .line 42
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->decodeToString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "recipients"

    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObjectArray(Ljava/util/Map;Ljava/lang/String;)[Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    array-length v3, v2

    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_0
    if-ge v4, v3, :cond_2

    .line 60
    .line 61
    aget-object v5, v2, v4

    .line 62
    .line 63
    iget-object v6, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 64
    .line 65
    invoke-static {v5}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_4

    .line 77
    :catch_0
    :try_start_4
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/nimbusds/jose/JWEHeader;->toJSONObject()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEHeader;->getIncludedParams()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_1

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_0

    .line 110
    .line 111
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 116
    .line 117
    new-instance v3, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 118
    .line 119
    invoke-static {v2}, Lcom/nimbusds/jose/UnprotectedHeader;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/UnprotectedHeader;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-direct {v3, v2, v1}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;-><init>(Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    .line 128
    .line 129
    :cond_2
    :try_start_6
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getInitializationVector()Lcom/nimbusds/jose/util/Base64URL;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getCipherText()Lcom/nimbusds/jose/util/Base64URL;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getAuthenticationTag()Lcom/nimbusds/jose/util/Base64URL;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 146
    .line 147
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 148
    .line 149
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 150
    .line 151
    monitor-exit p0

    .line 152
    return-void

    .line 153
    :catch_1
    move-exception p1

    .line 154
    :try_start_7
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :catch_2
    move-exception p1

    .line 165
    goto :goto_2

    .line 166
    :catch_3
    move-exception p1

    .line 167
    goto :goto_3

    .line 168
    :goto_2
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :goto_3
    throw p1

    .line 179
    :goto_4
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 180
    throw p1
.end method

.method public getAAD()[B
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->header:Lcom/nimbusds/jose/JWEHeader;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/nimbusds/jose/Header;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->aad:[B

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    array-length v1, v1

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    const-string v1, "."

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/String;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->aad:[B

    .line 31
    .line 32
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public getAuthTag()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCipherText()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    invoke-static {}, Lcom/nimbusds/jose/util/JSONArrayUtils;->newJSONArray()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->toJSONObject()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v1, "recipients"

    .line 69
    .line 70
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public getHeader()Lcom/nimbusds/jose/JWEHeader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->header:Lcom/nimbusds/jose/JWEHeader;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIV()Lcom/nimbusds/jose/util/Base64URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRecipients()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/JWEObjectJSON$Recipient;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getState()Lcom/nimbusds/jose/JWEObject$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->state:Lcom/nimbusds/jose/JWEObject$State;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUnprotectedHeader()Lcom/nimbusds/jose/UnprotectedHeader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 2
    .line 3
    return-object p0
.end method

.method public serializeFlattened()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->toFlattenedJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public serializeGeneral()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->toGeneralJSONObject()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public toFlattenedJSONObject()Ljava/util/Map;
    .locals 4
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
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->ensureEncryptedOrDecryptedState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_4

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->toBaseJSONObject()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->getUnprotectedHeader()Lcom/nimbusds/jose/UnprotectedHeader;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->getUnprotectedHeader()Lcom/nimbusds/jose/UnprotectedHeader;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/nimbusds/jose/UnprotectedHeader;->toJSONObject()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v2, p0, Lcom/nimbusds/jose/JWEObjectJSON;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/nimbusds/jose/UnprotectedHeader;->toJSONObject()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-lez v2, :cond_2

    .line 71
    .line 72
    const-string v2, "unprotected"

    .line 73
    .line 74
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v1, "encrypted_key"

    .line 108
    .line 109
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_3
    return-object v0

    .line 113
    :cond_4
    const-string p0, "The flattened JWE JSON serialization requires exactly one recipient"

    .line 114
    .line 115
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x0

    .line 119
    return-object p0
.end method

.method public toGeneralJSONObject()Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->ensureEncryptedOrDecryptedState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->getUnprotectedHeader()Lcom/nimbusds/jose/UnprotectedHeader;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObjectJSON;->toBaseJSONObject()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObjectJSON;->unprotectedHeader:Lcom/nimbusds/jose/UnprotectedHeader;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const-string v2, "unprotected"

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/nimbusds/jose/UnprotectedHeader;->toJSONObject()Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {}, Lcom/nimbusds/jose/util/JSONArrayUtils;->newJSONArray()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object p0, p0, Lcom/nimbusds/jose/JWEObjectJSON;->recipients:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->toJSONObject()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const-string p0, "recipients"

    .line 89
    .line 90
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_3
    const-string p0, "The general JWE JSON serialization requires at least one recipient"

    .line 95
    .line 96
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    return-object p0
.end method
