.class public final Lcom/microsoft/identity/common/components/AndroidStorageSupplier;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final storageEncryptionManager:Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;->context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;->storageEncryptionManager:Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getEncryptedNameValueStore(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;->context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;->storageEncryptionManager:Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;

    .line 4
    .line 5
    invoke-static {v0, p1, p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->access$getNameValueStore(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;)Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getUnencryptedNameValueStore(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry$Builder;->access$getNameValueStore(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/crypto/AndroidAuthSdkStorageEncryptionManager;)Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
