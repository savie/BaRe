.class public final Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;
.super Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mKeyStoreKeyProvider:Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;

.field private final mPredefinedKeyProvider:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    sget-object v1, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getSecretKeyData()[B

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mPredefinedKeyProvider:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyProvider;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyProvider;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getSecretKeyData()[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyProvider;-><init>([B)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mPredefinedKeyProvider:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyProvider;

    .line 28
    .line 29
    :goto_0
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_KEYSTORE_BACKED_SECRET_KEY_PROVIDER:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    new-instance v0, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/crypto/KeyStoreBackedSecretKeyProvider;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyProvider;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    iput-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mKeyStoreKeyProvider:Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string p0, "context is marked non-null but is null"

    .line 56
    .line 57
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method


# virtual methods
.method public final getKeyProviderForDecryption([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;->getKeyIdentifierFromCipherText([B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "U001"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mPredefinedKeyProvider:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyProvider;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "decryption_failed"

    .line 23
    .line 24
    const-string p1, "Cipher Text is encrypted by USER_PROVIDED_KEY_IDENTIFIER, but mPredefinedKeyProvider is null."

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p0, p1, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mKeyStoreKeyProvider:Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;

    .line 32
    .line 33
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;->getKeyTypeIdentifier()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    const-string p0, "Cannot find a matching key to decrypt the given blob. Key Identifier = "

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 55
    .line 56
    const-string p1, "AndroidAuthSdkStorageEncryptionManager:getKeyProviderForDecryption"

    .line 57
    .line 58
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 62
    .line 63
    return-object p0
.end method

.method public final getKeyProviderForEncryption()Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mPredefinedKeyProvider:Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;->mKeyStoreKeyProvider:Lcom/microsoft/identity/common/java/crypto/key/ISecretKeyProvider;

    .line 7
    .line 8
    return-object p0
.end method
