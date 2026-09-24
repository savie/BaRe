.class public final Lcom/nimbusds/jose/crypto/impl/CompositeKey;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# instance fields
.field private final encKey:Ljavax/crypto/SecretKey;

.field private final inputKey:Ljavax/crypto/SecretKey;

.field private final macKey:Ljavax/crypto/SecretKey;

.field private final truncatedMacLength:I


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->inputKey:Ljavax/crypto/SecretKey;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    array-length v0, p1

    .line 11
    const-string v1, "AES"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/16 v3, 0x20

    .line 15
    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 19
    .line 20
    const-string v3, "HMACSHA256"

    .line 21
    .line 22
    const/16 v4, 0x10

    .line 23
    .line 24
    invoke-direct {v0, p1, v2, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->macKey:Ljavax/crypto/SecretKey;

    .line 28
    .line 29
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 30
    .line 31
    invoke-direct {v0, p1, v4, v4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->encKey:Ljavax/crypto/SecretKey;

    .line 35
    .line 36
    iput v4, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->truncatedMacLength:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    array-length v0, p1

    .line 40
    const/16 v4, 0x30

    .line 41
    .line 42
    if-ne v0, v4, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 45
    .line 46
    const-string v3, "HMACSHA384"

    .line 47
    .line 48
    const/16 v4, 0x18

    .line 49
    .line 50
    invoke-direct {v0, p1, v2, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->macKey:Ljavax/crypto/SecretKey;

    .line 54
    .line 55
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 56
    .line 57
    invoke-direct {v0, p1, v4, v4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->encKey:Ljavax/crypto/SecretKey;

    .line 61
    .line 62
    iput v4, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->truncatedMacLength:I

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    array-length v0, p1

    .line 66
    const/16 v4, 0x40

    .line 67
    .line 68
    if-ne v0, v4, :cond_2

    .line 69
    .line 70
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 71
    .line 72
    const-string v4, "HMACSHA512"

    .line 73
    .line 74
    invoke-direct {v0, p1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->macKey:Ljavax/crypto/SecretKey;

    .line 78
    .line 79
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 80
    .line 81
    invoke-direct {v0, p1, v3, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->encKey:Ljavax/crypto/SecretKey;

    .line 85
    .line 86
    iput v3, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->truncatedMacLength:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/KeyLengthException;

    .line 90
    .line 91
    const-string p1, "Unsupported AES/CBC/PKCS5Padding/HMAC-SHA2 key length, must be 256, 384 or 512 bits"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method


# virtual methods
.method public getAESKey()Ljavax/crypto/SecretKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->encKey:Ljavax/crypto/SecretKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInputKey()Ljavax/crypto/SecretKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->inputKey:Ljavax/crypto/SecretKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMACKey()Ljavax/crypto/SecretKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->macKey:Ljavax/crypto/SecretKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTruncatedMACByteLength()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/crypto/impl/CompositeKey;->truncatedMacLength:I

    .line 2
    .line 3
    return p0
.end method
