.class public final Loa9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Leq0;

.field public final b:Lt99;

.field public final c:Lt99;

.field public final synthetic d:Ldq0;


# direct methods
.method public constructor <init>(Ldq0;Leq0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loa9;->d:Ldq0;

    .line 5
    .line 6
    iget-object p1, p1, Ldq0;->B:Lwx3;

    .line 7
    .line 8
    new-instance v0, Lt99;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lt99;-><init>(Lwx3;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Loa9;->b:Lt99;

    .line 14
    .line 15
    new-instance v0, Lt99;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lt99;-><init>(Lwx3;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Loa9;->c:Lt99;

    .line 21
    .line 22
    iput-object p2, p0, Loa9;->a:Leq0;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/Long;
    .locals 11

    .line 1
    iget-object v0, p0, Loa9;->d:Ldq0;

    .line 2
    .line 3
    const-wide/32 v1, 0xf4240

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    :try_start_0
    iget-object p1, v0, Ldq0;->a:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object p0, p0, Loa9;->b:Lt99;

    .line 14
    .line 15
    iget-boolean v0, p0, Lt99;->b:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lt99;->a:Lwx3;

    .line 20
    .line 21
    invoke-virtual {v0}, Lwx3;->F()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    iget-boolean v0, p0, Lt99;->b:Z

    .line 26
    .line 27
    const-string v7, "This stopwatch is already stopped."

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iput-boolean v3, p0, Lt99;->b:Z

    .line 32
    .line 33
    iget-wide v7, p0, Lt99;->c:J

    .line 34
    .line 35
    iget-wide v9, p0, Lt99;->d:J

    .line 36
    .line 37
    sub-long/2addr v5, v9

    .line 38
    add-long/2addr v5, v7

    .line 39
    iput-wide v5, p0, Lt99;->c:J

    .line 40
    .line 41
    div-long/2addr v5, v1

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    monitor-exit p1

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_1
    monitor-exit p1

    .line 57
    return-object v4

    .line 58
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    throw p0

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iget-object p1, v0, Ldq0;->a:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :try_start_3
    iget-object p0, p0, Loa9;->c:Lt99;

    .line 66
    .line 67
    iget-boolean v0, p0, Lt99;->b:Z

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lt99;->a:Lwx3;

    .line 72
    .line 73
    invoke-virtual {v0}, Lwx3;->F()J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    iget-boolean v0, p0, Lt99;->b:Z

    .line 78
    .line 79
    const-string v7, "This stopwatch is already stopped."

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iput-boolean v3, p0, Lt99;->b:Z

    .line 84
    .line 85
    iget-wide v7, p0, Lt99;->c:J

    .line 86
    .line 87
    iget-wide v9, p0, Lt99;->d:J

    .line 88
    .line 89
    sub-long/2addr v5, v9

    .line 90
    add-long/2addr v5, v7

    .line 91
    iput-wide v5, p0, Lt99;->c:J

    .line 92
    .line 93
    div-long/2addr v5, v1

    .line 94
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    monitor-exit p1

    .line 99
    return-object p0

    .line 100
    :catchall_2
    move-exception p0

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_4
    monitor-exit p1

    .line 109
    return-object v4

    .line 110
    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 111
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    :goto_2
    const-string p1, "BillingClient"

    .line 113
    .line 114
    const-string v0, "Exception getting connection establishment duration."

    .line 115
    .line 116
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    return-object v4
.end method

.method public final b(Lyq0;ILjava/lang/String;Z)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lro9;->q()Loo9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p1, Lyq0;->a:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lri9;->b()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lri9;->b:Lxi9;

    .line 11
    .line 12
    check-cast v2, Lro9;

    .line 13
    .line 14
    invoke-static {v2, v1}, Lro9;->p(Lro9;I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lyq0;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0}, Lri9;->b()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lri9;->b:Lxi9;

    .line 23
    .line 24
    check-cast v1, Lro9;

    .line 25
    .line 26
    invoke-static {v1, p1}, Lro9;->s(Lro9;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lri9;->b()V

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Lri9;->b:Lxi9;

    .line 33
    .line 34
    check-cast p1, Lro9;

    .line 35
    .line 36
    invoke-static {p1, p2}, Lro9;->v(Lro9;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lri9;->b()V

    .line 40
    .line 41
    .line 42
    iget-object p1, v0, Lri9;->b:Lxi9;

    .line 43
    .line 44
    check-cast p1, Lro9;

    .line 45
    .line 46
    invoke-static {p1}, Lro9;->t(Lro9;)V

    .line 47
    .line 48
    .line 49
    if-eqz p3, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Lri9;->b()V

    .line 52
    .line 53
    .line 54
    iget-object p1, v0, Lri9;->b:Lxi9;

    .line 55
    .line 56
    check-cast p1, Lro9;

    .line 57
    .line 58
    invoke-static {p1, p3}, Lro9;->r(Lro9;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0, p4}, Loa9;->a(Z)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object p0, p0, Loa9;->d:Ldq0;

    .line 66
    .line 67
    if-eqz p4, :cond_2

    .line 68
    .line 69
    :try_start_1
    invoke-static {}, Luq9;->p()Ltq9;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const/4 p3, 0x0

    .line 74
    invoke-virtual {p2, p3}, Ltq9;->c(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ltq9;->d()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lri9;->b()V

    .line 81
    .line 82
    .line 83
    iget-object p3, p2, Lri9;->b:Lxi9;

    .line 84
    .line 85
    check-cast p3, Luq9;

    .line 86
    .line 87
    invoke-static {p3}, Luq9;->t(Luq9;)V

    .line 88
    .line 89
    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide p3

    .line 96
    invoke-virtual {p2}, Lri9;->b()V

    .line 97
    .line 98
    .line 99
    iget-object p1, p2, Lri9;->b:Lxi9;

    .line 100
    .line 101
    check-cast p1, Luq9;

    .line 102
    .line 103
    invoke-static {p1, p3, p4}, Luq9;->s(Luq9;J)V

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-static {}, Ldo9;->s()Lco9;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v0}, Lco9;->c(Loo9;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lri9;->b()V

    .line 114
    .line 115
    .line 116
    iget-object p3, p1, Lri9;->b:Lxi9;

    .line 117
    .line 118
    check-cast p3, Ldo9;

    .line 119
    .line 120
    const/4 p4, 0x6

    .line 121
    invoke-static {p3, p4}, Ldo9;->r(Ldo9;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lco9;->d(Ltq9;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lri9;->a()Lxi9;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Ldo9;

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Ldq0;->o(Ldo9;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_2
    invoke-static {}, Lpq9;->p()Lmq9;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p2}, Lri9;->b()V

    .line 142
    .line 143
    .line 144
    iget-object p3, p2, Lri9;->b:Lxi9;

    .line 145
    .line 146
    check-cast p3, Lpq9;

    .line 147
    .line 148
    invoke-virtual {v0}, Lri9;->a()Lxi9;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    check-cast p4, Lro9;

    .line 153
    .line 154
    invoke-static {p3, p4}, Lpq9;->q(Lpq9;Lro9;)V

    .line 155
    .line 156
    .line 157
    if-eqz p1, :cond_3

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 160
    .line 161
    .line 162
    move-result-wide p3

    .line 163
    invoke-virtual {p2}, Lri9;->b()V

    .line 164
    .line 165
    .line 166
    iget-object p1, p2, Lri9;->b:Lxi9;

    .line 167
    .line 168
    check-cast p1, Lpq9;

    .line 169
    .line 170
    invoke-static {p1, p3, p4}, Lpq9;->r(Lpq9;J)V

    .line 171
    .line 172
    .line 173
    :cond_3
    iget-object p0, p0, Ldq0;->h:Ll39;

    .line 174
    .line 175
    invoke-virtual {p2}, Lri9;->a()Lxi9;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Lpq9;

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Ll39;->u(Lpq9;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :catchall_0
    move-exception p0

    .line 186
    const-string p1, "BillingClient"

    .line 187
    .line 188
    const-string p2, "Unable to log."

    .line 189
    .line 190
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public final c(Lyq0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Loa9;->d:Ldq0;

    .line 2
    .line 3
    iget-object v1, v0, Ldq0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v0, v0, Ldq0;->b:I

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    monitor-exit v1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    iget-object p0, p0, Loa9;->a:Leq0;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Leq0;->a(Lyq0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_1
    move-exception p0

    .line 23
    const-string p1, "BillingClient"

    .line 24
    .line 25
    const-string v0, "Exception while calling onBillingSetupFinished."

    .line 26
    .line 27
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw p0
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service died."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    iget-object v0, p0, Loa9;->d:Ldq0;

    .line 10
    .line 11
    iget-object v1, v0, Ldq0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget v2, v0, Ldq0;->b:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, p1

    .line 21
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    iget-object v0, v0, Ldq0;->h:Ll39;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    :try_start_2
    invoke-static {}, Ldo9;->s()Lco9;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lri9;->b()V

    .line 31
    .line 32
    .line 33
    iget-object v2, v1, Lri9;->b:Lxi9;

    .line 34
    .line 35
    check-cast v2, Ldo9;

    .line 36
    .line 37
    const/4 v3, 0x6

    .line 38
    invoke-static {v2, v3}, Ldo9;->r(Ldo9;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lro9;->q()Loo9;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lri9;->b()V

    .line 46
    .line 47
    .line 48
    iget-object v3, v2, Lri9;->b:Lxi9;

    .line 49
    .line 50
    check-cast v3, Lro9;

    .line 51
    .line 52
    const/16 v4, 0x6e

    .line 53
    .line 54
    invoke-static {v3, v4}, Lro9;->v(Lro9;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lco9;->c(Loo9;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Luq9;->p()Ltq9;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2, p1}, Ltq9;->c(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ltq9;->d()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lco9;->d(Ltq9;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lri9;->a()Lxi9;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ldo9;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ll39;->p(Ldo9;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-static {}, Luo9;->p()Luo9;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ll39;->t(Luo9;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    :goto_1
    const-string v1, "BillingClient"

    .line 97
    .line 98
    const-string v2, "Unable to log."

    .line 99
    .line 100
    invoke-static {v1, v2, v0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    iget-object v0, p0, Loa9;->d:Ldq0;

    .line 104
    .line 105
    iget-object v1, v0, Ldq0;->a:Ljava/lang/Object;

    .line 106
    .line 107
    monitor-enter v1

    .line 108
    :try_start_5
    iget v2, v0, Ldq0;->b:I

    .line 109
    .line 110
    const/4 v3, 0x3

    .line 111
    if-eq v2, v3, :cond_3

    .line 112
    .line 113
    iget v2, v0, Ldq0;->b:I

    .line 114
    .line 115
    if-nez v2, :cond_2

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_2
    invoke-virtual {v0, p1}, Ldq0;->r(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ldq0;->t()V

    .line 122
    .line 123
    .line 124
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 125
    :try_start_6
    iget-object p0, p0, Loa9;->a:Leq0;

    .line 126
    .line 127
    invoke-interface {p0}, Leq0;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :catchall_2
    move-exception p0

    .line 132
    const-string p1, "BillingClient"

    .line 133
    .line 134
    const-string v0, "Exception while calling onBillingServiceDisconnected."

    .line 135
    .line 136
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :catchall_3
    move-exception p0

    .line 141
    goto :goto_5

    .line 142
    :cond_3
    :goto_3
    :try_start_7
    monitor-exit v1

    .line 143
    :goto_4
    return-void

    .line 144
    :goto_5
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 145
    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service connected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Loa9;->d:Ldq0;

    .line 9
    .line 10
    iget-object v1, p1, Ldq0;->a:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget v0, p1, Ldq0;->b:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    move-object p0, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sget v0, Lu89;->b:I

    .line 24
    .line 25
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 26
    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    instance-of v3, v2, Lw89;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    move-object p2, v2

    .line 40
    check-cast p2, Lw89;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v2, Lg89;

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    invoke-direct {v2, p2, v0, v3}, Lvz8;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    move-object p2, v2

    .line 50
    :goto_0
    iput-object p2, p1, Ldq0;->i:Lw89;

    .line 51
    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    new-instance v2, Lha9;

    .line 54
    .line 55
    invoke-direct {v2, p0}, Lha9;-><init>(Loa9;)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Laq2;

    .line 59
    .line 60
    const/4 p2, 0x5

    .line 61
    invoke-direct {v5, p0, p2}, Laq2;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ldq0;->k()Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {p1}, Ldq0;->e()Ljava/util/concurrent/ExecutorService;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    const-wide/16 v3, 0x7530

    .line 73
    .line 74
    invoke-static/range {v2 .. v7}, Ldq0;->f(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-nez p2, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Ldq0;->n()Lyq0;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const/16 v0, 0x19

    .line 85
    .line 86
    invoke-virtual {p1, v0, p2}, Ldq0;->q(ILyq0;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p2}, Loa9;->c(Lyq0;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void

    .line 93
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service disconnected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    iget-object v0, p0, Loa9;->d:Ldq0;

    .line 10
    .line 11
    iget-object v1, v0, Ldq0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget v2, v0, Ldq0;->b:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, p1

    .line 21
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    iget-object v0, v0, Ldq0;->h:Ll39;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    :try_start_2
    invoke-static {}, Ldo9;->s()Lco9;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lri9;->b()V

    .line 31
    .line 32
    .line 33
    iget-object v2, v1, Lri9;->b:Lxi9;

    .line 34
    .line 35
    check-cast v2, Ldo9;

    .line 36
    .line 37
    const/4 v3, 0x6

    .line 38
    invoke-static {v2, v3}, Ldo9;->r(Ldo9;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lro9;->q()Loo9;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lri9;->b()V

    .line 46
    .line 47
    .line 48
    iget-object v3, v2, Lri9;->b:Lxi9;

    .line 49
    .line 50
    check-cast v3, Lro9;

    .line 51
    .line 52
    const/16 v4, 0x6d

    .line 53
    .line 54
    invoke-static {v3, v4}, Lro9;->v(Lro9;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lco9;->c(Loo9;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Luq9;->p()Ltq9;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2, p1}, Ltq9;->c(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ltq9;->d()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lco9;->d(Ltq9;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lri9;->a()Lxi9;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ldo9;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ll39;->p(Ldo9;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-static {}, Lsq9;->p()Lsq9;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ll39;->v(Lsq9;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    :goto_1
    const-string v1, "BillingClient"

    .line 97
    .line 98
    const-string v2, "Unable to log."

    .line 99
    .line 100
    invoke-static {v1, v2, v0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    iget-object v0, p0, Loa9;->d:Ldq0;

    .line 104
    .line 105
    iget-object v1, v0, Ldq0;->a:Ljava/lang/Object;

    .line 106
    .line 107
    monitor-enter v1

    .line 108
    :try_start_5
    iget-object v2, p0, Loa9;->c:Lt99;

    .line 109
    .line 110
    const-wide/16 v3, 0x0

    .line 111
    .line 112
    iput-wide v3, v2, Lt99;->c:J

    .line 113
    .line 114
    iput-boolean p1, v2, Lt99;->b:Z

    .line 115
    .line 116
    invoke-virtual {v2}, Lt99;->a()V

    .line 117
    .line 118
    .line 119
    iget v2, v0, Ldq0;->b:I

    .line 120
    .line 121
    const/4 v3, 0x3

    .line 122
    if-ne v2, v3, :cond_2

    .line 123
    .line 124
    monitor-exit v1

    .line 125
    goto :goto_3

    .line 126
    :catchall_2
    move-exception p0

    .line 127
    goto :goto_4

    .line 128
    :cond_2
    invoke-virtual {v0, p1}, Ldq0;->r(I)V

    .line 129
    .line 130
    .line 131
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 132
    :try_start_6
    iget-object p0, p0, Loa9;->a:Leq0;

    .line 133
    .line 134
    invoke-interface {p0}, Leq0;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 135
    .line 136
    .line 137
    :goto_3
    return-void

    .line 138
    :catchall_3
    move-exception p0

    .line 139
    const-string p1, "BillingClient"

    .line 140
    .line 141
    const-string v0, "Exception while calling onBillingServiceDisconnected."

    .line 142
    .line 143
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :goto_4
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 148
    throw p0
.end method
