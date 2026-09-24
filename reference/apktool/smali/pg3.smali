.class public final Lpg3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqg3;


# static fields
.field public static final m:Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/firebase/FirebaseApp;

.field public final b:Lng3;

.field public final c:Lro;

.field public final d:Lhi8;

.field public final e:Lps4;

.field public final f:Lwe6;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Lo77;

.field public j:Ljava/lang/String;

.field public final k:Ljava/util/HashSet;

.field public final l:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lpg3;->m:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lga6;Ljava/util/concurrent/ExecutorService;Lo77;)V
    .locals 5

    .line 1
    new-instance v0, Lng3;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p2}, Lng3;-><init>(Landroid/content/Context;Lga6;)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Lro;

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    invoke-direct {p2, p1, v1}, Lro;-><init>(Lcom/google/firebase/FirebaseApp;I)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lge;->k:Lge;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lge;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lge;->k:Lge;

    .line 27
    .line 28
    :cond_0
    sget-object v1, Lge;->k:Lge;

    .line 29
    .line 30
    sget-object v2, Lhi8;->c:Lhi8;

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    new-instance v2, Lhi8;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Lhi8;-><init>(Lge;)V

    .line 37
    .line 38
    .line 39
    sput-object v2, Lhi8;->c:Lhi8;

    .line 40
    .line 41
    :cond_1
    sget-object v1, Lhi8;->c:Lhi8;

    .line 42
    .line 43
    new-instance v2, Lps4;

    .line 44
    .line 45
    new-instance v3, Log3;

    .line 46
    .line 47
    invoke-direct {v3, p1}, Log3;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Lps4;-><init>(Lga6;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lwe6;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v4, Ljava/lang/Object;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v4, p0, Lpg3;->g:Ljava/lang/Object;

    .line 67
    .line 68
    new-instance v4, Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lpg3;->k:Ljava/util/HashSet;

    .line 74
    .line 75
    new-instance v4, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v4, p0, Lpg3;->l:Ljava/util/ArrayList;

    .line 81
    .line 82
    iput-object p1, p0, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 83
    .line 84
    iput-object v0, p0, Lpg3;->b:Lng3;

    .line 85
    .line 86
    iput-object p2, p0, Lpg3;->c:Lro;

    .line 87
    .line 88
    iput-object v1, p0, Lpg3;->d:Lhi8;

    .line 89
    .line 90
    iput-object v2, p0, Lpg3;->e:Lps4;

    .line 91
    .line 92
    iput-object v3, p0, Lpg3;->f:Lwe6;

    .line 93
    .line 94
    iput-object p3, p0, Lpg3;->h:Ljava/util/concurrent/ExecutorService;

    .line 95
    .line 96
    iput-object p4, p0, Lpg3;->i:Lo77;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget-object v0, Lpg3;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lyf1;->h(Landroid/content/Context;)Lyf1;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v2, p0, Lpg3;->c:Lro;

    .line 15
    .line 16
    invoke-virtual {v2}, Lro;->s()Lee0;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v3, v2, Lee0;->b:I

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x1

    .line 24
    if-eq v3, v4, :cond_1

    .line 25
    .line 26
    if-ne v3, v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v5, 0x0

    .line 30
    :cond_1
    :goto_0
    const/4 v3, 0x3

    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lpg3;->f(Lee0;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v5, p0, Lpg3;->c:Lro;

    .line 38
    .line 39
    invoke-virtual {v2}, Lee0;->a()Lde0;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v4, v2, Lde0;->a:Ljava/lang/String;

    .line 44
    .line 45
    iput v3, v2, Lde0;->b:I

    .line 46
    .line 47
    invoke-virtual {v2}, Lde0;->a()Lee0;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v5, v2}, Lro;->n(Lee0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 58
    .line 59
    :try_start_2
    invoke-virtual {v1}, Lyf1;->q()V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    goto :goto_4

    .line 65
    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    invoke-virtual {p0, v2}, Lpg3;->i(Lee0;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lpg3;->i:Lo77;

    .line 70
    .line 71
    new-instance v1, Lo10;

    .line 72
    .line 73
    invoke-direct {v1, p0, v3}, Lo10;-><init>(Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lo77;->execute(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :goto_3
    if-eqz v1, :cond_4

    .line 81
    .line 82
    :try_start_3
    invoke-virtual {v1}, Lyf1;->q()V

    .line 83
    .line 84
    .line 85
    :cond_4
    throw p0

    .line 86
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    throw p0
.end method

.method public final b(Lee0;)Lee0;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lpg3;->b:Lng3;

    .line 6
    .line 7
    iget-object v3, v1, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, v0, Lee0;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v5, v1, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 20
    .line 21
    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v6, v0, Lee0;->d:Ljava/lang/String;

    .line 30
    .line 31
    const-string v7, "Firebase Installations Service is unavailable. Please try again later."

    .line 32
    .line 33
    iget-object v8, v2, Lng3;->c:Luk6;

    .line 34
    .line 35
    invoke-virtual {v8}, Luk6;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-eqz v9, :cond_c

    .line 40
    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v10, "projects/"

    .line 44
    .line 45
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v10, "/installations/"

    .line 52
    .line 53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, "/authTokens:generate"

    .line 60
    .line 61
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v4}, Lng3;->a(Ljava/lang/String;)Ljava/net/URL;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const/4 v10, 0x0

    .line 73
    :goto_0
    const/4 v11, 0x1

    .line 74
    if-gt v10, v11, :cond_b

    .line 75
    .line 76
    const v12, 0x8003

    .line 77
    .line 78
    .line 79
    invoke-static {v12}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4, v3}, Lng3;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    :try_start_0
    const-string v13, "POST"

    .line 87
    .line 88
    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v13, "Authorization"

    .line 92
    .line 93
    new-instance v14, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v15, "FIS_v2 "

    .line 99
    .line 100
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    invoke-virtual {v12, v13, v14}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v12, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 114
    .line 115
    .line 116
    invoke-static {v12}, Lng3;->h(Ljava/net/HttpURLConnection;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    invoke-virtual {v8, v13}, Luk6;->b(I)V

    .line 124
    .line 125
    .line 126
    const/16 v14, 0xc8

    .line 127
    .line 128
    if-lt v13, v14, :cond_0

    .line 129
    .line 130
    const/16 v14, 0x12c

    .line 131
    .line 132
    if-ge v13, v14, :cond_0

    .line 133
    .line 134
    move v14, v11

    .line 135
    goto :goto_1

    .line 136
    :cond_0
    const/4 v14, 0x0

    .line 137
    :goto_1
    const/4 v15, 0x2

    .line 138
    const/4 v9, 0x0

    .line 139
    if-eqz v14, :cond_1

    .line 140
    .line 141
    invoke-static {v12}, Lng3;->f(Ljava/net/HttpURLConnection;)Lne0;

    .line 142
    .line 143
    .line 144
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    goto/16 :goto_6

    .line 154
    .line 155
    :catch_0
    move/from16 v16, v10

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_1
    :try_start_1
    invoke-static {v12, v9, v3, v5}, Lng3;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .line 160
    .line 161
    const/16 v14, 0x191

    .line 162
    .line 163
    move/from16 v16, v10

    .line 164
    .line 165
    const-wide/16 v9, 0x0

    .line 166
    .line 167
    if-eq v13, v14, :cond_6

    .line 168
    .line 169
    const/16 v14, 0x194

    .line 170
    .line 171
    if-ne v13, v14, :cond_2

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_2
    const/16 v14, 0x1ad

    .line 175
    .line 176
    if-eq v13, v14, :cond_5

    .line 177
    .line 178
    const/16 v14, 0x1f4

    .line 179
    .line 180
    if-lt v13, v14, :cond_3

    .line 181
    .line 182
    const/16 v14, 0x258

    .line 183
    .line 184
    if-ge v13, v14, :cond_3

    .line 185
    .line 186
    :catch_1
    :goto_2
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_7

    .line 193
    .line 194
    :cond_3
    :try_start_2
    const-string v13, "Firebase-Installations"

    .line 195
    .line 196
    const-string v14, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 197
    .line 198
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    const/4 v13, 0x0

    .line 202
    or-int/2addr v13, v11

    .line 203
    int-to-byte v13, v13

    .line 204
    if-ne v13, v11, :cond_4

    .line 205
    .line 206
    new-instance v13, Lne0;

    .line 207
    .line 208
    const/4 v14, 0x0

    .line 209
    invoke-direct {v13, v14, v9, v10, v15}, Lne0;-><init>(Ljava/lang/String;JI)V
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .line 211
    .line 212
    :goto_3
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 216
    .line 217
    .line 218
    move-object v2, v13

    .line 219
    goto :goto_5

    .line 220
    :cond_4
    :try_start_3
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 221
    .line 222
    const-string v10, "Missing required properties: tokenExpirationTimestamp"

    .line 223
    .line 224
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v9

    .line 228
    :cond_5
    new-instance v9, Lrg3;

    .line 229
    .line 230
    const-string v10, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    .line 231
    .line 232
    invoke-direct {v9, v10}, Lkg3;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v9

    .line 236
    :cond_6
    :goto_4
    const/4 v13, 0x0

    .line 237
    or-int/2addr v13, v11

    .line 238
    int-to-byte v13, v13

    .line 239
    if-ne v13, v11, :cond_a

    .line 240
    .line 241
    new-instance v13, Lne0;

    .line 242
    .line 243
    const/4 v14, 0x3

    .line 244
    const/4 v15, 0x0

    .line 245
    invoke-direct {v13, v15, v9, v10, v14}, Lne0;-><init>(Ljava/lang/String;JI)V
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :goto_5
    iget v3, v2, Lne0;->c:I

    .line 250
    .line 251
    invoke-static {v3}, Ldj7;->A(I)I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_9

    .line 256
    .line 257
    if-eq v3, v11, :cond_8

    .line 258
    .line 259
    const/4 v2, 0x2

    .line 260
    if-ne v3, v2, :cond_7

    .line 261
    .line 262
    monitor-enter p0

    .line 263
    const/4 v14, 0x0

    .line 264
    :try_start_4
    iput-object v14, v1, Lpg3;->j:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 265
    .line 266
    monitor-exit p0

    .line 267
    invoke-virtual {v0}, Lee0;->a()Lde0;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iput v2, v0, Lde0;->b:I

    .line 272
    .line 273
    invoke-virtual {v0}, Lde0;->a()Lee0;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    return-object v0

    .line 278
    :catchall_1
    move-exception v0

    .line 279
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 280
    throw v0

    .line 281
    :cond_7
    new-instance v0, Lrg3;

    .line 282
    .line 283
    invoke-direct {v0, v7}, Lkg3;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v0

    .line 287
    :cond_8
    const-string v1, "BAD CONFIG"

    .line 288
    .line 289
    invoke-virtual {v0}, Lee0;->a()Lde0;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    iput-object v1, v0, Lde0;->g:Ljava/lang/String;

    .line 294
    .line 295
    const/4 v1, 0x5

    .line 296
    iput v1, v0, Lde0;->b:I

    .line 297
    .line 298
    invoke-virtual {v0}, Lde0;->a()Lee0;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    return-object v0

    .line 303
    :cond_9
    iget-object v3, v2, Lne0;->a:Ljava/lang/String;

    .line 304
    .line 305
    iget-wide v4, v2, Lne0;->b:J

    .line 306
    .line 307
    iget-object v1, v1, Lpg3;->d:Lhi8;

    .line 308
    .line 309
    iget-object v1, v1, Lhi8;->a:Lge;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 315
    .line 316
    .line 317
    move-result-wide v1

    .line 318
    const-wide/16 v6, 0x3e8

    .line 319
    .line 320
    div-long/2addr v1, v6

    .line 321
    invoke-virtual {v0}, Lee0;->a()Lde0;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    iput-object v3, v0, Lde0;->c:Ljava/lang/String;

    .line 326
    .line 327
    iput-wide v4, v0, Lde0;->e:J

    .line 328
    .line 329
    iget-byte v3, v0, Lde0;->h:B

    .line 330
    .line 331
    or-int/2addr v3, v11

    .line 332
    int-to-byte v3, v3

    .line 333
    iput-wide v1, v0, Lde0;->f:J

    .line 334
    .line 335
    const/16 v17, 0x2

    .line 336
    .line 337
    or-int/lit8 v1, v3, 0x2

    .line 338
    .line 339
    int-to-byte v1, v1

    .line 340
    iput-byte v1, v0, Lde0;->h:B

    .line 341
    .line 342
    invoke-virtual {v0}, Lde0;->a()Lee0;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    return-object v0

    .line 347
    :cond_a
    :try_start_6
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 348
    .line 349
    const-string v10, "Missing required properties: tokenExpirationTimestamp"

    .line 350
    .line 351
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v9
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 355
    :goto_6
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 356
    .line 357
    .line 358
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :goto_7
    add-int/lit8 v10, v16, 0x1

    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_b
    new-instance v0, Lrg3;

    .line 367
    .line 368
    invoke-direct {v0, v7}, Lkg3;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :cond_c
    new-instance v0, Lrg3;

    .line 373
    .line 374
    invoke-direct {v0, v7}, Lkg3;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v0
.end method

.method public final c()Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lpg3;->e()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lpg3;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljw3;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljw3;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lpg3;->g:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_1
    iget-object v3, p0, Lpg3;->l:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lpg3;->h:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    new-instance v2, Lyc;

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    invoke-direct {v2, p0, v3}, Lyc;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p0

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    throw v0
.end method

.method public final d()Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lpg3;->e()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Liv3;

    .line 10
    .line 11
    iget-object v2, p0, Lpg3;->d:Lhi8;

    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Liv3;-><init>(Lhi8;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lpg3;->g:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, p0, Lpg3;->l:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lpg3;->h:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    new-instance v2, Lu12;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v2, p0, v3}, Lu12;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object p0, p0, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 12
    .line 13
    invoke-static {v0, v1}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 25
    .line 26
    invoke-static {v0, v2}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 38
    .line 39
    invoke-static {v0, v2}, Lly8;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v3, Lhi8;->b:Ljava/util/regex/Pattern;

    .line 51
    .line 52
    const-string v3, ":"

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {v1, v0}, Lly8;->b(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sget-object v0, Lhi8;->b:Ljava/util/regex/Pattern;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-static {v2, p0}, Lly8;->b(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final f(Lee0;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "CHIME_ANDROID_SDK"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    :cond_0
    iget p1, p1, Lee0;->b:I

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-ne p1, v0, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Lpg3;->e:Lps4;

    .line 29
    .line 30
    invoke-virtual {p1}, Lps4;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lr94;

    .line 35
    .line 36
    iget-object v0, p1, Lr94;->a:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p1, Lr94;->a:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget-object v2, p1, Lr94;->a:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    const-string v3, "|S|id"

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    :try_start_2
    monitor-exit v0

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1}, Lr94;->a()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p0, p0, Lpg3;->f:Lwe6;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lwe6;->a()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_2
    return-object v2

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    :try_start_4
    throw p0

    .line 83
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    throw p0

    .line 85
    :cond_3
    iget-object p0, p0, Lpg3;->f:Lwe6;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lwe6;->a()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public final g(Lee0;)Lee0;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lee0;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v6, 0xb

    .line 16
    .line 17
    if-ne v2, v6, :cond_3

    .line 18
    .line 19
    iget-object v2, v0, Lpg3;->e:Lps4;

    .line 20
    .line 21
    invoke-virtual {v2}, Lps4;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lr94;

    .line 26
    .line 27
    iget-object v6, v2, Lr94;->a:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    monitor-enter v6

    .line 30
    :try_start_0
    sget-object v7, Lr94;->c:[Ljava/lang/String;

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    :goto_0
    if-ge v8, v3, :cond_2

    .line 34
    .line 35
    aget-object v9, v7, v8

    .line 36
    .line 37
    iget-object v10, v2, Lr94;->b:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v11, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v12, "|T|"

    .line 42
    .line 43
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v10, "|"

    .line 50
    .line 51
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iget-object v10, v2, Lr94;->a:Landroid/content/SharedPreferences;

    .line 62
    .line 63
    invoke-interface {v10, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    if-eqz v9, :cond_1

    .line 68
    .line 69
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-nez v10, :cond_1

    .line 74
    .line 75
    const-string v2, "{"

    .line 76
    .line 77
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 84
    .line 85
    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v7, "token"

    .line 89
    .line 90
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    move-object v5, v9

    .line 96
    :catch_0
    :goto_1
    :try_start_2
    monitor-exit v6

    .line 97
    goto :goto_3

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto :goto_2

    .line 100
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    monitor-exit v6

    .line 104
    goto :goto_3

    .line 105
    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    throw v0

    .line 107
    :cond_3
    :goto_3
    iget-object v2, v0, Lpg3;->b:Lng3;

    .line 108
    .line 109
    iget-object v6, v0, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 110
    .line 111
    invoke-virtual {v6}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v6}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    iget-object v7, v1, Lee0;->a:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v8, v0, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 122
    .line 123
    invoke-virtual {v8}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {v8}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    iget-object v9, v0, Lpg3;->a:Lcom/google/firebase/FirebaseApp;

    .line 132
    .line 133
    invoke-virtual {v9}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v9}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    const-string v10, "Firebase Installations Service is unavailable. Please try again later."

    .line 142
    .line 143
    iget-object v11, v2, Lng3;->c:Luk6;

    .line 144
    .line 145
    invoke-virtual {v11}, Luk6;->a()Z

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    if-eqz v12, :cond_c

    .line 150
    .line 151
    new-instance v12, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v13, "projects/"

    .line 154
    .line 155
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v13, "/installations"

    .line 162
    .line 163
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-static {v12}, Lng3;->a(Ljava/lang/String;)Ljava/net/URL;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    const/4 v13, 0x0

    .line 175
    :goto_4
    const/4 v14, 0x1

    .line 176
    if-gt v13, v14, :cond_b

    .line 177
    .line 178
    const v15, 0x8001

    .line 179
    .line 180
    .line 181
    invoke-static {v15}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v12, v6}, Lng3;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 185
    .line 186
    .line 187
    move-result-object v15

    .line 188
    :try_start_3
    const-string v4, "POST"

    .line 189
    .line 190
    invoke-virtual {v15, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v15, v14}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 194
    .line 195
    .line 196
    if-eqz v5, :cond_4

    .line 197
    .line 198
    const-string v4, "x-goog-fis-android-iid-migration-auth"

    .line 199
    .line 200
    invoke-virtual {v15, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :catchall_1
    move-exception v0

    .line 205
    goto/16 :goto_8

    .line 206
    .line 207
    :cond_4
    :goto_5
    invoke-static {v15, v7, v9}, Lng3;->g(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v11, v4}, Luk6;->b(I)V
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    .line 216
    .line 217
    const/16 v3, 0xc8

    .line 218
    .line 219
    if-lt v4, v3, :cond_5

    .line 220
    .line 221
    const/16 v3, 0x12c

    .line 222
    .line 223
    if-ge v4, v3, :cond_5

    .line 224
    .line 225
    move v3, v14

    .line 226
    goto :goto_6

    .line 227
    :cond_5
    const/4 v3, 0x0

    .line 228
    :goto_6
    if-eqz v3, :cond_6

    .line 229
    .line 230
    :try_start_4
    invoke-static {v15}, Lng3;->e(Ljava/net/HttpURLConnection;)Lud0;

    .line 231
    .line 232
    .line 233
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 234
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 238
    .line 239
    .line 240
    goto :goto_7

    .line 241
    :catch_1
    const/4 v3, 0x4

    .line 242
    goto/16 :goto_9

    .line 243
    .line 244
    :cond_6
    :try_start_5
    invoke-static {v15, v9, v6, v8}, Lng3;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 245
    .line 246
    .line 247
    const/16 v3, 0x1ad

    .line 248
    .line 249
    if-eq v4, v3, :cond_a

    .line 250
    .line 251
    const/16 v3, 0x1f4

    .line 252
    .line 253
    if-lt v4, v3, :cond_7

    .line 254
    .line 255
    const/16 v3, 0x258

    .line 256
    .line 257
    if-ge v4, v3, :cond_7

    .line 258
    .line 259
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 260
    .line 261
    .line 262
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 263
    .line 264
    .line 265
    const/4 v3, 0x4

    .line 266
    goto/16 :goto_a

    .line 267
    .line 268
    :cond_7
    :try_start_6
    const-string v3, "Firebase-Installations"

    .line 269
    .line 270
    const-string v4, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 271
    .line 272
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    new-instance v16, Lud0;

    .line 276
    .line 277
    const/16 v20, 0x0

    .line 278
    .line 279
    const/16 v19, 0x0

    .line 280
    .line 281
    const/16 v18, 0x0

    .line 282
    .line 283
    const/16 v17, 0x0

    .line 284
    .line 285
    const/16 v21, 0x2

    .line 286
    .line 287
    invoke-direct/range {v16 .. v21}, Lud0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lne0;I)V
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 288
    .line 289
    .line 290
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 291
    .line 292
    .line 293
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 294
    .line 295
    .line 296
    move-object/from16 v2, v16

    .line 297
    .line 298
    :goto_7
    iget v3, v2, Lud0;->e:I

    .line 299
    .line 300
    invoke-static {v3}, Ldj7;->A(I)I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-eqz v3, :cond_9

    .line 305
    .line 306
    if-ne v3, v14, :cond_8

    .line 307
    .line 308
    const-string v0, "BAD CONFIG"

    .line 309
    .line 310
    invoke-virtual {v1}, Lee0;->a()Lde0;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    iput-object v0, v1, Lde0;->g:Ljava/lang/String;

    .line 315
    .line 316
    const/4 v0, 0x5

    .line 317
    iput v0, v1, Lde0;->b:I

    .line 318
    .line 319
    invoke-virtual {v1}, Lde0;->a()Lee0;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    return-object v0

    .line 324
    :cond_8
    new-instance v0, Lrg3;

    .line 325
    .line 326
    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    .line 327
    .line 328
    invoke-direct {v0, v1}, Lkg3;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v0

    .line 332
    :cond_9
    iget-object v3, v2, Lud0;->b:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v4, v2, Lud0;->c:Ljava/lang/String;

    .line 335
    .line 336
    iget-object v0, v0, Lpg3;->d:Lhi8;

    .line 337
    .line 338
    iget-object v0, v0, Lhi8;->a:Lge;

    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 344
    .line 345
    .line 346
    move-result-wide v5

    .line 347
    const-wide/16 v7, 0x3e8

    .line 348
    .line 349
    div-long/2addr v5, v7

    .line 350
    iget-object v0, v2, Lud0;->d:Lne0;

    .line 351
    .line 352
    iget-object v2, v0, Lne0;->a:Ljava/lang/String;

    .line 353
    .line 354
    iget-wide v7, v0, Lne0;->b:J

    .line 355
    .line 356
    invoke-virtual {v1}, Lee0;->a()Lde0;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    iput-object v3, v0, Lde0;->a:Ljava/lang/String;

    .line 361
    .line 362
    const/4 v3, 0x4

    .line 363
    iput v3, v0, Lde0;->b:I

    .line 364
    .line 365
    iput-object v2, v0, Lde0;->c:Ljava/lang/String;

    .line 366
    .line 367
    iput-object v4, v0, Lde0;->d:Ljava/lang/String;

    .line 368
    .line 369
    iput-wide v7, v0, Lde0;->e:J

    .line 370
    .line 371
    iget-byte v1, v0, Lde0;->h:B

    .line 372
    .line 373
    or-int/2addr v1, v14

    .line 374
    int-to-byte v1, v1

    .line 375
    iput-wide v5, v0, Lde0;->f:J

    .line 376
    .line 377
    or-int/lit8 v1, v1, 0x2

    .line 378
    .line 379
    int-to-byte v1, v1

    .line 380
    iput-byte v1, v0, Lde0;->h:B

    .line 381
    .line 382
    invoke-virtual {v0}, Lde0;->a()Lee0;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    return-object v0

    .line 387
    :cond_a
    const/4 v3, 0x4

    .line 388
    :try_start_7
    new-instance v4, Lrg3;

    .line 389
    .line 390
    const-string v14, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    .line 391
    .line 392
    invoke-direct {v4, v14}, Lkg3;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw v4
    :try_end_7
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 396
    :goto_8
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    .line 398
    .line 399
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :catch_2
    :goto_9
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 404
    .line 405
    .line 406
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 407
    .line 408
    .line 409
    :goto_a
    add-int/lit8 v13, v13, 0x1

    .line 410
    .line 411
    goto/16 :goto_4

    .line 412
    .line 413
    :cond_b
    new-instance v0, Lrg3;

    .line 414
    .line 415
    invoke-direct {v0, v10}, Lkg3;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw v0

    .line 419
    :cond_c
    new-instance v0, Lrg3;

    .line 420
    .line 421
    invoke-direct {v0, v10}, Lkg3;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    throw v0
.end method

.method public final h(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lpg3;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lpg3;->l:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lqm7;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Lqm7;->onException(Ljava/lang/Exception;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final i(Lee0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lpg3;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lpg3;->l:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lqm7;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Lqm7;->a(Lee0;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
