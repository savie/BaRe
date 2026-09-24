.class public final synthetic Li41;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Li41;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Li41;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Li41;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Li41;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Lfh8;

    .line 12
    .line 13
    iget-object p0, v0, Lfh8;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, v0, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    iget-object p0, v0, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lbp4;

    .line 34
    .line 35
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    .line 37
    .line 38
    iget-object v3, p0, Lbp4;->a:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    :try_start_2
    monitor-exit p0

    .line 48
    iget-object p0, v0, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lbp4;

    .line 55
    .line 56
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :catchall_1
    move-exception v1

    .line 63
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :try_start_4
    throw v1

    .line 65
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-object p0, v0, Lfh8;->d:Li75;

    .line 69
    .line 70
    iget-object v1, p0, Li75;->a:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Llf5;

    .line 73
    .line 74
    iget-object p0, p0, Li75;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Ljava/lang/String;

    .line 77
    .line 78
    iget-boolean v0, v0, Lfh8;->c:Z

    .line 79
    .line 80
    invoke-virtual {v1, p0, v2, v0}, Llf5;->h(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void

    .line 84
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    throw p0

    .line 86
    :pswitch_0
    check-cast p0, Lpa7;

    .line 87
    .line 88
    iput-object v2, p0, Lpa7;->L:Li41;

    .line 89
    .line 90
    iget-boolean v0, p0, Lpa7;->M:Z

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-static {}, Lha7;->d()V

    .line 95
    .line 96
    .line 97
    iput-boolean v1, p0, Lpa7;->M:Z

    .line 98
    .line 99
    :cond_2
    const-string p0, "SettingsFragment"

    .line 100
    .line 101
    const-string v0, "Theme setting toggled, posting ForcedConfigChange"

    .line 102
    .line 103
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    new-instance p0, Ltq3;

    .line 107
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lny2;->b()Lny2;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, p0}, Lny2;->e(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_1
    check-cast p0, Landroid/content/Intent;

    .line 120
    .line 121
    :try_start_6
    sget-object v0, Laq6;->e:Lxp6;

    .line 122
    .line 123
    invoke-static {p0, v0}, Lqp6;->a(Landroid/content/Intent;Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catchall_2
    move-exception p0

    .line 128
    sget-object v0, Laq6;->c:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v0

    .line 131
    :try_start_7
    sput-boolean v1, Laq6;->b:Z

    .line 132
    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 134
    .line 135
    .line 136
    move-result-wide v1

    .line 137
    sput-wide v1, Laq6;->f:J

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 140
    .line 141
    .line 142
    monitor-exit v0

    .line 143
    const-string v0, "RootServiceManager"

    .line 144
    .line 145
    const-string v1, "Failed to bind elevated service"

    .line 146
    .line 147
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void

    .line 151
    :catchall_3
    move-exception p0

    .line 152
    monitor-exit v0

    .line 153
    throw p0

    .line 154
    :pswitch_2
    check-cast p0, Lt22;

    .line 155
    .line 156
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$27hAKj8hhFiHQnNA1lTKsiG-Oxw(Lt22;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_3
    check-cast p0, Ldo1;

    .line 161
    .line 162
    iget-object v0, p0, Ldo1;->b:Ljava/lang/Runnable;

    .line 163
    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 167
    .line 168
    .line 169
    iput-object v2, p0, Ldo1;->b:Ljava/lang/Runnable;

    .line 170
    .line 171
    :cond_3
    return-void

    .line 172
    :pswitch_4
    check-cast p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->run()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
