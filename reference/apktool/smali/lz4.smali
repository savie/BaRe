.class public final Llz4;
.super Landroid/os/Handler;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lnz4;


# direct methods
.method public constructor <init>(Lnz4;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llz4;->a:Lnz4;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Llz4;->a:Lnz4;

    .line 11
    .line 12
    :cond_1
    iget-object p1, p0, Lnz4;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ljava/util/HashMap;

    .line 15
    .line 16
    monitor-enter p1

    .line 17
    :try_start_0
    iget-object v0, p0, Lnz4;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-gtz v0, :cond_2

    .line 26
    .line 27
    monitor-exit p1

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    new-array v1, v0, [Lwc9;

    .line 32
    .line 33
    iget-object v2, p0, Lnz4;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lnz4;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 p1, 0x0

    .line 49
    move v2, p1

    .line 50
    :goto_0
    if-ge v2, v0, :cond_1

    .line 51
    .line 52
    aget-object v3, v1, v2

    .line 53
    .line 54
    iget-object v4, v3, Lwc9;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    move v5, p1

    .line 63
    :goto_1
    if-ge v5, v4, :cond_4

    .line 64
    .line 65
    iget-object v6, v3, Lwc9;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v6, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lmz4;

    .line 74
    .line 75
    iget-boolean v7, v6, Lmz4;->d:Z

    .line 76
    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    iget-object v6, v6, Lmz4;->b:Landroid/content/BroadcastReceiver;

    .line 80
    .line 81
    iget-object v7, p0, Lnz4;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v7, Landroid/content/Context;

    .line 84
    .line 85
    iget-object v8, v3, Lwc9;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v8, Landroid/content/Intent;

    .line 88
    .line 89
    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    throw p0
.end method
