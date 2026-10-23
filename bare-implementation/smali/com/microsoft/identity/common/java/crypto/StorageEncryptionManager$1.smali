.class final Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/crypto/IVGenerator;


# instance fields
.field final mRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/security/SecureRandom;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;->mRandom:Ljava/security/SecureRandom;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final generate()[B
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;->mRandom:Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
