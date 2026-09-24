.class public final Lxz8;
.super Ls09;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic k:I

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxz8;->k:I

    .line 2
    .line 3
    iput-object p1, p0, Lxz8;->n:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ls09;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget v0, p0, Lxz8;->k:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lxz8;->n:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lzz8;

    .line 11
    .line 12
    iget-object v0, v0, Lzz8;->f:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v3, p0, Lxz8;->n:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lzz8;

    .line 18
    .line 19
    iget-object v3, v3, Lzz8;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-lez v3, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Lxz8;->n:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lzz8;

    .line 30
    .line 31
    iget-object v3, v3, Lzz8;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-lez v3, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lxz8;->n:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lzz8;

    .line 42
    .line 43
    iget-object p0, p0, Lzz8;->b:Lr09;

    .line 44
    .line 45
    const-string v2, "Leaving the connection open for other ongoing calls."

    .line 46
    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p0, v2, v1}, Lr09;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    iget-object v3, p0, Lxz8;->n:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Lzz8;

    .line 59
    .line 60
    iget-object v4, v3, Lzz8;->n:Landroid/os/IInterface;

    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    iget-object v3, v3, Lzz8;->b:Lr09;

    .line 65
    .line 66
    const-string v4, "Unbind from service."

    .line 67
    .line 68
    new-array v5, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v3, v4, v5}, Lr09;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lxz8;->n:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, Lzz8;

    .line 76
    .line 77
    iget-object v4, v3, Lzz8;->a:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v3, v3, Lzz8;->m:Lyz8;

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lxz8;->n:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v3, Lzz8;

    .line 87
    .line 88
    iput-boolean v1, v3, Lzz8;->g:Z

    .line 89
    .line 90
    iput-object v2, v3, Lzz8;->n:Landroid/os/IInterface;

    .line 91
    .line 92
    iput-object v2, v3, Lzz8;->m:Lyz8;

    .line 93
    .line 94
    :cond_1
    iget-object p0, p0, Lxz8;->n:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lzz8;

    .line 97
    .line 98
    invoke-virtual {p0}, Lzz8;->e()V

    .line 99
    .line 100
    .line 101
    monitor-exit v0

    .line 102
    :goto_0
    return-void

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0

    .line 105
    :pswitch_0
    iget-object p0, p0, Lxz8;->n:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Lyz8;

    .line 108
    .line 109
    iget-object p0, p0, Lyz8;->a:Lzz8;

    .line 110
    .line 111
    iget-object v0, p0, Lzz8;->b:Lr09;

    .line 112
    .line 113
    const-string v3, "unlinkToDeath"

    .line 114
    .line 115
    new-array v4, v1, [Ljava/lang/Object;

    .line 116
    .line 117
    invoke-virtual {v0, v3, v4}, Lr09;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lzz8;->n:Landroid/os/IInterface;

    .line 121
    .line 122
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v3, p0, Lzz8;->k:Lt09;

    .line 127
    .line 128
    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 129
    .line 130
    .line 131
    iput-object v2, p0, Lzz8;->n:Landroid/os/IInterface;

    .line 132
    .line 133
    iput-boolean v1, p0, Lzz8;->g:Z

    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
