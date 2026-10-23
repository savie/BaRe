.class public final Lj19;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Lc00;


# direct methods
.method public constructor <init>(Lc00;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj19;->b:Lc00;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, p2

    .line 14
    :goto_0
    const-string v0, "com.google.android.gms"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    iget-object p1, p0, Lj19;->b:Lc00;

    .line 23
    .line 24
    iget-object v0, p1, Lc00;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lj29;

    .line 27
    .line 28
    iget-object v0, v0, Lj29;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, La19;

    .line 31
    .line 32
    iget-object v1, v0, La19;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    .line 34
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, La19;->f:Lpz3;

    .line 38
    .line 39
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Lc00;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Landroid/app/AlertDialog;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 60
    .line 61
    .line 62
    :cond_1
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object p1, p0, Lj19;->a:Landroid/content/Context;

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :goto_1
    iput-object p2, p0, Lj19;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1

    .line 79
    :cond_3
    return-void
.end method
