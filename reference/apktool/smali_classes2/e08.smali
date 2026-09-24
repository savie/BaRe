.class public final synthetic Le08;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Le08;->a:I

    iput-object p2, p0, Le08;->c:Ljava/lang/Object;

    iput-object p3, p0, Le08;->b:Ljava/lang/Object;

    iput-object p4, p0, Le08;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkh6;J)V
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    iput p4, p0, Le08;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Le08;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Le08;->b:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Le08;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Le08;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Le08;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lyp8;

    .line 10
    .line 11
    iget-object v2, p0, Le08;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Ldy7;

    .line 14
    .line 15
    iget-object p0, p0, Le08;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ltt8;

    .line 18
    .line 19
    check-cast p1, Lgz7;

    .line 20
    .line 21
    sget-object v3, Lbe8;->a:Lbe8;

    .line 22
    .line 23
    iget-object v4, v0, Lyp8;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 24
    .line 25
    iget-boolean v4, v4, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->L:Z

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    sget-object p1, Lgz7;->COMPLETE:Lgz7;

    .line 30
    .line 31
    :cond_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    xor-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ldy7;->c(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p1, v0, Lyp8;->f:Lkm5;

    .line 50
    .line 51
    invoke-virtual {p1}, Lkm5;->w()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lpw6;->o(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-object v3

    .line 58
    :pswitch_0
    iget-object v0, p0, Le08;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lyp8;

    .line 61
    .line 62
    iget-object v2, p0, Le08;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Ldy7;

    .line 65
    .line 66
    iget-object p0, p0, Le08;->d:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Lwp8;

    .line 69
    .line 70
    check-cast p1, Lgz7;

    .line 71
    .line 72
    sget-object v3, Lbe8;->a:Lbe8;

    .line 73
    .line 74
    iget-object v4, v0, Lyp8;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 75
    .line 76
    iget-boolean v4, v4, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->L:Z

    .line 77
    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    sget-object p1, Lgz7;->COMPLETE:Lgz7;

    .line 81
    .line 82
    :cond_3
    if-nez p1, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    xor-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Ldy7;->c(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    iget-object p1, v0, Lyp8;->f:Lkm5;

    .line 101
    .line 102
    invoke-virtual {p1}, Lkm5;->w()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lpw6;->o(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_1
    return-object v3

    .line 109
    :pswitch_1
    iget-object v0, p0, Le08;->c:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    .line 113
    iget-object v1, p0, Le08;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Ljava/lang/String;

    .line 116
    .line 117
    iget-object p0, p0, Le08;->d:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p0, Lkh6;

    .line 120
    .line 121
    check-cast p1, Ljava/lang/Long;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const-class v1, Lfo8;

    .line 130
    .line 131
    monitor-enter v1

    .line 132
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    iget-wide v4, p0, Lkh6;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    sub-long/2addr v2, v4

    .line 139
    const-wide/16 v4, 0x7d0

    .line 140
    .line 141
    cmp-long p1, v2, v4

    .line 142
    .line 143
    if-gtz p1, :cond_6

    .line 144
    .line 145
    monitor-exit v1

    .line 146
    goto :goto_2

    .line 147
    :cond_6
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-static {p1}, Lel1;->o1(Ljava/util/Collection;)J

    .line 155
    .line 156
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v2

    .line 161
    iput-wide v2, p0, Lkh6;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    monitor-exit v1

    .line 164
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 165
    .line 166
    return-object p0

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    throw p0

    .line 170
    :pswitch_2
    iget-object v0, p0, Le08;->c:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v0, Lh08;

    .line 173
    .line 174
    iget-object v1, p0, Le08;->b:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v1, Ljava/lang/String;

    .line 177
    .line 178
    iget-object p0, p0, Le08;->d:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p0, Ljava/lang/String;

    .line 181
    .line 182
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    new-instance v2, Lokhttp3/Request$Builder;

    .line 188
    .line 189
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getApiDomain()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    const-string v4, "/openapi/api/precreate"

    .line 197
    .line 198
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {v3, v4, p1}, Lh08;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iput-object p1, v2, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 210
    .line 211
    new-instance p1, Lokhttp3/FormBody$Builder;

    .line 212
    .line 213
    const/4 v0, 0x0

    .line 214
    invoke-direct {p1, v0}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 215
    .line 216
    .line 217
    const-string v0, "path"

    .line 218
    .line 219
    invoke-virtual {p1, v0, v1}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string v0, "autoinit"

    .line 223
    .line 224
    const-string v1, "1"

    .line 225
    .line 226
    invoke-virtual {p1, v0, v1}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v0, "block_list"

    .line 230
    .line 231
    invoke-virtual {p1, v0, p0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    const-string p1, "POST"

    .line 239
    .line 240
    invoke-virtual {v2, p1, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 241
    .line 242
    .line 243
    new-instance p0, Lokhttp3/Request;

    .line 244
    .line 245
    invoke-direct {p0, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 246
    .line 247
    .line 248
    return-object p0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
