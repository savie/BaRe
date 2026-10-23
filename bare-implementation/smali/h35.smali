.class public final Lh35;
.super Ljava/util/concurrent/FutureTask;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Li35;


# direct methods
.method public constructor <init>(Li35;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh35;->a:Li35;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final done()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh35;->a:Li35;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lg35;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Li35;->c(Lg35;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p0

    .line 23
    :goto_0
    new-instance v1, Lg35;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lg35;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Li35;->c(Lg35;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
