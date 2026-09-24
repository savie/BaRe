.class public final Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final fileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

.field private final getVersionCode:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field

.field private final supportedByContentProvider:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;->getStorageSupplier()Lcom/microsoft/identity/common/components/AndroidStorageSupplier;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const-string v0, "com.microsoft.common.ipc.content.provider.query.cache"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/components/AndroidStorageSupplier;->getUnencryptedNameValueStore(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader$1;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader$1;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader$2;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader$2;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;->getVersionCode:Lmt3;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;->supportedByContentProvider:Lmt3;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;->fileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final supportsContentProvider(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;->fileManager:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x3a

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;->getVersionCode:Lmt3;

    .line 20
    .line 21
    check-cast v2, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader$1;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader;->supportedByContentProvider:Lmt3;

    .line 50
    .line 51
    check-cast p0, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader$2;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/broker/ipc/ContentProviderStatusLoader$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {v0, p1, v1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    return p0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 77
    .line 78
    const-string v0, "ContentProviderStatusLoader:getResult"

    .line 79
    .line 80
    invoke-static {v0, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    return p0
.end method
