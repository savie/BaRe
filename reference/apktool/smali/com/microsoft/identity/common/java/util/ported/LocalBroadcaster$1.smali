.class final Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$propertyBag:Lcom/microsoft/identity/common/java/util/ported/PropertyBag;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->this$0:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->val$alias:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->val$propertyBag:Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->this$0:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->mReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->val$alias:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;

    .line 12
    .line 13
    const-string v2, ":broadcast"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->access$000()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "broadcasting to alias: "

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->val$propertyBag:Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    .line 46
    .line 47
    invoke-interface {v0, p0}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;->onReceive(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->access$000()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "No callback is registered with alias: "

    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ". Do nothing."

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
