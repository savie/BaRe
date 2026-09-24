.class public final enum Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

.field public static final enum INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

.field private static final TAG:Ljava/lang/String;

.field private static final sBroadcastExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final mReceivers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 7
    .line 8
    filled-new-array {v0}, [Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->$VALUES:[Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 13
    .line 14
    const-string v0, "LocalBroadcaster"

    .line 15
    .line 16
    sput-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->sBroadcastExecutor:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "INSTANCE"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->mReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->$VALUES:[Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final broadcast(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;-><init>(Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->sBroadcastExecutor:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final hasReceivers(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->mReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final registerCallback(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;)V
    .locals 5

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->mReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, ":registerCallback"

    .line 10
    .line 11
    sget-object v2, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v2, v1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "The alias: "

    .line 22
    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, " has already been registered. It will be overwritten"

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v0, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {v2, v1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "Registering alias: "

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    const-string p0, "callback is marked non-null but is null"

    .line 59
    .line 60
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final unregisterCallback(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, ":unregisterCallback"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "Removing alias: "

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->mReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method
