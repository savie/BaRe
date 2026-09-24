.class public final synthetic Lrk;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 18
    iput p7, p0, Lrk;->a:I

    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lrk;->a:I

    .line 3
    .line 4
    const-string v6, "onPermissionGrantFinished()V"

    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const-class v4, Lnf4;

    .line 9
    .line 10
    const-string v5, "onPermissionGrantFinished"

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    move-object v3, p1

    .line 14
    invoke-direct/range {v1 .. v7}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lrk;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lgt8;

    .line 9
    .line 10
    iget-object v0, p0, Lgt8;->b:Lq63;

    .line 11
    .line 12
    iget-object p0, p0, Lgt8;->a:Lq63;

    .line 13
    .line 14
    invoke-virtual {p0}, Lq63;->j()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 22
    .line 23
    const-string v4, "WifiPasswordParser"

    .line 24
    .line 25
    const-string v0, "readFromSystem: Wifi config file not found at "

    .line 26
    .line 27
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v7, 0x4

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :try_start_0
    new-instance v1, Lx45;

    .line 39
    .line 40
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v1, v3}, Lx45;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-virtual {v0, v3}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 49
    .line 50
    .line 51
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/high16 v4, 0x40000

    .line 53
    .line 54
    :try_start_1
    invoke-static {v1, v3, v4}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_2
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    .line 60
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lq63;->j()Z

    .line 64
    .line 65
    .line 66
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    move-object v3, v0

    .line 72
    goto :goto_0

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    move-object v4, v0

    .line 75
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    :catchall_2
    move-exception v0

    .line 77
    :try_start_5
    invoke-static {v3, v4}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 81
    :goto_0
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 82
    :catchall_3
    move-exception v0

    .line 83
    :try_start_7
    invoke-static {v1, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 87
    :goto_1
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 88
    .line 89
    const-string v4, "WifiPasswordParser"

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v5, "readFromSystem: Couldn\'t copy config file at "

    .line 98
    .line 99
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p0, ": "

    .line 106
    .line 107
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    const/4 v7, 0x4

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v6, 0x0

    .line 120
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_0
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 129
    .line 130
    move-object v1, p0

    .line 131
    check-cast v1, Lnf4;

    .line 132
    .line 133
    monitor-enter v1

    .line 134
    :try_start_8
    iget-boolean p0, v1, Lnf4;->h:Z

    .line 135
    .line 136
    if-nez p0, :cond_1

    .line 137
    .line 138
    iget-object p0, v1, Lnf4;->g:Lmf4;

    .line 139
    .line 140
    sget-object v0, Lmf4;->GRANTING_PERMISSIONS:Lmf4;

    .line 141
    .line 142
    if-ne p0, v0, :cond_1

    .line 143
    .line 144
    sget-object p0, Lmf4;->IDLE:Lmf4;

    .line 145
    .line 146
    invoke-virtual {v1, p0}, Lnf4;->a(Lmf4;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catchall_4
    move-exception v0

    .line 151
    move-object p0, v0

    .line 152
    goto :goto_4

    .line 153
    :cond_1
    :goto_3
    monitor-exit v1

    .line 154
    sget-object p0, Lbe8;->a:Lbe8;

    .line 155
    .line 156
    return-object p0

    .line 157
    :goto_4
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 158
    throw p0

    .line 159
    :pswitch_1
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Lpu3;

    .line 162
    .line 163
    invoke-virtual {p0}, Lag8;->e()Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_2
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p0, Lfu3;

    .line 175
    .line 176
    invoke-virtual {p0}, Lfu3;->u()Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0

    .line 185
    :pswitch_3
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p0, Lb82;

    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    sget-object p0, Lb82;->i:Ljava/lang/Object;

    .line 193
    .line 194
    invoke-static {}, Llg7;->m()Lnq2;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    if-nez p0, :cond_2

    .line 199
    .line 200
    const/4 p0, 0x0

    .line 201
    goto :goto_5

    .line 202
    :cond_2
    iget-object v0, p0, Lnq2;->a:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {p0}, Lnq2;->a(Lnq2;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-eqz p0, :cond_3

    .line 209
    .line 210
    invoke-static {v0}, Lb82;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    if-nez p0, :cond_4

    .line 215
    .line 216
    :cond_3
    move-object p0, v0

    .line 217
    :cond_4
    :goto_5
    return-object p0

    .line 218
    :pswitch_4
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;

    .line 221
    .line 222
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->N(Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;)V

    .line 223
    .line 224
    .line 225
    sget-object p0, Lbe8;->a:Lbe8;

    .line 226
    .line 227
    return-object p0

    .line 228
    nop

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
