.class public final Lsp7;
.super Ljava/lang/ref/ReferenceQueue;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly16;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ly16;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsp7;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    iput-object p1, p0, Lsp7;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Thread;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    const-string p0, "weak-ref-cleaner-strictcontextstorage"

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Ln5;

    .line 2
    .line 3
    iget-object v1, p0, Lsp7;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p0, v1}, Ln5;-><init>(Lsp7;Ljava/util/Iterator;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final run()V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lsp7;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lrp7;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v1, v0, Lrp7;->d:Z

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    sget-object v1, Lup7;->b:Ljava/util/logging/Logger;

    .line 26
    .line 27
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 28
    .line 29
    const-string v3, "Scope garbage collected before being closed."

    .line 30
    .line 31
    invoke-static {v0}, Lup7;->b(Lrp7;)Ljava/lang/AssertionError;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsp7;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
