.class public final Lpj7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lq63;J)Loj7;
    .locals 6

    .line 1
    const-wide/16 v0, 0x64

    .line 2
    .line 3
    div-long v0, p1, v0

    .line 4
    .line 5
    const-wide/32 v2, 0x1000000

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide v2, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    sub-long v4, v2, v0

    .line 18
    .line 19
    cmp-long v4, p1, v4

    .line 20
    .line 21
    if-lez v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    add-long v2, p1, v0

    .line 25
    .line 26
    :goto_0
    invoke-static {p0, v2, v3}, Lpj7;->b(Lq63;J)Loj7;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static b(Lq63;J)Loj7;
    .locals 14

    .line 1
    sget-object v0, Lp93;->a:Lp93;

    .line 2
    .line 3
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "skip_disk_space_checks"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "prefs"

    .line 25
    .line 26
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    move v1, v3

    .line 31
    :goto_0
    const-string v4, "."

    .line 32
    .line 33
    const-string v5, ". Needed: "

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "Free disk space check is disabled. Path: "

    .line 40
    .line 41
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 61
    .line 62
    const-string v1, "SpaceChecker"

    .line 63
    .line 64
    sget-object v3, Lvr6$a;->YELLOW:Lvr6$a;

    .line 65
    .line 66
    invoke-virtual {v0, v1, p0, v3}, Lvr6;->w(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_1
    if-eqz p0, :cond_8

    .line 71
    .line 72
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-lez v1, :cond_8

    .line 81
    .line 82
    sget-object v1, Lry5;->u:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p0}, Lqy5;->c(Lq63;)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-wide/32 v6, 0x3200000

    .line 89
    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v8

    .line 97
    cmp-long v1, v8, v6

    .line 98
    .line 99
    if-lez v1, :cond_3

    .line 100
    .line 101
    sub-long/2addr v8, v6

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const-wide/16 v8, 0x0

    .line 104
    .line 105
    :cond_3
    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    cmp-long v6, v8, v6

    .line 114
    .line 115
    const/4 v7, 0x1

    .line 116
    if-gtz v6, :cond_4

    .line 117
    .line 118
    const-string p0, "Very low storage space for file read/write operations ("

    .line 119
    .line 120
    const-string v0, ")"

    .line 121
    .line 122
    invoke-static {p0, v1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 127
    .line 128
    const/4 v12, 0x4

    .line 129
    const/4 v13, 0x0

    .line 130
    const-string v9, "SpaceChecker"

    .line 131
    .line 132
    const/4 v11, 0x0

    .line 133
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    new-instance p0, Loj7;

    .line 137
    .line 138
    invoke-direct {p0, v10, v7}, Loj7;-><init>(Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_4
    cmp-long v6, v8, p1

    .line 143
    .line 144
    if-gez v6, :cond_5

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    move v7, v3

    .line 148
    :goto_2
    if-eqz v7, :cond_6

    .line 149
    .line 150
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 151
    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v9, "Insufficient space at "

    .line 155
    .line 156
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p0, ", Available: "

    .line 169
    .line 170
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-static {v6, v1, v4}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    const/4 v12, 0x4

    .line 178
    const/4 v13, 0x0

    .line 179
    const-string v9, "SpaceChecker"

    .line 180
    .line 181
    const/4 v11, 0x0

    .line 182
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    if-eqz v7, :cond_7

    .line 186
    .line 187
    new-instance p0, Loj7;

    .line 188
    .line 189
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 190
    .line 191
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    const v4, 0x7f13053b

    .line 196
    .line 197
    .line 198
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-direct {p0, v0, v3}, Loj7;-><init>(Ljava/lang/String;Z)V

    .line 210
    .line 211
    .line 212
    return-object p0

    .line 213
    :cond_7
    return-object v2

    .line 214
    :cond_8
    const-string v0, "Can\'t get available memory at invalid path: "

    .line 215
    .line 216
    invoke-static {p0, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    return-object v2
.end method
