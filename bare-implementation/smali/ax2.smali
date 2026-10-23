.class public final Lax2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lax2;->a:I

    iput-object p2, p0, Lax2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lax2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbf3;Lwc2;Leb2;)V
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    iput p3, p0, Lax2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lax2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lax2;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lax2;->a:I

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
    iget-object v0, p0, Lax2;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lc00;

    .line 11
    .line 12
    iget-object v0, v0, Lc00;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lnr8;

    .line 15
    .line 16
    iget-object p0, p0, Lax2;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lbr8;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    instance-of v3, v3, Ljava/io/EOFException;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object p0, v0, Lnr8;->j:Lu00;

    .line 35
    .line 36
    const-string v3, "WebSocket reached EOF."

    .line 37
    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {p0, v3, v1, v2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, v0, Lnr8;->j:Lu00;

    .line 45
    .line 46
    const-string v3, "WebSocket error."

    .line 47
    .line 48
    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v1, v3, p0, v2}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {v0}, Lnr8;->a(Lnr8;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lax2;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lbf3;

    .line 60
    .line 61
    iget-object p0, p0, Lax2;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Lwc2;

    .line 64
    .line 65
    invoke-virtual {v0, p0, v2}, Lbf3;->a(Lwc2;Z)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_1
    iget-object v0, p0, Lax2;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lc00;

    .line 72
    .line 73
    iget-object p0, p0, Lax2;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lhy2;

    .line 92
    .line 93
    iget-object v4, v0, Lc00;->c:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v4, Lu00;

    .line 96
    .line 97
    invoke-virtual {v4}, Lu00;->e()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    iget-object v4, v0, Lc00;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v4, Lu00;

    .line 106
    .line 107
    invoke-interface {v3}, Lhy2;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const-string v6, "Raising "

    .line 112
    .line 113
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    new-array v6, v2, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-virtual {v4, v5, v1, v6}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    invoke-interface {v3}, Lhy2;->a()V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    return-void

    .line 127
    :pswitch_2
    iget-object v0, p0, Lax2;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lfh7;

    .line 130
    .line 131
    iget-object v1, v0, Lfh7;->b:Lrm7;

    .line 132
    .line 133
    invoke-virtual {v1}, Lrm7;->a()V

    .line 134
    .line 135
    .line 136
    iget-object v0, v0, Lfh7;->c:Ljava/lang/Object;

    .line 137
    .line 138
    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lax2;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, Ldx2;

    .line 142
    .line 143
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    iget-object v2, p0, Lax2;->c:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v2, Ldx2;

    .line 147
    .line 148
    iget-object v2, v2, Ldx2;->a:Lcx2;

    .line 149
    .line 150
    iget-object v3, p0, Lax2;->b:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v3, Lfh7;

    .line 153
    .line 154
    iget-object v2, v2, Lcx2;->a:Ljava/util/ArrayList;

    .line 155
    .line 156
    new-instance v4, Lbx2;

    .line 157
    .line 158
    sget-object v5, Lxh8;->f:Lrz2;

    .line 159
    .line 160
    invoke-direct {v4, v3, v5}, Lbx2;-><init>(Lfh7;Ljava/util/concurrent/Executor;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_3

    .line 168
    .line 169
    iget-object v2, p0, Lax2;->c:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v2, Ldx2;

    .line 172
    .line 173
    iget-object v3, p0, Lax2;->b:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v3, Lfh7;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 178
    .line 179
    .line 180
    :try_start_2
    iget-object v2, v2, Ldx2;->I:Lfy3;

    .line 181
    .line 182
    const/4 v4, 0x5

    .line 183
    invoke-virtual {v3, v2, v4}, Lfh7;->g(Lfy3;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :catchall_0
    move-exception p0

    .line 188
    :try_start_3
    new-instance v2, Lwz0;

    .line 189
    .line 190
    invoke-direct {v2, p0}, Lwz0;-><init>(Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    throw v2

    .line 194
    :cond_3
    :goto_2
    iget-object p0, p0, Lax2;->c:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p0, Ldx2;

    .line 197
    .line 198
    invoke-virtual {p0}, Ldx2;->c()V

    .line 199
    .line 200
    .line 201
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 202
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 203
    return-void

    .line 204
    :catchall_1
    move-exception p0

    .line 205
    goto :goto_3

    .line 206
    :catchall_2
    move-exception p0

    .line 207
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 208
    :try_start_6
    throw p0

    .line 209
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 210
    throw p0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
