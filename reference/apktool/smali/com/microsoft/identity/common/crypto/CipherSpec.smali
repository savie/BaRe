.class public final Lcom/microsoft/identity/common/crypto/CipherSpec;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final oaepCipherSpec:Lcom/microsoft/identity/common/crypto/CipherSpec;

.field private static final pkcs1CipherSpec:Lcom/microsoft/identity/common/crypto/CipherSpec;


# instance fields
.field private final algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mode:Ljava/lang/String;

.field private final padding:Ljava/lang/String;

.field private final transformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 2
    .line 3
    sget-object v1, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    .line 4
    .line 5
    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    .line 6
    .line 7
    const-string v3, "SHA-256"

    .line 8
    .line 9
    const-string v4, "MGF1"

    .line 10
    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 15
    .line 16
    const-string v2, "ECB"

    .line 17
    .line 18
    const-string v3, "PKCS1Padding"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-direct {v1, v4, v2, v3}, Lcom/microsoft/identity/common/crypto/CipherSpec;-><init>(Ljavax/crypto/spec/OAEPParameterSpec;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/microsoft/identity/common/crypto/CipherSpec;->pkcs1CipherSpec:Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 25
    .line 26
    new-instance v1, Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 27
    .line 28
    const-string v2, "NONE"

    .line 29
    .line 30
    const-string v3, "OAEPwithSHA-256andMGF1Padding"

    .line 31
    .line 32
    invoke-direct {v1, v0, v2, v3}, Lcom/microsoft/identity/common/crypto/CipherSpec;-><init>(Ljavax/crypto/spec/OAEPParameterSpec;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/microsoft/identity/common/crypto/CipherSpec;->oaepCipherSpec:Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/OAEPParameterSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->mode:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->padding:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "RSA/"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 p2, 0x2f

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->transformation:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method

.method public static final synthetic access$getOaepCipherSpec$cp()Lcom/microsoft/identity/common/crypto/CipherSpec;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/crypto/CipherSpec;->oaepCipherSpec:Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPkcs1CipherSpec$cp()Lcom/microsoft/identity/common/crypto/CipherSpec;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/crypto/CipherSpec;->pkcs1CipherSpec:Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/crypto/CipherSpec;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/microsoft/identity/common/crypto/CipherSpec;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->mode:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/microsoft/identity/common/crypto/CipherSpec;->mode:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->padding:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/microsoft/identity/common/crypto/CipherSpec;->padding:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_4

    .line 42
    .line 43
    :goto_0
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method public final getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPadding()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->padding:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTransformation()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->transformation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    const/16 v1, 0x1f

    .line 12
    .line 13
    mul-int/2addr v0, v1

    .line 14
    const v2, 0x13e20

    .line 15
    .line 16
    .line 17
    add-int/2addr v0, v2

    .line 18
    mul-int/2addr v0, v1

    .line 19
    iget-object v2, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->mode:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->padding:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    add-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CipherSpec(transformation=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/CipherSpec;->transformation:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "\')"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
