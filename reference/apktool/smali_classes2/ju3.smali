.class public final Lju3;
.super Lxh2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Ld04;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ld04;Lzv1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lxh2;-><init>(Lzv1;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lju3;->c:Ld04;

    .line 8
    .line 9
    const-string p1, "GRestDeleteSession"

    .line 10
    .line 11
    iput-object p1, p0, Lju3;->d:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lju3;->e(Ljava/util/List;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lju3;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ljava/util/List;Z)Z
    .locals 13

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    :try_start_0
    iget-object v0, p0, Lju3;->c:Ld04;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ld04;->b(Ljava/util/ArrayList;)Lxz3;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v3, v0, Lxz3;->c:Ljava/util/ArrayList;

    .line 54
    .line 55
    iget-object v4, v0, Lxz3;->a:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-static {v4, p1}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, v0, Lxz3;->b:Ljava/lang/Long;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 69
    .line 70
    iget-object v9, p0, Lju3;->d:Ljava/lang/String;

    .line 71
    .line 72
    const-string v4, "; "

    .line 73
    .line 74
    new-instance v7, Lnu;

    .line 75
    .line 76
    const/4 v5, 0x5

    .line 77
    invoke-direct {v7, v5}, Lnu;-><init>(I)V

    .line 78
    .line 79
    .line 80
    const/16 v8, 0x1e

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v5, "deleteFilesByIds: Failed Google Drive batch parts: "

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    const/4 v8, 0x4

    .line 106
    move-object v5, v9

    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v7, 0x0

    .line 109
    move-object v4, v0

    .line 110
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    move-object v6, v0

    .line 116
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 117
    .line 118
    const/16 v8, 0x8

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    iget-object v4, p0, Lju3;->d:Ljava/lang/String;

    .line 122
    .line 123
    const-string v5, "deleteFilesByIds: Error during batch deletion"

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    instance-of v0, v6, Lvz3;

    .line 130
    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    check-cast v6, Lvz3;

    .line 134
    .line 135
    invoke-static {v6}, Lrs9;->w(Lvz3;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    const/4 v11, 0x4

    .line 140
    const/4 v12, 0x0

    .line 141
    iget-object v8, p0, Lju3;->d:Ljava/lang/String;

    .line 142
    .line 143
    const/4 v10, 0x0

    .line 144
    move-object v7, v3

    .line 145
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, v6, Lvz3;->d:Ljava/lang/Long;

    .line 149
    .line 150
    move-object v2, v0

    .line 151
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 155
    if-eqz p2, :cond_6

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_6

    .line 162
    .line 163
    if-eqz v2, :cond_5

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v1

    .line 169
    goto :goto_2

    .line 170
    :cond_5
    const-wide/16 v1, 0x1388

    .line 171
    .line 172
    :goto_2
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    .line 174
    .line 175
    :catch_1
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    const-string v1, "Retrying deletion for "

    .line 182
    .line 183
    const-string v2, " file ids"

    .line 184
    .line 185
    invoke-static {p2, v1, v2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    const/4 v7, 0x4

    .line 190
    const/4 v8, 0x0

    .line 191
    iget-object v4, p0, Lju3;->d:Ljava/lang/String;

    .line 192
    .line 193
    const/4 v6, 0x0

    .line 194
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1, v0}, Lju3;->e(Ljava/util/List;Z)Z

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    return p0

    .line 202
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    if-eqz p0, :cond_7

    .line 207
    .line 208
    :goto_3
    const/4 p0, 0x1

    .line 209
    return p0

    .line 210
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    const-string p2, "/"

    .line 219
    .line 220
    const-string v1, " Google Drive files"

    .line 221
    .line 222
    const-string v2, "Failed deleting "

    .line 223
    .line 224
    invoke-static {v2, p0, p2, v1, p1}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return v0
.end method
