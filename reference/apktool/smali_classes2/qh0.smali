.class public final synthetic Lqh0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lst3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lno2;


# direct methods
.method public synthetic constructor <init>(Lno2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lqh0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lqh0;->b:Lno2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lqh0;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object p0, p0, Lqh0;->b:Lno2;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Ld82;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Long;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    check-cast p2, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast p3, Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    check-cast p4, Ljava/io/OutputStream;

    .line 30
    .line 31
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p3, p0, Ld82;->n:Lbr2;

    .line 35
    .line 36
    iget-object p0, p0, Lno2;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v0, Lokhttp3/Request$Builder;

    .line 45
    .line 46
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "/2/files/download"

    .line 50
    .line 51
    invoke-virtual {p3, v4}, Lbr2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v4, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 59
    .line 60
    const-string v4, ""

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-static {v4, v5}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v5, "POST"

    .line 68
    .line 69
    invoke-virtual {v0, v5, v4}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 70
    .line 71
    .line 72
    new-instance v4, Lfl4;

    .line 73
    .line 74
    invoke-direct {v4}, Lfl4;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "path"

    .line 78
    .line 79
    invoke-virtual {v4, v5, p0}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v4}, Lx13;->T(Lfl4;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    iget-object v4, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 87
    .line 88
    const-string v5, "Dropbox-API-Arg"

    .line 89
    .line 90
    invoke-virtual {v4, v5, p0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object p0, Lbr2;->h:Lokhttp3/MediaType;

    .line 94
    .line 95
    iget-object p0, p0, Lokhttp3/MediaType;->a:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object v4, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 101
    .line 102
    const-string v5, "Content-Type"

    .line 103
    .line 104
    invoke-virtual {v4, v5, p0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-wide/16 v4, 0x0

    .line 108
    .line 109
    cmp-long p0, p1, v4

    .line 110
    .line 111
    if-lez p0, :cond_0

    .line 112
    .line 113
    add-long/2addr p1, v2

    .line 114
    const-wide/16 v4, 0x1

    .line 115
    .line 116
    sub-long/2addr p1, v4

    .line 117
    const-string p0, "bytes="

    .line 118
    .line 119
    const-string v4, "-"

    .line 120
    .line 121
    invoke-static {p0, v4, v2, v3}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    iget-object p1, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 133
    .line 134
    const-string p2, "Range"

    .line 135
    .line 136
    invoke-virtual {p1, p2, p0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_0
    new-instance p0, Lokhttp3/Request;

    .line 140
    .line 141
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 142
    .line 143
    .line 144
    const/4 p1, 0x1

    .line 145
    invoke-virtual {p3, p0, p1, p1}, Lbr2;->c(Lokhttp3/Request;ZZ)Lokhttp3/Response;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Lbr2;->b(Lokhttp3/Response;)V

    .line 150
    .line 151
    .line 152
    :try_start_0
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 153
    .line 154
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const/high16 p2, 0x40000

    .line 159
    .line 160
    invoke-static {p1, p4, p2}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 164
    .line 165
    .line 166
    return-object v1

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    move-object p1, v0

    .line 169
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    move-object p2, v0

    .line 172
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    throw p2

    .line 176
    :pswitch_0
    check-cast p0, Lrh0;

    .line 177
    .line 178
    check-cast p1, Ljava/lang/Long;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 181
    .line 182
    .line 183
    move-result-wide v5

    .line 184
    check-cast p2, Ljava/lang/Long;

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 187
    .line 188
    .line 189
    move-result-wide v7

    .line 190
    check-cast p3, Ljava/lang/Long;

    .line 191
    .line 192
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    move-object v4, p4

    .line 196
    check-cast v4, Ljava/io/OutputStream;

    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    :try_start_2
    iget-object v2, p0, Lrh0;->n:Lkh0;

    .line 202
    .line 203
    iget-object v3, p0, Lno2;->a:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual/range {v2 .. v8}, Lkh0;->o(Ljava/lang/String;Ljava/io/OutputStream;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    .line 207
    .line 208
    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    .line 209
    .line 210
    .line 211
    return-object v1

    .line 212
    :catchall_2
    move-exception v0

    .line 213
    move-object p0, v0

    .line 214
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 215
    :catchall_3
    move-exception v0

    .line 216
    move-object p1, v0

    .line 217
    invoke-static {v4, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
