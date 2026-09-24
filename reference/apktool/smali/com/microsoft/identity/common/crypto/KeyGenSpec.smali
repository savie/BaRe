.class public final Lcom/microsoft/identity/common/crypto/KeyGenSpec;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/crypto/IKeyGenSpec;


# instance fields
.field private final algorithmParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field private final description:Ljava/lang/String;

.field private final digestAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final encryptionPaddings:Ljava/util/ArrayList;

.field private final purposes:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->purposes:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->digestAlgorithms:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->description:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->encryptionPaddings:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance p3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 13
    .line 14
    const-string v0, "AdalKey"

    .line 15
    .line 16
    invoke-direct {p3, v0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x800

    .line 20
    .line 21
    invoke-virtual {p3, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p3, 0x0

    .line 26
    new-array v0, p3, [Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, [Ljava/lang/String;

    .line 33
    .line 34
    array-length v0, p2

    .line 35
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-array p2, p3, [Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, [Ljava/lang/String;

    .line 52
    .line 53
    array-length p3, p2

    .line 54
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, [Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->algorithmParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 72
    .line 73
    return-void
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
    instance-of v0, p1, Lcom/microsoft/identity/common/crypto/KeyGenSpec;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/crypto/KeyGenSpec;

    .line 10
    .line 11
    iget v0, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->purposes:I

    .line 12
    .line 13
    iget v1, p1, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->purposes:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->digestAlgorithms:Ljava/util/List;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->digestAlgorithms:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->description:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p1, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->description:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->encryptionPaddings:Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->encryptionPaddings:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_5

    .line 49
    .line 50
    :goto_0
    const/4 p0, 0x0

    .line 51
    return p0

    .line 52
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 53
    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "RSA"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->algorithmParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEncryptionPaddings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->encryptionPaddings:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->purposes:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->digestAlgorithms:Ljava/util/List;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    const v0, 0x1ea2cfd1

    .line 19
    .line 20
    .line 21
    add-int/2addr v2, v0

    .line 22
    mul-int/2addr v2, v1

    .line 23
    const/16 v0, 0x800

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Leq3;->d(III)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v2, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->description:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/2addr v2, v0

    .line 36
    mul-int/2addr v2, v1

    .line 37
    const v0, 0x13e20

    .line 38
    .line 39
    .line 40
    add-int/2addr v2, v0

    .line 41
    mul-int/2addr v2, v1

    .line 42
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/KeyGenSpec;->encryptionPaddings:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    add-int/2addr p0, v2

    .line 49
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/java/logging/LibraryInfoHelper;->print(Lcom/microsoft/identity/common/crypto/IKeyGenSpec;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
