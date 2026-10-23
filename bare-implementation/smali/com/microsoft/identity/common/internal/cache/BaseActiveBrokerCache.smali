.class public abstract Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final lock:Lmj5;

.field private final storage:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;Lmj5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->storage:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->lock:Lmj5;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$getLock$p(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;)Lkj5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->lock:Lmj5;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getStorage$p(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->storage:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final clearCachedActiveBroker()V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$clearCachedActiveBroker$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$clearCachedActiveBroker$1;-><init>(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;Ljv1;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ll73;->A(Lqt3;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getCachedActiveBroker()Lcom/microsoft/identity/common/internal/broker/BrokerData;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$getCachedActiveBroker$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$getCachedActiveBroker$1;-><init>(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;Ljv1;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Llv2;->a:Llv2;

    .line 8
    .line 9
    invoke-static {p0, v0}, Ll73;->B(Lox1;Lqt3;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    .line 14
    .line 15
    return-object p0
.end method

.method public final setCachedActiveBroker(Lcom/microsoft/identity/common/internal/broker/BrokerData;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setCachedActiveBroker$1;-><init>(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;Lcom/microsoft/identity/common/internal/broker/BrokerData;Ljv1;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ll73;->A(Lqt3;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setCachedActiveBrokerWithoutLock(Lcom/microsoft/identity/common/internal/broker/BrokerData;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "ACTIVE_BROKER_CACHE_PACKAGE_NAME_KEY"

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;->storage:Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;

    .line 11
    .line 12
    invoke-interface {p0, v1, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "ACTIVE_BROKER_CACHE_SIGHASH_KEY"

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerData;->getSigningCertificateThumbprint()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p0, p1, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "SHOULD_USE_ACCOUNT_MANAGER_UNTIL_EPOCH_MILLISECONDS_KEY"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->remove(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setShouldUseAccountManagerForTheNextMilliseconds()V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setShouldUseAccountManagerForTheNextMilliseconds$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$setShouldUseAccountManagerForTheNextMilliseconds$1;-><init>(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;Ljv1;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ll73;->A(Lqt3;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final shouldUseAccountManager()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache$shouldUseAccountManager$1;-><init>(Lcom/microsoft/identity/common/internal/cache/BaseActiveBrokerCache;Ljv1;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Llv2;->a:Llv2;

    .line 8
    .line 9
    invoke-static {p0, v0}, Ll73;->B(Lox1;Lqt3;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method
