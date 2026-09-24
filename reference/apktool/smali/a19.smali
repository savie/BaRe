.class public final La19;
.super Lvt4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public volatile a:Z

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Ln29;

.field public final d:Llz3;

.field public final e:Lp50;

.field public final f:Lpz3;


# direct methods
.method public constructor <init>(Lbu4;Lpz3;)V
    .locals 2

    .line 1
    sget-object v0, Llz3;->d:Llz3;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lvt4;-><init>(Lbu4;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, La19;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    new-instance p1, Ln29;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p1, v1}, Ln29;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, La19;->c:Ln29;

    .line 24
    .line 25
    iput-object v0, p0, La19;->d:Llz3;

    .line 26
    .line 27
    new-instance p1, Lp50;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {p1, v0}, Lp50;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, La19;->e:Lp50;

    .line 34
    .line 35
    iput-object p2, p0, La19;->f:Lpz3;

    .line 36
    .line 37
    iget-object p1, p0, Lvt4;->mLifecycleFragment:Lbu4;

    .line 38
    .line 39
    const-string p2, "ConnectionlessLifecycleHelper"

    .line 40
    .line 41
    invoke-interface {p1, p2, p0}, Lbu4;->a(Ljava/lang/String;Lvt4;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object v0, p0, La19;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lg29;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x3

    .line 11
    iget-object v4, p0, La19;->f:Lpz3;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-eq p1, v2, :cond_2

    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    if-eq p1, p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lvt4;->getActivity()Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget p2, Lmz3;->a:I

    .line 25
    .line 26
    iget-object p0, p0, La19;->d:Llz3;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lmz3;->c(Landroid/content/Context;I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, v4, Lpz3;->n:Ln29;

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    if-eqz v1, :cond_6

    .line 48
    .line 49
    iget-object p1, v1, Lg29;->b:Lhs1;

    .line 50
    .line 51
    iget p1, p1, Lhs1;->b:I

    .line 52
    .line 53
    const/16 p2, 0x12

    .line 54
    .line 55
    if-ne p1, p2, :cond_5

    .line 56
    .line 57
    if-ne p0, p2, :cond_5

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 p0, -0x1

    .line 61
    if-ne p2, p0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, v4, Lpz3;->n:Ln29;

    .line 67
    .line 68
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    if-nez p2, :cond_5

    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    const/16 p0, 0xd

    .line 81
    .line 82
    if-eqz p3, :cond_4

    .line 83
    .line 84
    const-string p1, "<<ResolutionFailureErrorDetail>>"

    .line 85
    .line 86
    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    :cond_4
    new-instance p1, Lhs1;

    .line 91
    .line 92
    iget-object p2, v1, Lg29;->b:Lhs1;

    .line 93
    .line 94
    invoke-virtual {p2}, Lhs1;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p1, p0, v5, p2}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget p0, v1, Lg29;->a:I

    .line 102
    .line 103
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, p1, p0}, Lpz3;->h(Lhs1;I)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 111
    .line 112
    iget-object p0, v1, Lg29;->b:Lhs1;

    .line 113
    .line 114
    iget p1, v1, Lg29;->a:I

    .line 115
    .line 116
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, p0, p1}, Lpz3;->h(Lhs1;I)V

    .line 120
    .line 121
    .line 122
    :cond_6
    :goto_1
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    new-instance p1, Lhs1;

    .line 2
    .line 3
    const/16 v0, 0xd

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p1, v0, v1, v1}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, La19;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lg29;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v2, v2, Lg29;->a:I

    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, La19;->f:Lpz3;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v2}, Lpz3;->h(Lhs1;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lvt4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const-string v0, "resolving_error"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lhs1;

    .line 17
    .line 18
    const-string v2, "failed_status"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, "failed_resolution"

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/app/PendingIntent;

    .line 31
    .line 32
    invoke-direct {v0, v2, v3, v1}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "failed_client_id"

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    new-instance v1, Lg29;

    .line 43
    .line 44
    invoke-direct {v1, v0, p1}, Lg29;-><init>(Lhs1;I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p0, p0, La19;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lvt4;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La19;->e:Lp50;

    .line 5
    .line 6
    invoke-virtual {v0}, Lp50;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, La19;->f:Lpz3;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lpz3;->b(La19;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lvt4;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, La19;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lg29;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lg29;->b:Lhs1;

    .line 16
    .line 17
    const-string v1, "resolving_error"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v1, "failed_client_id"

    .line 24
    .line 25
    iget p0, p0, Lg29;->a:I

    .line 26
    .line 27
    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget p0, v0, Lhs1;->b:I

    .line 31
    .line 32
    const-string v1, "failed_status"

    .line 33
    .line 34
    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    iget-object p0, v0, Lhs1;->c:Landroid/app/PendingIntent;

    .line 38
    .line 39
    const-string v0, "failed_resolution"

    .line 40
    .line 41
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lvt4;->onStart()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, La19;->a:Z

    .line 6
    .line 7
    iget-object v0, p0, La19;->e:Lp50;

    .line 8
    .line 9
    invoke-virtual {v0}, Lp50;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, La19;->f:Lpz3;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lpz3;->b(La19;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, La19;->a:Z

    .line 3
    .line 4
    iget-object v0, p0, La19;->f:Lpz3;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v1, Lpz3;->r:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, v0, Lpz3;->k:La19;

    .line 13
    .line 14
    if-ne v2, p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    iput-object p0, v0, Lpz3;->k:La19;

    .line 18
    .line 19
    iget-object p0, v0, Lpz3;->l:Lp50;

    .line 20
    .line 21
    invoke-virtual {p0}, Lp50;->clear()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v1

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method
