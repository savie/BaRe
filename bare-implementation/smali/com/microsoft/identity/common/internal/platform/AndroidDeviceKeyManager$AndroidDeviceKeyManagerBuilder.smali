.class public final Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/security/KeyStore$Entry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private keyAlias:Ljava/lang/String;

.field private keyStore:Ljava/security/KeyStore;


# virtual methods
.method public final build()Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager<",
            "TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->keyStore:Ljava/security/KeyStore;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->keyAlias:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/java/platform/AbstractKeyStoreKeyManager;-><init>(Ljava/lang/String;Ljava/security/KeyStore;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final keyAlias(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->keyAlias:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "keyAlias is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final keyStore(Ljava/security/KeyStore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->keyStore:Ljava/security/KeyStore;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AndroidDeviceKeyManager.AndroidDeviceKeyManagerBuilder(keyStore="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->keyStore:Ljava/security/KeyStore;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", keyAlias="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/platform/AndroidDeviceKeyManager$AndroidDeviceKeyManagerBuilder;->keyAlias:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, ")"

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
