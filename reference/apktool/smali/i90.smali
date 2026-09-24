.class public final Li90;
.super Landroid/os/AsyncTask;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ll58;

.field public final b:Lt91;

.field public final c:Lge;

.field public final d:Lj90;

.field public final e:Llv1;

.field public final f:Z

.field public g:Lz80;


# direct methods
.method public constructor <init>(Ll58;Lt91;Lj90;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    sget-object v0, Lge;->b:Lge;

    .line 2
    .line 3
    sget-object v1, Llv1;->f:Llv1;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Li90;->a:Ll58;

    .line 9
    .line 10
    iput-object p2, p0, Li90;->b:Lt91;

    .line 11
    .line 12
    iput-object v0, p0, Li90;->c:Lge;

    .line 13
    .line 14
    iput-object v1, p0, Li90;->e:Llv1;

    .line 15
    .line 16
    iput-object p3, p0, Li90;->d:Lj90;

    .line 17
    .line 18
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Li90;->f:Z

    .line 23
    .line 24
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1
    const-string v0, "Accept"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "application/json"

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    const-string v0, "Failed to complete exchange request"

    .line 2
    .line 3
    check-cast p1, [Ljava/lang/Void;

    .line 4
    .line 5
    iget-object p1, p0, Li90;->b:Lt91;

    .line 6
    .line 7
    iget-object v1, p0, Li90;->a:Ll58;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_0
    iget-object v5, p0, Li90;->c:Lge;

    .line 13
    .line 14
    iget-object v6, v1, Ll58;->a:Ll90;

    .line 15
    .line 16
    iget-object v7, v1, Ll58;->c:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v6, v6, Ll90;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v6, Landroid/net/Uri;

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v6}, Lge;->x(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v6, "POST"

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v6, "Content-Type"

    .line 35
    .line 36
    const-string v8, "application/x-www-form-urlencoded"

    .line 37
    .line 38
    invoke-virtual {v5, v6, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Li90;->a(Ljava/net/HttpURLConnection;)V

    .line 42
    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ll58;->a()Ljava/util/HashMap;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {p1, v7}, Lt91;->i(Ljava/lang/String;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :catch_0
    move-exception p1

    .line 69
    move-object v1, v4

    .line 70
    goto :goto_2

    .line 71
    :catch_1
    move-exception p1

    .line 72
    move-object v1, v4

    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_0
    :goto_0
    invoke-static {v1}, Lpe4;->k(Ljava/util/HashMap;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v1, "Content-Length"

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v5, v1, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-direct {v1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    const/16 v1, 0xc8

    .line 112
    .line 113
    if-lt p1, v1, :cond_1

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    const/16 v1, 0x12c

    .line 120
    .line 121
    if-ge p1, v1, :cond_1

    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 129
    .line 130
    .line 131
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_1
    :try_start_1
    invoke-static {p1}, Lnc8;->W(Ljava/io/InputStream;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-instance v5, Lorg/json/JSONObject;

    .line 137
    .line 138
    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    .line 140
    .line 141
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    .line 143
    .line 144
    :catch_2
    return-object v5

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    move-object v4, p1

    .line 147
    goto :goto_6

    .line 148
    :catch_3
    move-exception v1

    .line 149
    move-object v9, v1

    .line 150
    move-object v1, p1

    .line 151
    move-object p1, v9

    .line 152
    goto :goto_2

    .line 153
    :catch_4
    move-exception v1

    .line 154
    move-object v9, v1

    .line 155
    move-object v1, p1

    .line 156
    move-object p1, v9

    .line 157
    goto :goto_4

    .line 158
    :goto_2
    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    .line 159
    .line 160
    invoke-static {}, Lj15;->e()Lj15;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v5, v2, p1, v0, v3}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    sget-object v0, Lx80;->d:Lz80;

    .line 168
    .line 169
    invoke-static {v0, p1}, Lz80;->g(Lz80;Ljava/lang/Exception;)Lz80;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iput-object p1, p0, Li90;->g:Lz80;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 174
    .line 175
    if-eqz v1, :cond_2

    .line 176
    .line 177
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :catchall_2
    move-exception p0

    .line 182
    move-object v4, v1

    .line 183
    goto :goto_6

    .line 184
    :goto_4
    :try_start_5
    new-array v3, v3, [Ljava/lang/Object;

    .line 185
    .line 186
    invoke-static {}, Lj15;->e()Lj15;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5, v2, p1, v0, v3}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    sget-object v0, Lx80;->c:Lz80;

    .line 194
    .line 195
    invoke-static {v0, p1}, Lz80;->g(Lz80;Ljava/lang/Exception;)Lz80;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iput-object p1, p0, Li90;->g:Lz80;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 200
    .line 201
    if-eqz v1, :cond_2

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :catch_5
    :cond_2
    :goto_5
    return-object v4

    .line 205
    :goto_6
    if-eqz v4, :cond_3

    .line 206
    .line 207
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 208
    .line 209
    .line 210
    :catch_6
    :cond_3
    throw p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 14

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v0, p0, Li90;->a:Ll58;

    .line 4
    .line 5
    iget-object v1, p0, Li90;->g:Lz80;

    .line 6
    .line 7
    iget-object v2, p0, Li90;->d:Lj90;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v2, v3, v1}, Lj90;->p(Ln58;Lz80;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v1, "error"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_6

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object v0, Ly80;->b:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lz80;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Ly80;->a:Lz80;

    .line 40
    .line 41
    :goto_0
    const-string v1, "error_description"

    .line 42
    .line 43
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v4, "error_uri"

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    move-object p1, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_1
    new-instance v4, Lz80;

    .line 62
    .line 63
    iget v5, v0, Lz80;->a:I

    .line 64
    .line 65
    iget v6, v0, Lz80;->b:I

    .line 66
    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    :goto_2
    move-object v7, p0

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object p0, v0, Lz80;->c:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_3
    if-eqz v1, :cond_4

    .line 75
    .line 76
    :goto_4
    move-object v8, v1

    .line 77
    goto :goto_5

    .line 78
    :cond_4
    iget-object v1, v0, Lz80;->d:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :goto_5
    if-eqz p1, :cond_5

    .line 82
    .line 83
    :goto_6
    move-object v9, p1

    .line 84
    goto :goto_7

    .line 85
    :cond_5
    iget-object p1, v0, Lz80;->e:Landroid/net/Uri;

    .line 86
    .line 87
    goto :goto_6

    .line 88
    :goto_7
    const/4 v10, 0x0

    .line 89
    invoke-direct/range {v4 .. v10}, Lz80;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_8

    .line 93
    :catch_0
    move-exception v0

    .line 94
    move-object p0, v0

    .line 95
    sget-object p1, Lx80;->d:Lz80;

    .line 96
    .line 97
    invoke-static {p1, p0}, Lz80;->g(Lz80;Ljava/lang/Exception;)Lz80;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    :goto_8
    invoke-interface {v2, v3, v4}, Lj90;->p(Ln58;Lz80;)V

    .line 102
    .line 103
    .line 104
    goto :goto_c

    .line 105
    :cond_6
    :try_start_1
    new-instance v1, Lm58;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "request cannot be null"

    .line 111
    .line 112
    invoke-static {v0, v4}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, v1, Lm58;->a:Ll58;

    .line 116
    .line 117
    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 118
    .line 119
    iput-object v4, v1, Lm58;->h:Ljava/util/Map;

    .line 120
    .line 121
    invoke-virtual {v1, p1}, Lm58;->a(Lorg/json/JSONObject;)V

    .line 122
    .line 123
    .line 124
    new-instance v5, Ln58;

    .line 125
    .line 126
    iget-object v6, v1, Lm58;->a:Ll58;

    .line 127
    .line 128
    iget-object v7, v1, Lm58;->b:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v8, v1, Lm58;->c:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v9, v1, Lm58;->d:Ljava/lang/Long;

    .line 133
    .line 134
    iget-object v10, v1, Lm58;->e:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v11, v1, Lm58;->f:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v12, v1, Lm58;->g:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v13, v1, Lm58;->h:Ljava/util/Map;

    .line 141
    .line 142
    invoke-direct/range {v5 .. v13}, Ln58;-><init>(Ll58;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 143
    .line 144
    .line 145
    if-eqz v10, :cond_7

    .line 146
    .line 147
    :try_start_2
    invoke-static {v10}, Lm94;->a(Ljava/lang/String;)Lm94;

    .line 148
    .line 149
    .line 150
    move-result-object p1
    :try_end_2
    .catch Ll94; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    :try_start_3
    iget-object v1, p0, Li90;->e:Llv1;

    .line 152
    .line 153
    iget-boolean p0, p0, Li90;->f:Z

    .line 154
    .line 155
    invoke-virtual {p1, v0, v1, p0}, Lm94;->b(Ll58;Llv1;Z)V
    :try_end_3
    .catch Lz80; {:try_start_3 .. :try_end_3} :catch_1

    .line 156
    .line 157
    .line 158
    goto :goto_b

    .line 159
    :catch_1
    move-exception v0

    .line 160
    move-object p0, v0

    .line 161
    invoke-interface {v2, v3, p0}, Lj90;->p(Ln58;Lz80;)V

    .line 162
    .line 163
    .line 164
    goto :goto_c

    .line 165
    :catch_2
    move-exception v0

    .line 166
    :goto_9
    move-object p0, v0

    .line 167
    goto :goto_a

    .line 168
    :catch_3
    move-exception v0

    .line 169
    goto :goto_9

    .line 170
    :goto_a
    sget-object p1, Lx80;->e:Lz80;

    .line 171
    .line 172
    invoke-static {p1, p0}, Lz80;->g(Lz80;Ljava/lang/Exception;)Lz80;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-interface {v2, v3, p0}, Lj90;->p(Ln58;Lz80;)V

    .line 177
    .line 178
    .line 179
    goto :goto_c

    .line 180
    :cond_7
    :goto_b
    iget-object p0, v0, Ll58;->a:Ll90;

    .line 181
    .line 182
    iget-object p0, p0, Ll90;->c:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p0, Landroid/net/Uri;

    .line 185
    .line 186
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    const-string p1, "Token exchange with %s completed"

    .line 191
    .line 192
    invoke-static {p1, p0}, Lj15;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v2, v5, v3}, Lj90;->p(Ln58;Lz80;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :catch_4
    move-exception v0

    .line 200
    move-object p0, v0

    .line 201
    sget-object p1, Lx80;->d:Lz80;

    .line 202
    .line 203
    invoke-static {p1, p0}, Lz80;->g(Lz80;Ljava/lang/Exception;)Lz80;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-interface {v2, v3, p0}, Lj90;->p(Ln58;Lz80;)V

    .line 208
    .line 209
    .line 210
    :goto_c
    return-void
.end method
