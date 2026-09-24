.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final a:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->a:Lokhttp3/CookieJar;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 11

    .line 1
    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 8
    .line 9
    iget-object v3, v0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 10
    .line 11
    iget-object v0, v0, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 12
    .line 13
    const-wide/16 v4, -0x1

    .line 14
    .line 15
    const-string v6, "Content-Type"

    .line 16
    .line 17
    const-string v7, "Content-Length"

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    if-eqz v8, :cond_0

    .line 26
    .line 27
    iget-object v8, v8, Lokhttp3/MediaType;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v9, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 33
    .line 34
    invoke-virtual {v9, v6, v8}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0}, Lokhttp3/RequestBody;->a()J

    .line 38
    .line 39
    .line 40
    move-result-wide v8

    .line 41
    cmp-long v0, v8, v4

    .line 42
    .line 43
    const-string v10, "Transfer-Encoding"

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v8, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 55
    .line 56
    invoke-virtual {v8, v7, v0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 60
    .line 61
    invoke-virtual {v0, v10}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string v0, "chunked"

    .line 66
    .line 67
    iget-object v8, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 68
    .line 69
    invoke-virtual {v8, v10, v0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 73
    .line 74
    invoke-virtual {v0, v7}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    const-string v0, "Host"

    .line 78
    .line 79
    invoke-virtual {v3, v0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const/4 v9, 0x0

    .line 84
    if-nez v8, :cond_3

    .line 85
    .line 86
    invoke-static {v2, v9}, Lokhttp3/internal/_UtilJvmKt;->i(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    iget-object v10, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 91
    .line 92
    invoke-virtual {v10, v0, v8}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    const-string v0, "Connection"

    .line 96
    .line 97
    invoke-virtual {v3, v0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    if-nez v8, :cond_4

    .line 102
    .line 103
    const-string v8, "Keep-Alive"

    .line 104
    .line 105
    iget-object v10, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 106
    .line 107
    invoke-virtual {v10, v0, v8}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    const-string v0, "Accept-Encoding"

    .line 111
    .line 112
    invoke-virtual {v3, v0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    const-string v10, "gzip"

    .line 117
    .line 118
    if-nez v8, :cond_5

    .line 119
    .line 120
    const-string v8, "Range"

    .line 121
    .line 122
    invoke-virtual {v3, v8}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    if-nez v8, :cond_5

    .line 127
    .line 128
    iget-object v8, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 129
    .line 130
    invoke-virtual {v8, v0, v10}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 v9, 0x1

    .line 134
    :cond_5
    iget-object p0, p0, Lokhttp3/internal/http/BridgeInterceptor;->a:Lokhttp3/CookieJar;

    .line 135
    .line 136
    invoke-interface {p0, v2}, Lokhttp3/CookieJar;->b(Lokhttp3/HttpUrl;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "User-Agent"

    .line 140
    .line 141
    invoke-virtual {v3, v0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-nez v2, :cond_6

    .line 146
    .line 147
    const-string v2, "okhttp/5.2.1"

    .line 148
    .line 149
    iget-object v3, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 150
    .line 151
    invoke-virtual {v3, v0, v2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    new-instance v0, Lokhttp3/Request;

    .line 155
    .line 156
    invoke-direct {v0, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object v1, p1, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 164
    .line 165
    iget-object v2, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 166
    .line 167
    invoke-static {p0, v2, v1}, Lokhttp3/internal/http/HttpHeaders;->d(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lokhttp3/Response;->g()Lokhttp3/Response$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    iput-object v0, p0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 175
    .line 176
    if-eqz v9, :cond_7

    .line 177
    .line 178
    const-string v0, "Content-Encoding"

    .line 179
    .line 180
    invoke-static {v0, p1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_7

    .line 189
    .line 190
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_7

    .line 195
    .line 196
    iget-object v2, p1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 197
    .line 198
    if-eqz v2, :cond_7

    .line 199
    .line 200
    new-instance v3, Le24;

    .line 201
    .line 202
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->m()Lzw0;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-direct {v3, v2}, Le24;-><init>(Lzw0;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1, v0}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v7}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iput-object v0, p0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 228
    .line 229
    invoke-static {v6, p1}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    new-instance v0, Lokhttp3/internal/http/RealResponseBody;

    .line 234
    .line 235
    new-instance v1, Ltf6;

    .line 236
    .line 237
    invoke-direct {v1, v3}, Ltf6;-><init>(Lij7;)V

    .line 238
    .line 239
    .line 240
    invoke-direct {v0, p1, v4, v5, v1}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLtf6;)V

    .line 241
    .line 242
    .line 243
    iput-object v0, p0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 244
    .line 245
    :cond_7
    invoke-virtual {p0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    return-object p0
.end method
