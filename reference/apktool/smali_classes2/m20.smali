.class public final synthetic Lm20;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Lmk2;Z)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lm20;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm20;->c:Ljava/lang/Object;

    iput-object p2, p0, Lm20;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lm20;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lr20;Lzc6;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm20;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p3, p0, Lm20;->b:Z

    .line 8
    .line 9
    iput-object p1, p0, Lm20;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p2, p0, Lm20;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lm20;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v3, v0, Lm20;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lm20;->c:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 15
    .line 16
    check-cast v3, Lmk2;

    .line 17
    .line 18
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 23
    .line 24
    iget-object v6, v3, La55;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-boolean v0, v0, Lm20;->b:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v7, "Protecting"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v7, "Unprotecting"

    .line 34
    .line 35
    :goto_0
    iget-object v8, v3, Lmk2;->e:Lji;

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const-string v12, "app"

    .line 39
    .line 40
    if-eqz v8, :cond_6

    .line 41
    .line 42
    invoke-virtual {v8}, Lji;->asString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v7, " cloud backup for "

    .line 59
    .line 60
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v7, " with backup id: "

    .line 67
    .line 68
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const/4 v9, 0x4

    .line 79
    const/4 v10, 0x0

    .line 80
    const/4 v8, 0x0

    .line 81
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateProtection(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v6, v3, Lmk2;->e:Lji;

    .line 88
    .line 89
    if-eqz v6, :cond_5

    .line 90
    .line 91
    invoke-virtual {v6}, Lji;->getAppId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    sget-object v7, Lre3;->a:Lzc2;

    .line 96
    .line 97
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v6, v4}, Lre3;->a(Ljava/lang/String;Ljava/lang/String;)Lzc2;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v4, v1}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    sget-object v4, Lze3;->b:Lze3;

    .line 110
    .line 111
    invoke-static {v1, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    const-string v6, "Unprotection"

    .line 116
    .line 117
    const-string v7, "Protection"

    .line 118
    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    move-object v4, v6

    .line 122
    iget-object v6, v3, La55;->b:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v0, :cond_1

    .line 125
    .line 126
    move-object v4, v7

    .line 127
    :cond_1
    const-string v0, " successful"

    .line 128
    .line 129
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    const/4 v9, 0x4

    .line 134
    const/4 v10, 0x0

    .line 135
    const/4 v8, 0x0

    .line 136
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    move-object v4, v6

    .line 141
    instance-of v6, v1, Lye3;

    .line 142
    .line 143
    if-eqz v6, :cond_4

    .line 144
    .line 145
    iget-object v6, v3, La55;->b:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    move-object v4, v7

    .line 150
    :cond_3
    check-cast v1, Lye3;

    .line 151
    .line 152
    iget-object v0, v1, Lye3;->b:Lwc2;

    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v3, " failed: "

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    const/4 v9, 0x4

    .line 175
    const/4 v10, 0x0

    .line 176
    const/4 v8, 0x0

    .line 177
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    invoke-static {}, Lq;->j()V

    .line 182
    .line 183
    .line 184
    move-object v2, v11

    .line 185
    :goto_1
    return-object v2

    .line 186
    :cond_5
    invoke-static {v12}, Lpe4;->F(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v11

    .line 190
    :cond_6
    invoke-static {v12}, Lpe4;->F(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v11

    .line 194
    :pswitch_0
    check-cast v4, Lr20;

    .line 195
    .line 196
    check-cast v3, Lzc6;

    .line 197
    .line 198
    sget-object v5, Lkz4;->g:Lkz4;

    .line 199
    .line 200
    const/4 v9, 0x1

    .line 201
    const/4 v10, 0x6

    .line 202
    iget-boolean v6, v0, Lm20;->b:Z

    .line 203
    .line 204
    const/4 v7, 0x0

    .line 205
    const/4 v8, 0x0

    .line 206
    invoke-static/range {v5 .. v10}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 207
    .line 208
    .line 209
    sget-object v11, Lua1;->g:Lua1;

    .line 210
    .line 211
    const/4 v15, 0x1

    .line 212
    const/16 v16, 0x6

    .line 213
    .line 214
    const/4 v13, 0x0

    .line 215
    const/4 v14, 0x0

    .line 216
    move v12, v6

    .line 217
    invoke-static/range {v11 .. v16}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Ln20;

    .line 221
    .line 222
    const/4 v1, 0x1

    .line 223
    invoke-direct {v0, v4, v3, v1}, Ln20;-><init>(Lr20;Lzc6;Z)V

    .line 224
    .line 225
    .line 226
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 227
    .line 228
    .line 229
    return-object v2

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
