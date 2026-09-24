.class public final Lokhttp3/internal/authenticator/JavaNetAuthenticator;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/authenticator/JavaNetAuthenticator$WhenMappings;
    }
.end annotation


# direct methods
.method public static c(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lokhttp3/internal/authenticator/JavaNetAuthenticator$WhenMappings;->a:[I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    :goto_0
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object p0, p1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p2, p0}, Lokhttp3/Dns;->a(Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/net/InetAddress;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    check-cast p0, Ljava/net/InetSocketAddress;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return-object p0
.end method


# virtual methods
.method public final b(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Lokhttp3/Response;->a()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v1, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 10
    .line 11
    iget-object v4, v3, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 12
    .line 13
    iget v1, v1, Lokhttp3/Response;->d:I

    .line 14
    .line 15
    const/16 v5, 0x197

    .line 16
    .line 17
    if-ne v1, v5, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v5, v0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 28
    .line 29
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v6, :cond_9

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lokhttp3/Challenge;

    .line 45
    .line 46
    iget-object v8, v6, Lokhttp3/Challenge;->a:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v14, v6, Lokhttp3/Challenge;->a:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v6, v6, Lokhttp3/Challenge;->b:Ljava/util/Map;

    .line 51
    .line 52
    const-string v9, "Basic"

    .line 53
    .line 54
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-nez v8, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-object v8, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 64
    .line 65
    if-eqz v8, :cond_4

    .line 66
    .line 67
    iget-object v8, v8, Lokhttp3/Address;->a:Lokhttp3/Dns;

    .line 68
    .line 69
    if-nez v8, :cond_5

    .line 70
    .line 71
    :cond_4
    move-object v8, v7

    .line 72
    :cond_5
    const-string v9, "realm"

    .line 73
    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    check-cast v10, Ljava/net/InetSocketAddress;

    .line 84
    .line 85
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    move-object v12, v10

    .line 90
    invoke-static {v5, v4, v8}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->c(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getPort()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    iget-object v12, v4, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    move-object v13, v9

    .line 105
    check-cast v13, Ljava/lang/String;

    .line 106
    .line 107
    :try_start_0
    new-instance v15, Ljava/net/URL;

    .line 108
    .line 109
    iget-object v9, v4, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v15, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    sget-object v16, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 115
    .line 116
    move-object v9, v11

    .line 117
    move v11, v8

    .line 118
    invoke-static/range {v9 .. v16}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    goto :goto_3

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    return-object v7

    .line 128
    :cond_6
    iget-object v10, v4, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {v5, v4, v8}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->c(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    iget v11, v4, Lokhttp3/HttpUrl;->e:I

    .line 138
    .line 139
    iget-object v12, v4, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 140
    .line 141
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    move-object v13, v9

    .line 146
    check-cast v13, Ljava/lang/String;

    .line 147
    .line 148
    :try_start_1
    new-instance v15, Ljava/net/URL;

    .line 149
    .line 150
    iget-object v9, v4, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 151
    .line 152
    invoke-direct {v15, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 153
    .line 154
    .line 155
    sget-object v16, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 156
    .line 157
    move-object v9, v10

    .line 158
    move-object v10, v8

    .line 159
    invoke-static/range {v9 .. v16}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    :goto_3
    if-eqz v7, :cond_2

    .line 164
    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    const-string v0, "Proxy-Authorization"

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_7
    const-string v0, "Authorization"

    .line 171
    .line 172
    :goto_4
    invoke-virtual {v7}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    new-instance v4, Ljava/lang/String;

    .line 187
    .line 188
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    .line 189
    .line 190
    .line 191
    const-string v2, "charset"

    .line 192
    .line 193
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Ljava/lang/String;

    .line 198
    .line 199
    if-eqz v2, :cond_8

    .line 200
    .line 201
    :try_start_2
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :catch_1
    :cond_8
    sget-object v2, Lf51;->e:Ljava/nio/charset/Charset;

    .line 210
    .line 211
    :goto_5
    invoke-static {v1, v4, v2}, Lokhttp3/Credentials;->a(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v3}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    iget-object v3, v2, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 220
    .line 221
    invoke-static {v3, v0, v1, v2}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    return-object v0

    .line 226
    :catch_2
    move-exception v0

    .line 227
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    :cond_9
    return-object v7
.end method
