.class public final Lox7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lox7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lox7;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lox7;->a:Lox7;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lq63;Ljava/lang/String;Lip6;Lrt3;)V
    .locals 22

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-static/range {p0 .. p0}, Lmz6;->o(Lq63;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-long v0, v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    new-instance v1, Lbn6;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v1

    .line 36
    :goto_0
    nop

    .line 37
    instance-of v1, v0, Lbn6;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    :cond_0
    move-object v2, v0

    .line 43
    check-cast v2, Ljava/lang/Long;

    .line 44
    .line 45
    const-string v0, " files"

    .line 46
    .line 47
    const-wide/16 v7, 0x0

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    cmp-long v1, v3, v7

    .line 56
    .line 57
    if-lez v1, :cond_1

    .line 58
    .line 59
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "Extracting "

    .line 64
    .line 65
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    const/4 v13, 0x4

    .line 79
    const/4 v14, 0x0

    .line 80
    const-string v10, "Extractor"

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    new-instance v4, Lkh6;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v5, Lkh6;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v3, Lkh6;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    sget-object v1, Lmz6;->a:Ljava/util/HashSet;

    .line 102
    .line 103
    new-instance v10, Lq63;

    .line 104
    .line 105
    const/4 v1, 0x2

    .line 106
    move-object/from16 v6, p1

    .line 107
    .line 108
    invoke-direct {v10, v6, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sget-object v11, Lf27;->Basic:Lf27;

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Lq63;->A()J

    .line 114
    .line 115
    .line 116
    move-result-wide v12

    .line 117
    sget-object v6, Lmx7;->a:[I

    .line 118
    .line 119
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    aget v6, v6, v9

    .line 124
    .line 125
    const/4 v9, 0x1

    .line 126
    if-eq v6, v9, :cond_8

    .line 127
    .line 128
    if-eq v6, v1, :cond_7

    .line 129
    .line 130
    const/4 v1, 0x3

    .line 131
    if-eq v6, v1, :cond_3

    .line 132
    .line 133
    const/4 v1, 0x4

    .line 134
    if-ne v6, v1, :cond_2

    .line 135
    .line 136
    sget-object v1, Liz6;->Auto:Liz6;

    .line 137
    .line 138
    :goto_1
    move-object v14, v1

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_3
    sget-boolean v1, Lmp6;->g:Z

    .line 145
    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    sget-object v1, Liz6;->Root:Liz6;

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    invoke-static {}, Laq6;->c()Lz84;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    sget-object v1, Liz6;->Root:Liz6;

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    invoke-static {}, Lmp6;->g()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    sget-object v1, Liz6;->Shizuku:Liz6;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    sget-object v1, Liz6;->Local:Liz6;

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_7
    sget-object v1, Liz6;->Root:Liz6;

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_8
    sget-object v1, Liz6;->Local:Liz6;

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :goto_2
    new-instance v15, Llx7;

    .line 179
    .line 180
    move-object/from16 v6, p3

    .line 181
    .line 182
    move-object v1, v15

    .line 183
    invoke-direct/range {v1 .. v6}, Llx7;-><init>(Ljava/lang/Long;Lkh6;Lkh6;Lkh6;Lrt3;)V

    .line 184
    .line 185
    .line 186
    move-object/from16 v9, p0

    .line 187
    .line 188
    invoke-static/range {v9 .. v15}, Lmz6;->k(Lq63;Lq63;Lf27;JLiz6;Llx7;)V

    .line 189
    .line 190
    .line 191
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    .line 192
    .line 193
    iget-wide v3, v4, Lkh6;->a:J

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v5, "Extracted "

    .line 198
    .line 199
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v3, " / "

    .line 206
    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v18

    .line 220
    const/16 v20, 0x4

    .line 221
    .line 222
    const/16 v21, 0x0

    .line 223
    .line 224
    const-string v17, "Extractor"

    .line 225
    .line 226
    const/16 v19, 0x0

    .line 227
    .line 228
    invoke-static/range {v16 .. v21}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    if-eqz v2, :cond_a

    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 234
    .line 235
    .line 236
    move-result-wide v0

    .line 237
    cmp-long v0, v0, v7

    .line 238
    .line 239
    if-gtz v0, :cond_9

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_9
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    move-object/from16 v6, p3

    .line 247
    .line 248
    invoke-interface {v6, v2, v2, v0}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    :cond_a
    :goto_3
    return-void
.end method
