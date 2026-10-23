.class public final synthetic Lvy1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lzy1;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lzy1;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvy1;->a:Lzy1;

    .line 5
    .line 6
    iput-object p2, p0, Lvy1;->b:Ljava/lang/Throwable;

    .line 7
    .line 8
    iput-object p3, p0, Lvy1;->c:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lvy1;->a:Lzy1;

    .line 2
    .line 3
    iget-object v0, v0, Lzy1;->h:Lsy1;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-object v4, v0, Lsy1;->n:Lm02;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    iget-object v4, v4, Lm02;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-wide/16 v4, 0x3e8

    .line 30
    .line 31
    div-long/2addr v1, v4

    .line 32
    invoke-virtual {v0}, Lsy1;->f()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "FirebaseCrashlytics"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    const-string p0, "Tried to write a non-fatal exception while no session was open."

    .line 42
    .line 43
    invoke-static {v5, p0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    move-object v7, v5

    .line 48
    new-instance v5, Laz2;

    .line 49
    .line 50
    iget-object v8, p0, Lvy1;->c:Ljava/util/Map;

    .line 51
    .line 52
    invoke-direct {v5, v4, v1, v2, v8}, Laz2;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lsy1;->m:Lca3;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string v0, "Persisting non-fatal event for session "

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v2, 0x2

    .line 67
    invoke-static {v7, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-static {v7, v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    const-string v4, "error"

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    iget-object v2, p0, Lvy1;->b:Ljava/lang/Throwable;

    .line 80
    .line 81
    invoke-virtual/range {v1 .. v6}, Lca3;->i(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Laz2;Z)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
