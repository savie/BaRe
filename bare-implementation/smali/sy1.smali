.class public final Lsy1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final s:Lpy1;

.field public static final t:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lka2;

.field public final c:Lyf1;

.field public final d:Li75;

.field public final e:Ls02;

.field public final f:Lk94;

.field public final g:Lca3;

.field public final h:Lcq;

.field public final i:Lot9;

.field public final j:Laz1;

.field public final k:Leb;

.field public final l:Loy1;

.field public final m:Lca3;

.field public n:Lm02;

.field public final o:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final p:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final q:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpy1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsy1;->s:Lpy1;

    .line 7
    .line 8
    const-string v0, "UTF-8"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lsy1;->t:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lk94;Lka2;Lca3;Lyf1;Lcq;Li75;Lot9;Lca3;Laz1;Leb;Loy1;Ls02;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lsy1;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lsy1;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lsy1;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lsy1;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    iput-object p1, p0, Lsy1;->a:Landroid/content/Context;

    .line 34
    .line 35
    iput-object p2, p0, Lsy1;->f:Lk94;

    .line 36
    .line 37
    iput-object p3, p0, Lsy1;->b:Lka2;

    .line 38
    .line 39
    iput-object p4, p0, Lsy1;->g:Lca3;

    .line 40
    .line 41
    iput-object p5, p0, Lsy1;->c:Lyf1;

    .line 42
    .line 43
    iput-object p6, p0, Lsy1;->h:Lcq;

    .line 44
    .line 45
    iput-object p7, p0, Lsy1;->d:Li75;

    .line 46
    .line 47
    iput-object p8, p0, Lsy1;->i:Lot9;

    .line 48
    .line 49
    iput-object p10, p0, Lsy1;->j:Laz1;

    .line 50
    .line 51
    iput-object p11, p0, Lsy1;->k:Leb;

    .line 52
    .line 53
    iput-object p12, p0, Lsy1;->l:Loy1;

    .line 54
    .line 55
    iput-object p9, p0, Lsy1;->m:Lca3;

    .line 56
    .line 57
    iput-object p13, p0, Lsy1;->e:Ls02;

    .line 58
    .line 59
    return-void
.end method

.method public static a(Lsy1;)Lcom/google/android/gms/tasks/Task;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "FirebaseCrashlytics"

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lsy1;->g:Lca3;

    .line 12
    .line 13
    iget-object v2, v2, Lca3;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ljava/io/File;

    .line 16
    .line 17
    sget-object v3, Lsy1;->s:Lpy1;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lca3;->l([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/io/File;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const/4 v6, 0x3

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :try_start_1
    const-string v5, "com.google.firebase.crash.FirebaseCrash"

    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    :try_start_2
    const-string v5, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    .line 63
    .line 64
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    const-string v5, "Logging app exception event to Firebase Analytics"

    .line 73
    .line 74
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_0

    .line 79
    .line 80
    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :cond_0
    new-instance v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 84
    .line 85
    const/4 v6, 0x1

    .line 86
    invoke-direct {v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 87
    .line 88
    .line 89
    new-instance v6, Lry1;

    .line 90
    .line 91
    invoke-direct {v6, p0, v7, v8}, Lry1;-><init>(Lsy1;J)V

    .line 92
    .line 93
    .line 94
    invoke-static {v5, v6}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v6, "Could not parse app exception timestamp from file "

    .line 105
    .line 106
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method


# virtual methods
.method public final b(ZLf80;Z)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    invoke-static {}, Ls02;->a()V

    .line 6
    .line 7
    .line 8
    new-instance v3, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v0, v1, Lsy1;->m:Lca3;

    .line 11
    .line 12
    iget-object v0, v0, Lca3;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lk02;

    .line 15
    .line 16
    invoke-virtual {v0}, Lk02;->c()Ljava/util/NavigableSet;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v4, 0x2

    .line 28
    const/4 v5, 0x0

    .line 29
    if-gt v0, v2, :cond_0

    .line 30
    .line 31
    const-string v0, "No open sessions to be closed."

    .line 32
    .line 33
    const-string v1, "FirebaseCrashlytics"

    .line 34
    .line 35
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_45

    .line 40
    .line 41
    const-string v1, "FirebaseCrashlytics"

    .line 42
    .line 43
    invoke-static {v1, v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v6, v0

    .line 52
    check-cast v6, Ljava/lang/String;

    .line 53
    .line 54
    const/4 v8, 0x3

    .line 55
    const/4 v10, 0x1

    .line 56
    const/4 v11, 0x0

    .line 57
    if-eqz p3, :cond_19

    .line 58
    .line 59
    invoke-virtual/range {p2 .. p2}, Lf80;->c()Lfa7;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v0, v0, Lfa7;->b:Lea7;

    .line 64
    .line 65
    iget-boolean v0, v0, Lea7;->b:Z

    .line 66
    .line 67
    if-eqz v0, :cond_19

    .line 68
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v12, 0x1e

    .line 72
    .line 73
    if-lt v0, v12, :cond_18

    .line 74
    .line 75
    iget-object v0, v1, Lsy1;->a:Landroid/content/Context;

    .line 76
    .line 77
    const-string v12, "activity"

    .line 78
    .line 79
    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/app/ActivityManager;

    .line 84
    .line 85
    invoke-virtual {v0, v5, v11, v11}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_16

    .line 94
    .line 95
    new-instance v13, Lot9;

    .line 96
    .line 97
    iget-object v0, v1, Lsy1;->g:Lca3;

    .line 98
    .line 99
    invoke-direct {v13, v0}, Lot9;-><init>(Lca3;)V

    .line 100
    .line 101
    .line 102
    sget-object v14, Lot9;->c:Lge;

    .line 103
    .line 104
    invoke-interface {v14}, Lw83;->a()V

    .line 105
    .line 106
    .line 107
    iput-object v14, v13, Lot9;->b:Ljava/lang/Object;

    .line 108
    .line 109
    if-nez v6, :cond_1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    const-string v14, "userlog"

    .line 113
    .line 114
    invoke-virtual {v0, v6, v14}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v14, Lwc6;

    .line 119
    .line 120
    invoke-direct {v14, v0}, Lwc6;-><init>(Ljava/io/File;)V

    .line 121
    .line 122
    .line 123
    iput-object v14, v13, Lot9;->b:Ljava/lang/Object;

    .line 124
    .line 125
    :goto_0
    iget-object v0, v1, Lsy1;->g:Lca3;

    .line 126
    .line 127
    iget-object v14, v1, Lsy1;->e:Ls02;

    .line 128
    .line 129
    new-instance v15, Llf5;

    .line 130
    .line 131
    invoke-direct {v15, v0}, Llf5;-><init>(Lca3;)V

    .line 132
    .line 133
    .line 134
    const/16 v16, 0x4

    .line 135
    .line 136
    new-instance v9, Li75;

    .line 137
    .line 138
    invoke-direct {v9, v6, v0, v14}, Li75;-><init>(Ljava/lang/String;Lca3;Ls02;)V

    .line 139
    .line 140
    .line 141
    iget-object v14, v9, Li75;->d:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v14, Lfh8;

    .line 144
    .line 145
    iget-object v14, v14, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 146
    .line 147
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    check-cast v14, Lbp4;

    .line 152
    .line 153
    const/16 v17, 0x8

    .line 154
    .line 155
    invoke-virtual {v15, v6, v11}, Llf5;->c(Ljava/lang/String;Z)Ljava/util/Map;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v14, v7}, Lbp4;->c(Ljava/util/Map;)V

    .line 160
    .line 161
    .line 162
    iget-object v7, v9, Li75;->e:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v7, Lfh8;

    .line 165
    .line 166
    iget-object v7, v7, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 167
    .line 168
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    check-cast v7, Lbp4;

    .line 173
    .line 174
    invoke-virtual {v15, v6, v10}, Llf5;->c(Ljava/lang/String;Z)Ljava/util/Map;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    invoke-virtual {v7, v14}, Lbp4;->c(Ljava/util/Map;)V

    .line 179
    .line 180
    .line 181
    iget-object v7, v9, Li75;->k:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v7, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 184
    .line 185
    invoke-virtual {v15, v6}, Llf5;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    invoke-virtual {v7, v14, v11}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 190
    .line 191
    .line 192
    iget-object v7, v9, Li75;->f:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v7, Li66;

    .line 195
    .line 196
    const-string v14, "Failed to close rollouts state file."

    .line 197
    .line 198
    const-string v15, "FirebaseCrashlytics"

    .line 199
    .line 200
    move/from16 v18, v10

    .line 201
    .line 202
    const-string v10, "Loaded rollouts state:\n"

    .line 203
    .line 204
    const-string v4, "rollouts-state"

    .line 205
    .line 206
    invoke-virtual {v0, v6, v4}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_4

    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 217
    .line 218
    .line 219
    move-result-wide v20

    .line 220
    const-wide/16 v22, 0x0

    .line 221
    .line 222
    cmp-long v0, v20, v22

    .line 223
    .line 224
    if-nez v0, :cond_2

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_2
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    .line 228
    .line 229
    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    .line 231
    .line 232
    :try_start_1
    invoke-static {v11}, Ljm1;->X(Ljava/io/FileInputStream;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Llf5;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v10, "\nfor session "

    .line 249
    .line 250
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-static {v15, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    if-eqz v10, :cond_3

    .line 265
    .line 266
    const/4 v10, 0x0

    .line 267
    invoke-static {v15, v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .line 269
    .line 270
    :cond_3
    invoke-static {v11, v14}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :goto_1
    move-object v5, v11

    .line 275
    goto :goto_3

    .line 276
    :catchall_0
    move-exception v0

    .line 277
    goto :goto_1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    goto :goto_2

    .line 280
    :catchall_1
    move-exception v0

    .line 281
    const/4 v5, 0x0

    .line 282
    goto :goto_3

    .line 283
    :catch_1
    move-exception v0

    .line 284
    const/4 v11, 0x0

    .line 285
    :goto_2
    :try_start_2
    const-string v5, "Error deserializing rollouts state."

    .line 286
    .line 287
    invoke-static {v15, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    .line 289
    .line 290
    invoke-static {v4}, Llf5;->f(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    .line 292
    .line 293
    invoke-static {v11, v14}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :goto_3
    invoke-static {v5, v14}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw v0

    .line 303
    :cond_4
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string v5, "The file has a length of zero for session: "

    .line 306
    .line 307
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v4, v0}, Llf5;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 321
    .line 322
    :goto_5
    const-string v4, "Ignored 0 entries when adding rollout assignments. Maximum allowable: "

    .line 323
    .line 324
    monitor-enter v7

    .line 325
    :try_start_3
    iget-object v5, v7, Li66;->b:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v5, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 330
    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    iget v10, v7, Li66;->a:I

    .line 337
    .line 338
    if-le v5, v10, :cond_5

    .line 339
    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget v4, v7, Li66;->a:I

    .line 346
    .line 347
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    const-string v5, "FirebaseCrashlytics"

    .line 355
    .line 356
    const/4 v10, 0x0

    .line 357
    invoke-static {v5, v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    .line 359
    .line 360
    iget v4, v7, Li66;->a:I

    .line 361
    .line 362
    const/4 v5, 0x0

    .line 363
    invoke-interface {v0, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    iget-object v4, v7, Li66;->b:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v4, Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 372
    .line 373
    .line 374
    monitor-exit v7

    .line 375
    goto :goto_6

    .line 376
    :catchall_2
    move-exception v0

    .line 377
    goto/16 :goto_e

    .line 378
    .line 379
    :cond_5
    :try_start_4
    iget-object v4, v7, Li66;->b:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v4, Ljava/util/ArrayList;

    .line 382
    .line 383
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 384
    .line 385
    .line 386
    monitor-exit v7

    .line 387
    :goto_6
    iget-object v0, v1, Lsy1;->m:Lca3;

    .line 388
    .line 389
    const-string v4, "FirebaseCrashlytics"

    .line 390
    .line 391
    iget-object v5, v0, Lca3;->b:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v5, Lk02;

    .line 394
    .line 395
    iget-object v7, v5, Lk02;->b:Lca3;

    .line 396
    .line 397
    const-string v10, "start-time"

    .line 398
    .line 399
    invoke-virtual {v7, v6, v10}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 404
    .line 405
    .line 406
    move-result-wide v10

    .line 407
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    .line 413
    .line 414
    move-result v12

    .line 415
    if-eqz v12, :cond_6

    .line 416
    .line 417
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v12

    .line 421
    check-cast v12, Landroid/app/ApplicationExitInfo;

    .line 422
    .line 423
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 424
    .line 425
    .line 426
    move-result-wide v14

    .line 427
    cmp-long v14, v14, v10

    .line 428
    .line 429
    if-gez v14, :cond_7

    .line 430
    .line 431
    :cond_6
    const/4 v12, 0x0

    .line 432
    goto :goto_8

    .line 433
    :cond_7
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 434
    .line 435
    .line 436
    move-result v14

    .line 437
    const/4 v15, 0x6

    .line 438
    if-eq v14, v15, :cond_8

    .line 439
    .line 440
    goto :goto_7

    .line 441
    :cond_8
    :goto_8
    if-nez v12, :cond_a

    .line 442
    .line 443
    const-string v0, "No relevant ApplicationExitInfo occurred during session: "

    .line 444
    .line 445
    invoke-static {v0, v6}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    const/4 v5, 0x2

    .line 450
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    if-eqz v7, :cond_9

    .line 455
    .line 456
    const/4 v10, 0x0

    .line 457
    invoke-static {v4, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    .line 459
    .line 460
    :cond_9
    move-object/from16 v30, v3

    .line 461
    .line 462
    goto/16 :goto_d

    .line 463
    .line 464
    :cond_a
    iget-object v0, v0, Lca3;->a:Ljava/lang/Object;

    .line 465
    .line 466
    move-object v7, v0

    .line 467
    check-cast v7, Ld02;

    .line 468
    .line 469
    :try_start_5
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    if-eqz v0, :cond_b

    .line 474
    .line 475
    invoke-static {v0}, Lca3;->d(Ljava/io/InputStream;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 479
    goto :goto_9

    .line 480
    :catch_2
    move-exception v0

    .line 481
    new-instance v10, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v11, "Could not get input trace in application exit info: "

    .line 484
    .line 485
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v11

    .line 492
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v11, " Error: "

    .line 496
    .line 497
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    const/4 v10, 0x0

    .line 508
    invoke-static {v4, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    .line 510
    .line 511
    :cond_b
    const/4 v0, 0x0

    .line 512
    :goto_9
    new-instance v10, Lzb0;

    .line 513
    .line 514
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getImportance()I

    .line 518
    .line 519
    .line 520
    move-result v11

    .line 521
    iput v11, v10, Lzb0;->d:I

    .line 522
    .line 523
    iget-byte v11, v10, Lzb0;->j:B

    .line 524
    .line 525
    or-int/lit8 v11, v11, 0x4

    .line 526
    .line 527
    int-to-byte v11, v11

    .line 528
    iput-byte v11, v10, Lzb0;->j:B

    .line 529
    .line 530
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v11

    .line 534
    if-eqz v11, :cond_15

    .line 535
    .line 536
    iput-object v11, v10, Lzb0;->b:Ljava/lang/String;

    .line 537
    .line 538
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 539
    .line 540
    .line 541
    move-result v11

    .line 542
    iput v11, v10, Lzb0;->c:I

    .line 543
    .line 544
    iget-byte v11, v10, Lzb0;->j:B

    .line 545
    .line 546
    const/16 v19, 0x2

    .line 547
    .line 548
    or-int/lit8 v11, v11, 0x2

    .line 549
    .line 550
    int-to-byte v11, v11

    .line 551
    iput-byte v11, v10, Lzb0;->j:B

    .line 552
    .line 553
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 554
    .line 555
    .line 556
    move-result-wide v14

    .line 557
    iput-wide v14, v10, Lzb0;->g:J

    .line 558
    .line 559
    iget-byte v11, v10, Lzb0;->j:B

    .line 560
    .line 561
    or-int/lit8 v11, v11, 0x20

    .line 562
    .line 563
    int-to-byte v11, v11

    .line 564
    iput-byte v11, v10, Lzb0;->j:B

    .line 565
    .line 566
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 567
    .line 568
    .line 569
    move-result v11

    .line 570
    iput v11, v10, Lzb0;->a:I

    .line 571
    .line 572
    iget-byte v11, v10, Lzb0;->j:B

    .line 573
    .line 574
    or-int/lit8 v11, v11, 0x1

    .line 575
    .line 576
    int-to-byte v11, v11

    .line 577
    iput-byte v11, v10, Lzb0;->j:B

    .line 578
    .line 579
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getPss()J

    .line 580
    .line 581
    .line 582
    move-result-wide v14

    .line 583
    iput-wide v14, v10, Lzb0;->e:J

    .line 584
    .line 585
    iget-byte v11, v10, Lzb0;->j:B

    .line 586
    .line 587
    or-int/lit8 v11, v11, 0x8

    .line 588
    .line 589
    int-to-byte v11, v11

    .line 590
    iput-byte v11, v10, Lzb0;->j:B

    .line 591
    .line 592
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getRss()J

    .line 593
    .line 594
    .line 595
    move-result-wide v11

    .line 596
    iput-wide v11, v10, Lzb0;->f:J

    .line 597
    .line 598
    iget-byte v11, v10, Lzb0;->j:B

    .line 599
    .line 600
    or-int/lit8 v11, v11, 0x10

    .line 601
    .line 602
    int-to-byte v11, v11

    .line 603
    iput-byte v11, v10, Lzb0;->j:B

    .line 604
    .line 605
    iput-object v0, v10, Lzb0;->h:Ljava/lang/String;

    .line 606
    .line 607
    invoke-virtual {v10}, Lzb0;->a()Lac0;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    iget-object v10, v7, Ld02;->a:Landroid/content/Context;

    .line 612
    .line 613
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 614
    .line 615
    .line 616
    move-result-object v10

    .line 617
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 618
    .line 619
    .line 620
    move-result-object v10

    .line 621
    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    .line 622
    .line 623
    new-instance v11, Llc0;

    .line 624
    .line 625
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 626
    .line 627
    .line 628
    const-string v12, "anr"

    .line 629
    .line 630
    iput-object v12, v11, Llc0;->b:Ljava/lang/String;

    .line 631
    .line 632
    iget-wide v14, v0, Lac0;->g:J

    .line 633
    .line 634
    iput-wide v14, v11, Llc0;->a:J

    .line 635
    .line 636
    iget-byte v12, v11, Llc0;->g:B

    .line 637
    .line 638
    or-int/lit8 v12, v12, 0x1

    .line 639
    .line 640
    int-to-byte v12, v12

    .line 641
    iput-byte v12, v11, Llc0;->g:B

    .line 642
    .line 643
    iget-object v12, v7, Ld02;->c:Lcq;

    .line 644
    .line 645
    iget-object v8, v7, Ld02;->e:Lf80;

    .line 646
    .line 647
    invoke-virtual {v8}, Lf80;->c()Lfa7;

    .line 648
    .line 649
    .line 650
    move-result-object v8

    .line 651
    iget-object v8, v8, Lfa7;->b:Lea7;

    .line 652
    .line 653
    iget-boolean v8, v8, Lea7;->c:Z

    .line 654
    .line 655
    if-eqz v8, :cond_10

    .line 656
    .line 657
    iget-object v8, v12, Lcq;->c:Ljava/util/ArrayList;

    .line 658
    .line 659
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 660
    .line 661
    .line 662
    move-result v8

    .line 663
    if-lez v8, :cond_10

    .line 664
    .line 665
    new-instance v8, Ljava/util/ArrayList;

    .line 666
    .line 667
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .line 669
    .line 670
    iget-object v12, v12, Lcq;->c:Ljava/util/ArrayList;

    .line 671
    .line 672
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 673
    .line 674
    .line 675
    move-result-object v12

    .line 676
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 677
    .line 678
    .line 679
    move-result v22

    .line 680
    if-eqz v22, :cond_f

    .line 681
    .line 682
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v22

    .line 686
    move-object/from16 v2, v22

    .line 687
    .line 688
    check-cast v2, Lcx0;

    .line 689
    .line 690
    move/from16 v29, v10

    .line 691
    .line 692
    iget-object v10, v2, Lcx0;->a:Ljava/lang/String;

    .line 693
    .line 694
    if-eqz v10, :cond_e

    .line 695
    .line 696
    move-object/from16 p2, v12

    .line 697
    .line 698
    iget-object v12, v2, Lcx0;->b:Ljava/lang/String;

    .line 699
    .line 700
    if-eqz v12, :cond_d

    .line 701
    .line 702
    iget-object v2, v2, Lcx0;->c:Ljava/lang/String;

    .line 703
    .line 704
    if-eqz v2, :cond_c

    .line 705
    .line 706
    move-object/from16 v30, v3

    .line 707
    .line 708
    new-instance v3, Lbc0;

    .line 709
    .line 710
    invoke-direct {v3, v12, v10, v2}, Lbc0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move/from16 v2, p1

    .line 717
    .line 718
    move-object/from16 v12, p2

    .line 719
    .line 720
    move/from16 v10, v29

    .line 721
    .line 722
    move-object/from16 v3, v30

    .line 723
    .line 724
    goto :goto_a

    .line 725
    :cond_c
    const-string v0, "Null buildId"

    .line 726
    .line 727
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    return-void

    .line 731
    :cond_d
    const-string v0, "Null arch"

    .line 732
    .line 733
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :cond_e
    const-string v0, "Null libraryName"

    .line 738
    .line 739
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    return-void

    .line 743
    :cond_f
    move-object/from16 v30, v3

    .line 744
    .line 745
    move/from16 v29, v10

    .line 746
    .line 747
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    goto :goto_b

    .line 752
    :cond_10
    move-object/from16 v30, v3

    .line 753
    .line 754
    move/from16 v29, v10

    .line 755
    .line 756
    const/4 v2, 0x0

    .line 757
    :goto_b
    new-instance v3, Lzb0;

    .line 758
    .line 759
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 760
    .line 761
    .line 762
    iget v8, v0, Lac0;->d:I

    .line 763
    .line 764
    iput v8, v3, Lzb0;->d:I

    .line 765
    .line 766
    iget-byte v8, v3, Lzb0;->j:B

    .line 767
    .line 768
    or-int/lit8 v8, v8, 0x4

    .line 769
    .line 770
    int-to-byte v8, v8

    .line 771
    iput-byte v8, v3, Lzb0;->j:B

    .line 772
    .line 773
    iget-object v10, v0, Lac0;->b:Ljava/lang/String;

    .line 774
    .line 775
    if-eqz v10, :cond_14

    .line 776
    .line 777
    iput-object v10, v3, Lzb0;->b:Ljava/lang/String;

    .line 778
    .line 779
    iget v10, v0, Lac0;->c:I

    .line 780
    .line 781
    iput v10, v3, Lzb0;->c:I

    .line 782
    .line 783
    const/16 v19, 0x2

    .line 784
    .line 785
    or-int/lit8 v8, v8, 0x2

    .line 786
    .line 787
    int-to-byte v8, v8

    .line 788
    iput-wide v14, v3, Lzb0;->g:J

    .line 789
    .line 790
    or-int/lit8 v8, v8, 0x20

    .line 791
    .line 792
    int-to-byte v8, v8

    .line 793
    iget v10, v0, Lac0;->a:I

    .line 794
    .line 795
    iput v10, v3, Lzb0;->a:I

    .line 796
    .line 797
    or-int/lit8 v8, v8, 0x1

    .line 798
    .line 799
    int-to-byte v8, v8

    .line 800
    iget-wide v14, v0, Lac0;->e:J

    .line 801
    .line 802
    iput-wide v14, v3, Lzb0;->e:J

    .line 803
    .line 804
    or-int/lit8 v8, v8, 0x8

    .line 805
    .line 806
    int-to-byte v8, v8

    .line 807
    iget-wide v14, v0, Lac0;->f:J

    .line 808
    .line 809
    iput-wide v14, v3, Lzb0;->f:J

    .line 810
    .line 811
    or-int/lit8 v8, v8, 0x10

    .line 812
    .line 813
    int-to-byte v8, v8

    .line 814
    iput-byte v8, v3, Lzb0;->j:B

    .line 815
    .line 816
    iget-object v0, v0, Lac0;->h:Ljava/lang/String;

    .line 817
    .line 818
    iput-object v0, v3, Lzb0;->h:Ljava/lang/String;

    .line 819
    .line 820
    iput-object v2, v3, Lzb0;->i:Ljava/util/List;

    .line 821
    .line 822
    invoke-virtual {v3}, Lzb0;->a()Lac0;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    iget v2, v0, Lac0;->d:I

    .line 827
    .line 828
    const/16 v3, 0x64

    .line 829
    .line 830
    if-eq v2, v3, :cond_11

    .line 831
    .line 832
    move/from16 v3, v18

    .line 833
    .line 834
    goto :goto_c

    .line 835
    :cond_11
    const/4 v3, 0x0

    .line 836
    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 837
    .line 838
    .line 839
    move-result-object v3

    .line 840
    iget-object v8, v0, Lac0;->b:Ljava/lang/String;

    .line 841
    .line 842
    iget v10, v0, Lac0;->a:I

    .line 843
    .line 844
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    new-instance v12, Lvc0;

    .line 848
    .line 849
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 850
    .line 851
    .line 852
    iput-object v8, v12, Lvc0;->a:Ljava/lang/String;

    .line 853
    .line 854
    iput v10, v12, Lvc0;->b:I

    .line 855
    .line 856
    iget-byte v8, v12, Lvc0;->e:B

    .line 857
    .line 858
    or-int/lit8 v8, v8, 0x1

    .line 859
    .line 860
    int-to-byte v8, v8

    .line 861
    iput v2, v12, Lvc0;->c:I

    .line 862
    .line 863
    const/16 v19, 0x2

    .line 864
    .line 865
    or-int/lit8 v2, v8, 0x2

    .line 866
    .line 867
    int-to-byte v2, v2

    .line 868
    const/4 v8, 0x0

    .line 869
    iput-boolean v8, v12, Lvc0;->d:Z

    .line 870
    .line 871
    or-int/lit8 v2, v2, 0x4

    .line 872
    .line 873
    int-to-byte v2, v2

    .line 874
    iput-byte v2, v12, Lvc0;->e:B

    .line 875
    .line 876
    invoke-virtual {v12}, Lvc0;->a()Lwc0;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    invoke-static {}, Ld02;->e()Lrc0;

    .line 881
    .line 882
    .line 883
    move-result-object v26

    .line 884
    invoke-virtual {v7}, Ld02;->a()Ljava/util/List;

    .line 885
    .line 886
    .line 887
    move-result-object v27

    .line 888
    if-eqz v27, :cond_13

    .line 889
    .line 890
    new-instance v22, Loc0;

    .line 891
    .line 892
    const/16 v23, 0x0

    .line 893
    .line 894
    const/16 v24, 0x0

    .line 895
    .line 896
    move-object/from16 v25, v0

    .line 897
    .line 898
    invoke-direct/range {v22 .. v27}, Loc0;-><init>(Ljava/util/List;Lqc0;Lez1;Lrc0;Ljava/util/List;)V

    .line 899
    .line 900
    .line 901
    new-instance v0, Lnc0;

    .line 902
    .line 903
    const/16 v25, 0x0

    .line 904
    .line 905
    const/16 v28, 0x0

    .line 906
    .line 907
    move-object/from16 v27, v2

    .line 908
    .line 909
    move-object/from16 v26, v3

    .line 910
    .line 911
    move-object/from16 v23, v22

    .line 912
    .line 913
    move-object/from16 v22, v0

    .line 914
    .line 915
    invoke-direct/range {v22 .. v29}, Lnc0;-><init>(Loc0;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lrz1;Ljava/util/List;I)V

    .line 916
    .line 917
    .line 918
    move-object/from16 v2, v22

    .line 919
    .line 920
    move/from16 v0, v29

    .line 921
    .line 922
    iput-object v2, v11, Llc0;->c:Lsz1;

    .line 923
    .line 924
    invoke-virtual {v7, v0}, Ld02;->b(I)Lyc0;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    iput-object v0, v11, Llc0;->d:Ltz1;

    .line 929
    .line 930
    invoke-virtual {v11}, Llc0;->a()Lmc0;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    const-string v2, "Persisting anr for session "

    .line 935
    .line 936
    invoke-static {v2, v6}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    const/4 v3, 0x3

    .line 941
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 942
    .line 943
    .line 944
    move-result v7

    .line 945
    if-eqz v7, :cond_12

    .line 946
    .line 947
    const/4 v10, 0x0

    .line 948
    invoke-static {v4, v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    .line 950
    .line 951
    :cond_12
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 952
    .line 953
    invoke-static {v0, v13, v9, v2}, Lca3;->a(Lmc0;Lot9;Li75;Ljava/util/Map;)Lmc0;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    invoke-static {v0, v9}, Lca3;->b(Lmc0;Li75;)Lyz1;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    move/from16 v2, v18

    .line 962
    .line 963
    invoke-virtual {v5, v0, v6, v2}, Lk02;->d(Lyz1;Ljava/lang/String;Z)V

    .line 964
    .line 965
    .line 966
    :goto_d
    const/4 v5, 0x2

    .line 967
    goto :goto_f

    .line 968
    :cond_13
    const-string v0, "Null binaries"

    .line 969
    .line 970
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    return-void

    .line 974
    :cond_14
    const-string v0, "Null processName"

    .line 975
    .line 976
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    return-void

    .line 980
    :cond_15
    const-string v0, "Null processName"

    .line 981
    .line 982
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    return-void

    .line 986
    :goto_e
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 987
    throw v0

    .line 988
    :cond_16
    move-object/from16 v30, v3

    .line 989
    .line 990
    const/16 v16, 0x4

    .line 991
    .line 992
    const/16 v17, 0x8

    .line 993
    .line 994
    const-string v0, "No ApplicationExitInfo available. Session: "

    .line 995
    .line 996
    invoke-static {v0, v6}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    const-string v2, "FirebaseCrashlytics"

    .line 1001
    .line 1002
    const/4 v5, 0x2

    .line 1003
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v2

    .line 1007
    if-eqz v2, :cond_17

    .line 1008
    .line 1009
    const-string v2, "FirebaseCrashlytics"

    .line 1010
    .line 1011
    const/4 v10, 0x0

    .line 1012
    invoke-static {v2, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1013
    .line 1014
    .line 1015
    goto :goto_10

    .line 1016
    :cond_17
    :goto_f
    const/4 v10, 0x0

    .line 1017
    goto :goto_10

    .line 1018
    :cond_18
    move-object/from16 v30, v3

    .line 1019
    .line 1020
    move-object v10, v5

    .line 1021
    const/16 v16, 0x4

    .line 1022
    .line 1023
    const/16 v17, 0x8

    .line 1024
    .line 1025
    move v5, v4

    .line 1026
    const-string v2, "ANR feature enabled, but device is API "

    .line 1027
    .line 1028
    invoke-static {v0, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v0

    .line 1032
    const-string v2, "FirebaseCrashlytics"

    .line 1033
    .line 1034
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v2

    .line 1038
    if-eqz v2, :cond_1a

    .line 1039
    .line 1040
    const-string v2, "FirebaseCrashlytics"

    .line 1041
    .line 1042
    invoke-static {v2, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    .line 1044
    .line 1045
    goto :goto_10

    .line 1046
    :cond_19
    move-object/from16 v30, v3

    .line 1047
    .line 1048
    const/16 v16, 0x4

    .line 1049
    .line 1050
    const/16 v17, 0x8

    .line 1051
    .line 1052
    const-string v0, "ANR feature disabled."

    .line 1053
    .line 1054
    const-string v2, "FirebaseCrashlytics"

    .line 1055
    .line 1056
    const/4 v5, 0x2

    .line 1057
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1058
    .line 1059
    .line 1060
    move-result v2

    .line 1061
    if-eqz v2, :cond_1a

    .line 1062
    .line 1063
    const-string v2, "FirebaseCrashlytics"

    .line 1064
    .line 1065
    const/4 v10, 0x0

    .line 1066
    invoke-static {v2, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    .line 1068
    .line 1069
    :cond_1a
    :goto_10
    if-eqz p3, :cond_2e

    .line 1070
    .line 1071
    iget-object v0, v1, Lsy1;->j:Laz1;

    .line 1072
    .line 1073
    invoke-interface {v0, v6}, Laz1;->hasCrashDataForSession(Ljava/lang/String;)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v0

    .line 1077
    if-eqz v0, :cond_2e

    .line 1078
    .line 1079
    iget-object v0, v1, Lsy1;->g:Lca3;

    .line 1080
    .line 1081
    sget-object v2, Lnh4;->c:Lnh4;

    .line 1082
    .line 1083
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    const-string v4, "Finalizing native report for session "

    .line 1086
    .line 1087
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v3

    .line 1097
    invoke-virtual {v2, v3}, Lnh4;->o(Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    iget-object v3, v1, Lsy1;->j:Laz1;

    .line 1101
    .line 1102
    invoke-interface {v3, v6}, Laz1;->getSessionFileProvider(Ljava/lang/String;)Ltk5;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v3

    .line 1106
    invoke-interface {v3}, Ltk5;->v()Ljava/io/File;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v4

    .line 1110
    invoke-interface {v3}, Ltk5;->k()Lez1;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v5

    .line 1114
    const-string v7, "FirebaseCrashlytics"

    .line 1115
    .line 1116
    if-eqz v4, :cond_1c

    .line 1117
    .line 1118
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v8

    .line 1122
    if-nez v8, :cond_1b

    .line 1123
    .line 1124
    goto :goto_11

    .line 1125
    :cond_1b
    const/4 v10, 0x0

    .line 1126
    goto :goto_12

    .line 1127
    :cond_1c
    :goto_11
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    const-string v9, "No minidump data found for session "

    .line 1130
    .line 1131
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v8

    .line 1141
    const/4 v10, 0x0

    .line 1142
    invoke-static {v7, v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1143
    .line 1144
    .line 1145
    :goto_12
    if-nez v5, :cond_1d

    .line 1146
    .line 1147
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    const-string v9, "No Tombstones data found for session "

    .line 1150
    .line 1151
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v8

    .line 1161
    invoke-static {v7, v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1162
    .line 1163
    .line 1164
    :cond_1d
    if-eqz v4, :cond_1e

    .line 1165
    .line 1166
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v8

    .line 1170
    if-nez v8, :cond_1f

    .line 1171
    .line 1172
    :cond_1e
    if-nez v5, :cond_1f

    .line 1173
    .line 1174
    const-string v0, "No native core present"

    .line 1175
    .line 1176
    invoke-virtual {v2, v0, v10}, Lnh4;->q(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1177
    .line 1178
    .line 1179
    goto/16 :goto_1d

    .line 1180
    .line 1181
    :cond_1f
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    .line 1182
    .line 1183
    .line 1184
    move-result-wide v8

    .line 1185
    sget-object v4, Lot9;->c:Lge;

    .line 1186
    .line 1187
    if-nez v6, :cond_20

    .line 1188
    .line 1189
    goto :goto_13

    .line 1190
    :cond_20
    const-string v4, "userlog"

    .line 1191
    .line 1192
    invoke-virtual {v0, v6, v4}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v4

    .line 1196
    new-instance v10, Lwc6;

    .line 1197
    .line 1198
    invoke-direct {v10, v4}, Lwc6;-><init>(Ljava/io/File;)V

    .line 1199
    .line 1200
    .line 1201
    move-object v4, v10

    .line 1202
    :goto_13
    invoke-virtual {v0, v6}, Lca3;->f(Ljava/lang/String;)Ljava/io/File;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v10

    .line 1206
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    .line 1207
    .line 1208
    .line 1209
    move-result v11

    .line 1210
    if-nez v11, :cond_21

    .line 1211
    .line 1212
    const-string v0, "Couldn\'t create directory to store native session files, aborting."

    .line 1213
    .line 1214
    const/4 v10, 0x0

    .line 1215
    invoke-virtual {v2, v0, v10}, Lnh4;->q(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1216
    .line 1217
    .line 1218
    goto/16 :goto_1d

    .line 1219
    .line 1220
    :cond_21
    invoke-virtual {v1, v8, v9}, Lsy1;->d(J)V

    .line 1221
    .line 1222
    .line 1223
    invoke-interface {v4}, Lw83;->g()[B

    .line 1224
    .line 1225
    .line 1226
    move-result-object v2

    .line 1227
    const-string v8, "user-data"

    .line 1228
    .line 1229
    invoke-virtual {v0, v6, v8}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v8

    .line 1233
    const-string v9, "keys"

    .line 1234
    .line 1235
    invoke-virtual {v0, v6, v9}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v11

    .line 1239
    const-string v12, "rollouts-state"

    .line 1240
    .line 1241
    invoke-virtual {v0, v6, v12}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v0

    .line 1245
    new-instance v12, Ljava/util/ArrayList;

    .line 1246
    .line 1247
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    .line 1249
    .line 1250
    new-instance v13, Liy0;

    .line 1251
    .line 1252
    const-string v14, "logs_file"

    .line 1253
    .line 1254
    const-string v15, "logs"

    .line 1255
    .line 1256
    invoke-direct {v13, v14, v15, v2}, Liy0;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    .line 1261
    .line 1262
    new-instance v2, Lx63;

    .line 1263
    .line 1264
    const-string v13, "crash_meta_file"

    .line 1265
    .line 1266
    const-string v14, "metadata"

    .line 1267
    .line 1268
    invoke-interface {v3}, Ltk5;->C()Ljava/io/File;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v15

    .line 1272
    invoke-direct {v2, v13, v14, v15}, Lx63;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    new-instance v2, Lx63;

    .line 1279
    .line 1280
    const-string v13, "session_meta_file"

    .line 1281
    .line 1282
    const-string v14, "session"

    .line 1283
    .line 1284
    invoke-interface {v3}, Ltk5;->x()Ljava/io/File;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v15

    .line 1288
    invoke-direct {v2, v13, v14, v15}, Lx63;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    .line 1293
    .line 1294
    new-instance v2, Lx63;

    .line 1295
    .line 1296
    const-string v13, "app_meta_file"

    .line 1297
    .line 1298
    const-string v14, "app"

    .line 1299
    .line 1300
    invoke-interface {v3}, Ltk5;->d()Ljava/io/File;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v15

    .line 1304
    invoke-direct {v2, v13, v14, v15}, Lx63;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    .line 1309
    .line 1310
    new-instance v2, Lx63;

    .line 1311
    .line 1312
    const-string v13, "device_meta_file"

    .line 1313
    .line 1314
    const-string v14, "device"

    .line 1315
    .line 1316
    invoke-interface {v3}, Ltk5;->j()Ljava/io/File;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v15

    .line 1320
    invoke-direct {v2, v13, v14, v15}, Lx63;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    .line 1325
    .line 1326
    new-instance v2, Lx63;

    .line 1327
    .line 1328
    const-string v13, "os_meta_file"

    .line 1329
    .line 1330
    const-string v14, "os"

    .line 1331
    .line 1332
    invoke-interface {v3}, Ltk5;->e()Ljava/io/File;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v15

    .line 1336
    invoke-direct {v2, v13, v14, v15}, Lx63;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    .line 1341
    .line 1342
    const-string v2, "minidump"

    .line 1343
    .line 1344
    const-string v13, "minidump_file"

    .line 1345
    .line 1346
    invoke-interface {v3}, Ltk5;->v()Ljava/io/File;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v3

    .line 1350
    if-eqz v3, :cond_23

    .line 1351
    .line 1352
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 1353
    .line 1354
    .line 1355
    move-result v14

    .line 1356
    if-nez v14, :cond_22

    .line 1357
    .line 1358
    goto :goto_14

    .line 1359
    :cond_22
    new-instance v14, Lx63;

    .line 1360
    .line 1361
    invoke-direct {v14, v13, v2, v3}, Lx63;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1362
    .line 1363
    .line 1364
    const/4 v3, 0x1

    .line 1365
    goto :goto_15

    .line 1366
    :cond_23
    :goto_14
    new-instance v14, Liy0;

    .line 1367
    .line 1368
    const/4 v3, 0x1

    .line 1369
    new-array v15, v3, [B

    .line 1370
    .line 1371
    const/16 v20, 0x0

    .line 1372
    .line 1373
    aput-byte v20, v15, v20

    .line 1374
    .line 1375
    invoke-direct {v14, v13, v2, v15}, Liy0;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1376
    .line 1377
    .line 1378
    :goto_15
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    .line 1380
    .line 1381
    new-instance v2, Lx63;

    .line 1382
    .line 1383
    const-string v13, "user_meta_file"

    .line 1384
    .line 1385
    const-string v14, "user"

    .line 1386
    .line 1387
    invoke-direct {v2, v13, v14, v8}, Lx63;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    .line 1392
    .line 1393
    new-instance v2, Lx63;

    .line 1394
    .line 1395
    const-string v8, "keys_file"

    .line 1396
    .line 1397
    invoke-direct {v2, v8, v9, v11}, Lx63;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    .line 1402
    .line 1403
    new-instance v2, Lx63;

    .line 1404
    .line 1405
    const-string v8, "rollouts_file"

    .line 1406
    .line 1407
    const-string v9, "rollouts"

    .line 1408
    .line 1409
    invoke-direct {v2, v8, v9, v0}, Lx63;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v0

    .line 1419
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1420
    .line 1421
    .line 1422
    move-result v2

    .line 1423
    if-eqz v2, :cond_25

    .line 1424
    .line 1425
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v2

    .line 1429
    check-cast v2, Lsk5;

    .line 1430
    .line 1431
    :try_start_7
    invoke-interface {v2}, Lsk5;->b()Ljava/io/InputStream;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v8
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1435
    if-nez v8, :cond_24

    .line 1436
    .line 1437
    :catch_3
    :goto_17
    invoke-static {v8}, Ljm1;->i(Ljava/io/Closeable;)V

    .line 1438
    .line 1439
    .line 1440
    goto :goto_16

    .line 1441
    :cond_24
    :try_start_8
    new-instance v9, Ljava/io/File;

    .line 1442
    .line 1443
    invoke-interface {v2}, Lsk5;->a()Ljava/lang/String;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v2

    .line 1447
    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    invoke-static {v9, v8}, Lyc9;->C(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1451
    .line 1452
    .line 1453
    goto :goto_17

    .line 1454
    :catchall_3
    move-exception v0

    .line 1455
    move-object v5, v8

    .line 1456
    goto :goto_18

    .line 1457
    :catchall_4
    move-exception v0

    .line 1458
    const/4 v5, 0x0

    .line 1459
    :goto_18
    invoke-static {v5}, Ljm1;->i(Ljava/io/Closeable;)V

    .line 1460
    .line 1461
    .line 1462
    throw v0

    .line 1463
    :catch_4
    const/4 v8, 0x0

    .line 1464
    goto :goto_17

    .line 1465
    :cond_25
    const-string v0, "CrashlyticsController#finalizePreviousNativeSession"

    .line 1466
    .line 1467
    const/4 v2, 0x3

    .line 1468
    invoke-static {v7, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1469
    .line 1470
    .line 1471
    move-result v8

    .line 1472
    if-eqz v8, :cond_26

    .line 1473
    .line 1474
    const/4 v10, 0x0

    .line 1475
    invoke-static {v7, v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1476
    .line 1477
    .line 1478
    goto :goto_19

    .line 1479
    :cond_26
    const/4 v10, 0x0

    .line 1480
    :goto_19
    iget-object v0, v1, Lsy1;->m:Lca3;

    .line 1481
    .line 1482
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1483
    .line 1484
    .line 1485
    const-string v8, "SessionReportingCoordinator#finalizeSessionWithNativeEvent"

    .line 1486
    .line 1487
    invoke-static {v7, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v9

    .line 1491
    if-eqz v9, :cond_27

    .line 1492
    .line 1493
    invoke-static {v7, v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1494
    .line 1495
    .line 1496
    :cond_27
    new-instance v2, Ljava/util/ArrayList;

    .line 1497
    .line 1498
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v8

    .line 1505
    :cond_28
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1506
    .line 1507
    .line 1508
    move-result v9

    .line 1509
    if-eqz v9, :cond_29

    .line 1510
    .line 1511
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v9

    .line 1515
    check-cast v9, Lsk5;

    .line 1516
    .line 1517
    invoke-interface {v9}, Lsk5;->c()Lec0;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v9

    .line 1521
    if-eqz v9, :cond_28

    .line 1522
    .line 1523
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    .line 1525
    .line 1526
    goto :goto_1a

    .line 1527
    :cond_29
    iget-object v0, v0, Lca3;->b:Ljava/lang/Object;

    .line 1528
    .line 1529
    check-cast v0, Lk02;

    .line 1530
    .line 1531
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v2

    .line 1535
    if-eqz v2, :cond_2d

    .line 1536
    .line 1537
    new-instance v8, Ldc0;

    .line 1538
    .line 1539
    const/4 v10, 0x0

    .line 1540
    invoke-direct {v8, v10, v2}, Ldc0;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1541
    .line 1542
    .line 1543
    iget-object v2, v0, Lk02;->b:Lca3;

    .line 1544
    .line 1545
    const-string v9, "report"

    .line 1546
    .line 1547
    invoke-virtual {v2, v6, v9}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v9

    .line 1551
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1552
    .line 1553
    const-string v11, "Writing native session report for "

    .line 1554
    .line 1555
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1556
    .line 1557
    .line 1558
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    .line 1560
    .line 1561
    const-string v11, " to file: "

    .line 1562
    .line 1563
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v10

    .line 1573
    const/4 v11, 0x3

    .line 1574
    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1575
    .line 1576
    .line 1577
    move-result v12

    .line 1578
    if-eqz v12, :cond_2a

    .line 1579
    .line 1580
    const/4 v11, 0x0

    .line 1581
    invoke-static {v7, v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1582
    .line 1583
    .line 1584
    :cond_2a
    iget-object v0, v0, Lk02;->d:Loy1;

    .line 1585
    .line 1586
    invoke-virtual {v0, v6}, Loy1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v0

    .line 1590
    :try_start_9
    sget-object v10, Lk02;->g:Lf02;

    .line 1591
    .line 1592
    invoke-static {v9}, Lk02;->e(Ljava/io/File;)Ljava/lang/String;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v11

    .line 1596
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1597
    .line 1598
    .line 1599
    invoke-static {v11}, Lf02;->i(Ljava/lang/String;)Lxb0;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v10

    .line 1603
    invoke-virtual {v10}, Lxb0;->a()Lwb0;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v10

    .line 1607
    const/4 v11, 0x0

    .line 1608
    iput-object v11, v10, Lwb0;->j:Lb02;

    .line 1609
    .line 1610
    iput-object v8, v10, Lwb0;->k:Lhz1;

    .line 1611
    .line 1612
    invoke-virtual {v10}, Lwb0;->a()Lxb0;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v8

    .line 1616
    if-nez v5, :cond_2b

    .line 1617
    .line 1618
    goto :goto_1b

    .line 1619
    :cond_2b
    invoke-virtual {v8}, Lxb0;->a()Lwb0;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v8

    .line 1623
    iput-object v5, v8, Lwb0;->l:Lez1;

    .line 1624
    .line 1625
    invoke-virtual {v8}, Lwb0;->a()Lxb0;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v8

    .line 1629
    :goto_1b
    invoke-virtual {v8}, Lxb0;->a()Lwb0;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v5

    .line 1633
    iput-object v0, v5, Lwb0;->g:Ljava/lang/String;

    .line 1634
    .line 1635
    iget-object v8, v8, Lxb0;->k:Lb02;

    .line 1636
    .line 1637
    if-eqz v8, :cond_2c

    .line 1638
    .line 1639
    invoke-virtual {v8}, Lb02;->a()Lfc0;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v8

    .line 1643
    iput-object v0, v8, Lfc0;->c:Ljava/lang/String;

    .line 1644
    .line 1645
    invoke-virtual {v8}, Lfc0;->a()Lgc0;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v0

    .line 1649
    iput-object v0, v5, Lwb0;->j:Lb02;

    .line 1650
    .line 1651
    :cond_2c
    invoke-virtual {v5}, Lwb0;->a()Lxb0;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v0

    .line 1655
    new-instance v5, Ljava/io/File;

    .line 1656
    .line 1657
    iget-object v2, v2, Lca3;->k:Ljava/lang/Object;

    .line 1658
    .line 1659
    check-cast v2, Ljava/io/File;

    .line 1660
    .line 1661
    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1662
    .line 1663
    .line 1664
    sget-object v2, Lf02;->a:Lom5;

    .line 1665
    .line 1666
    invoke-virtual {v2, v0}, Lom5;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v0

    .line 1670
    invoke-static {v5, v0}, Lk02;->f(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1671
    .line 1672
    .line 1673
    goto :goto_1c

    .line 1674
    :catch_5
    move-exception v0

    .line 1675
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1676
    .line 1677
    const-string v5, "Could not synthesize final native report file for "

    .line 1678
    .line 1679
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1680
    .line 1681
    .line 1682
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v2

    .line 1689
    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1690
    .line 1691
    .line 1692
    :goto_1c
    invoke-interface {v4}, Lw83;->i()V

    .line 1693
    .line 1694
    .line 1695
    goto :goto_1e

    .line 1696
    :cond_2d
    const-string v0, "Null files"

    .line 1697
    .line 1698
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1699
    .line 1700
    .line 1701
    return-void

    .line 1702
    :cond_2e
    :goto_1d
    const/4 v3, 0x1

    .line 1703
    :goto_1e
    if-eqz p1, :cond_2f

    .line 1704
    .line 1705
    move-object/from16 v2, v30

    .line 1706
    .line 1707
    const/4 v5, 0x0

    .line 1708
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v0

    .line 1712
    check-cast v0, Ljava/lang/String;

    .line 1713
    .line 1714
    goto :goto_1f

    .line 1715
    :cond_2f
    const/4 v5, 0x0

    .line 1716
    iget-object v0, v1, Lsy1;->l:Loy1;

    .line 1717
    .line 1718
    const/4 v10, 0x0

    .line 1719
    invoke-virtual {v0, v10}, Loy1;->b(Ljava/lang/String;)V

    .line 1720
    .line 1721
    .line 1722
    const/4 v0, 0x0

    .line 1723
    :goto_1f
    iget-object v1, v1, Lsy1;->m:Lca3;

    .line 1724
    .line 1725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1726
    .line 1727
    .line 1728
    move-result-wide v6

    .line 1729
    const-wide/16 v8, 0x3e8

    .line 1730
    .line 1731
    div-long/2addr v6, v8

    .line 1732
    iget-object v1, v1, Lca3;->b:Ljava/lang/Object;

    .line 1733
    .line 1734
    check-cast v1, Lk02;

    .line 1735
    .line 1736
    const-string v2, "FirebaseCrashlytics"

    .line 1737
    .line 1738
    iget-object v4, v1, Lk02;->b:Lca3;

    .line 1739
    .line 1740
    const-string v8, ".com.google.firebase.crashlytics"

    .line 1741
    .line 1742
    invoke-virtual {v4, v8}, Lca3;->c(Ljava/lang/String;)V

    .line 1743
    .line 1744
    .line 1745
    const-string v8, ".com.google.firebase.crashlytics-ndk"

    .line 1746
    .line 1747
    invoke-virtual {v4, v8}, Lca3;->c(Ljava/lang/String;)V

    .line 1748
    .line 1749
    .line 1750
    iget-object v8, v4, Lca3;->a:Ljava/lang/Object;

    .line 1751
    .line 1752
    check-cast v8, Ljava/lang/String;

    .line 1753
    .line 1754
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 1755
    .line 1756
    .line 1757
    move-result v8

    .line 1758
    if-nez v8, :cond_30

    .line 1759
    .line 1760
    const-string v8, ".com.google.firebase.crashlytics.files.v1"

    .line 1761
    .line 1762
    invoke-virtual {v4, v8}, Lca3;->c(Ljava/lang/String;)V

    .line 1763
    .line 1764
    .line 1765
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1766
    .line 1767
    const-string v9, ".com.google.firebase.crashlytics.files.v2"

    .line 1768
    .line 1769
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1770
    .line 1771
    .line 1772
    sget-object v9, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 1773
    .line 1774
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    .line 1776
    .line 1777
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v8

    .line 1781
    iget-object v9, v4, Lca3;->b:Ljava/lang/Object;

    .line 1782
    .line 1783
    check-cast v9, Ljava/io/File;

    .line 1784
    .line 1785
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 1786
    .line 1787
    .line 1788
    move-result v10

    .line 1789
    if-eqz v10, :cond_30

    .line 1790
    .line 1791
    new-instance v10, Lba3;

    .line 1792
    .line 1793
    invoke-direct {v10, v8}, Lba3;-><init>(Ljava/lang/String;)V

    .line 1794
    .line 1795
    .line 1796
    invoke-virtual {v9, v10}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v8

    .line 1800
    if-eqz v8, :cond_30

    .line 1801
    .line 1802
    array-length v9, v8

    .line 1803
    move v10, v5

    .line 1804
    :goto_20
    if-ge v10, v9, :cond_30

    .line 1805
    .line 1806
    aget-object v11, v8, v10

    .line 1807
    .line 1808
    invoke-virtual {v4, v11}, Lca3;->c(Ljava/lang/String;)V

    .line 1809
    .line 1810
    .line 1811
    add-int/lit8 v10, v10, 0x1

    .line 1812
    .line 1813
    goto :goto_20

    .line 1814
    :cond_30
    invoke-virtual {v1}, Lk02;->c()Ljava/util/NavigableSet;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v8

    .line 1818
    if-eqz v0, :cond_31

    .line 1819
    .line 1820
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1821
    .line 1822
    .line 1823
    :cond_31
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 1824
    .line 1825
    .line 1826
    move-result v0

    .line 1827
    move/from16 v9, v17

    .line 1828
    .line 1829
    if-gt v0, v9, :cond_32

    .line 1830
    .line 1831
    goto :goto_22

    .line 1832
    :cond_32
    :goto_21
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 1833
    .line 1834
    .line 1835
    move-result v0

    .line 1836
    if-le v0, v9, :cond_34

    .line 1837
    .line 1838
    invoke-interface {v8}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v0

    .line 1842
    check-cast v0, Ljava/lang/String;

    .line 1843
    .line 1844
    const-string v10, "Removing session over cap: "

    .line 1845
    .line 1846
    invoke-static {v10, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v10

    .line 1850
    const/4 v11, 0x3

    .line 1851
    invoke-static {v2, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1852
    .line 1853
    .line 1854
    move-result v12

    .line 1855
    if-eqz v12, :cond_33

    .line 1856
    .line 1857
    const/4 v11, 0x0

    .line 1858
    invoke-static {v2, v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1859
    .line 1860
    .line 1861
    :cond_33
    new-instance v10, Ljava/io/File;

    .line 1862
    .line 1863
    iget-object v11, v4, Lca3;->d:Ljava/lang/Object;

    .line 1864
    .line 1865
    check-cast v11, Ljava/io/File;

    .line 1866
    .line 1867
    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1868
    .line 1869
    .line 1870
    invoke-static {v10}, Lca3;->k(Ljava/io/File;)Z

    .line 1871
    .line 1872
    .line 1873
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1874
    .line 1875
    .line 1876
    goto :goto_21

    .line 1877
    :cond_34
    :goto_22
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v8

    .line 1881
    :goto_23
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1882
    .line 1883
    .line 1884
    move-result v0

    .line 1885
    if-eqz v0, :cond_43

    .line 1886
    .line 1887
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v0

    .line 1891
    move-object v9, v0

    .line 1892
    check-cast v9, Ljava/lang/String;

    .line 1893
    .line 1894
    const-string v0, "Finalizing report for session "

    .line 1895
    .line 1896
    invoke-static {v0, v9}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v0

    .line 1900
    const/4 v10, 0x2

    .line 1901
    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1902
    .line 1903
    .line 1904
    move-result v11

    .line 1905
    if-eqz v11, :cond_35

    .line 1906
    .line 1907
    const/4 v10, 0x0

    .line 1908
    invoke-static {v2, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1909
    .line 1910
    .line 1911
    :cond_35
    sget-object v10, Lk02;->g:Lf02;

    .line 1912
    .line 1913
    sget-object v0, Lk02;->i:Lh02;

    .line 1914
    .line 1915
    new-instance v11, Ljava/io/File;

    .line 1916
    .line 1917
    iget-object v12, v4, Lca3;->d:Ljava/lang/Object;

    .line 1918
    .line 1919
    check-cast v12, Ljava/io/File;

    .line 1920
    .line 1921
    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1922
    .line 1923
    .line 1924
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 1925
    .line 1926
    .line 1927
    invoke-virtual {v11, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v0

    .line 1931
    invoke-static {v0}, Lca3;->l([Ljava/lang/Object;)Ljava/util/List;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v0

    .line 1935
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1936
    .line 1937
    .line 1938
    move-result v11

    .line 1939
    if-eqz v11, :cond_37

    .line 1940
    .line 1941
    const-string v0, "Session "

    .line 1942
    .line 1943
    const-string v10, " has no events."

    .line 1944
    .line 1945
    invoke-static {v0, v9, v10}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v0

    .line 1949
    const/4 v10, 0x2

    .line 1950
    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1951
    .line 1952
    .line 1953
    move-result v11

    .line 1954
    if-eqz v11, :cond_36

    .line 1955
    .line 1956
    const/4 v10, 0x0

    .line 1957
    invoke-static {v2, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1958
    .line 1959
    .line 1960
    :cond_36
    const/4 v10, 0x0

    .line 1961
    :goto_24
    const/4 v11, 0x3

    .line 1962
    const/16 v19, 0x2

    .line 1963
    .line 1964
    goto/16 :goto_31

    .line 1965
    .line 1966
    :cond_37
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1967
    .line 1968
    .line 1969
    new-instance v11, Ljava/util/ArrayList;

    .line 1970
    .line 1971
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .line 1973
    .line 1974
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v12

    .line 1978
    move v13, v5

    .line 1979
    :goto_25
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1980
    .line 1981
    .line 1982
    move-result v0

    .line 1983
    if-eqz v0, :cond_3a

    .line 1984
    .line 1985
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v0

    .line 1989
    move-object v14, v0

    .line 1990
    check-cast v14, Ljava/io/File;

    .line 1991
    .line 1992
    :try_start_a
    invoke-static {v14}, Lk02;->e(Ljava/io/File;)Ljava/lang/String;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v0

    .line 1996
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1997
    .line 1998
    .line 1999
    :try_start_b
    new-instance v15, Landroid/util/JsonReader;

    .line 2000
    .line 2001
    new-instance v3, Ljava/io/StringReader;

    .line 2002
    .line 2003
    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2004
    .line 2005
    .line 2006
    invoke-direct {v15, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 2007
    .line 2008
    .line 2009
    :try_start_c
    invoke-static {v15}, Lf02;->e(Landroid/util/JsonReader;)Lmc0;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 2013
    :try_start_d
    invoke-virtual {v15}, Landroid/util/JsonReader;->close()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 2014
    .line 2015
    .line 2016
    :try_start_e
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    .line 2018
    .line 2019
    if-nez v13, :cond_39

    .line 2020
    .line 2021
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v0

    .line 2025
    const-string v3, "event"

    .line 2026
    .line 2027
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2028
    .line 2029
    .line 2030
    move-result v3

    .line 2031
    if-eqz v3, :cond_38

    .line 2032
    .line 2033
    const-string v3, "_"

    .line 2034
    .line 2035
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2036
    .line 2037
    .line 2038
    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 2039
    if-eqz v0, :cond_38

    .line 2040
    .line 2041
    goto :goto_26

    .line 2042
    :cond_38
    move v0, v5

    .line 2043
    goto :goto_27

    .line 2044
    :catch_6
    move-exception v0

    .line 2045
    goto :goto_2a

    .line 2046
    :cond_39
    :goto_26
    const/4 v0, 0x1

    .line 2047
    :goto_27
    move v13, v0

    .line 2048
    goto :goto_2b

    .line 2049
    :catch_7
    move-exception v0

    .line 2050
    goto :goto_29

    .line 2051
    :catchall_5
    move-exception v0

    .line 2052
    move-object v3, v0

    .line 2053
    :try_start_f
    invoke-virtual {v15}, Landroid/util/JsonReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 2054
    .line 2055
    .line 2056
    goto :goto_28

    .line 2057
    :catchall_6
    move-exception v0

    .line 2058
    :try_start_10
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 2059
    .line 2060
    .line 2061
    :goto_28
    throw v3
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 2062
    :goto_29
    :try_start_11
    new-instance v3, Ljava/io/IOException;

    .line 2063
    .line 2064
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 2065
    .line 2066
    .line 2067
    throw v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 2068
    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2069
    .line 2070
    const-string v15, "Could not add event to report for "

    .line 2071
    .line 2072
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2073
    .line 2074
    .line 2075
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2076
    .line 2077
    .line 2078
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v3

    .line 2082
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2083
    .line 2084
    .line 2085
    :goto_2b
    const/4 v3, 0x1

    .line 2086
    goto :goto_25

    .line 2087
    :cond_3a
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2088
    .line 2089
    .line 2090
    move-result v0

    .line 2091
    if-eqz v0, :cond_3b

    .line 2092
    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2094
    .line 2095
    const-string v3, "Could not parse event files for session "

    .line 2096
    .line 2097
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    .line 2102
    .line 2103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v0

    .line 2107
    const/4 v10, 0x0

    .line 2108
    invoke-static {v2, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2109
    .line 2110
    .line 2111
    goto/16 :goto_24

    .line 2112
    .line 2113
    :cond_3b
    new-instance v0, Llf5;

    .line 2114
    .line 2115
    invoke-direct {v0, v4}, Llf5;-><init>(Lca3;)V

    .line 2116
    .line 2117
    .line 2118
    invoke-virtual {v0, v9}, Llf5;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2119
    .line 2120
    .line 2121
    move-result-object v0

    .line 2122
    iget-object v3, v1, Lk02;->d:Loy1;

    .line 2123
    .line 2124
    invoke-virtual {v3, v9}, Loy1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v3

    .line 2128
    const-string v12, "report"

    .line 2129
    .line 2130
    invoke-virtual {v4, v9, v12}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 2131
    .line 2132
    .line 2133
    move-result-object v12

    .line 2134
    const-string v14, "appQualitySessionId: "

    .line 2135
    .line 2136
    :try_start_12
    invoke-static {v12}, Lk02;->e(Ljava/io/File;)Ljava/lang/String;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v15

    .line 2140
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2141
    .line 2142
    .line 2143
    invoke-static {v15}, Lf02;->i(Ljava/lang/String;)Lxb0;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v10

    .line 2147
    invoke-virtual {v10}, Lxb0;->a()Lwb0;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v15

    .line 2151
    iget-object v10, v10, Lxb0;->k:Lb02;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 2152
    .line 2153
    if-eqz v10, :cond_3d

    .line 2154
    .line 2155
    :try_start_13
    invoke-virtual {v10}, Lb02;->a()Lfc0;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v10

    .line 2159
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v5

    .line 2163
    iput-object v5, v10, Lfc0;->e:Ljava/lang/Long;

    .line 2164
    .line 2165
    iput-boolean v13, v10, Lfc0;->f:Z

    .line 2166
    .line 2167
    iget-byte v5, v10, Lfc0;->m:B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 2168
    .line 2169
    const/16 v19, 0x2

    .line 2170
    .line 2171
    or-int/lit8 v5, v5, 0x2

    .line 2172
    .line 2173
    int-to-byte v5, v5

    .line 2174
    :try_start_14
    iput-byte v5, v10, Lfc0;->m:B

    .line 2175
    .line 2176
    if-eqz v0, :cond_3c

    .line 2177
    .line 2178
    new-instance v5, Lgd0;

    .line 2179
    .line 2180
    invoke-direct {v5, v0}, Lgd0;-><init>(Ljava/lang/String;)V

    .line 2181
    .line 2182
    .line 2183
    iput-object v5, v10, Lfc0;->h:La02;

    .line 2184
    .line 2185
    :cond_3c
    invoke-virtual {v10}, Lfc0;->a()Lgc0;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v0

    .line 2189
    iput-object v0, v15, Lwb0;->j:Lb02;

    .line 2190
    .line 2191
    goto :goto_2c

    .line 2192
    :catch_8
    move-exception v0

    .line 2193
    const/16 v19, 0x2

    .line 2194
    .line 2195
    goto/16 :goto_2f

    .line 2196
    .line 2197
    :cond_3d
    const/16 v19, 0x2

    .line 2198
    .line 2199
    :goto_2c
    invoke-virtual {v15}, Lwb0;->a()Lxb0;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v0

    .line 2203
    invoke-virtual {v0}, Lxb0;->a()Lwb0;

    .line 2204
    .line 2205
    .line 2206
    move-result-object v5

    .line 2207
    iput-object v3, v5, Lwb0;->g:Ljava/lang/String;

    .line 2208
    .line 2209
    iget-object v0, v0, Lxb0;->k:Lb02;

    .line 2210
    .line 2211
    if-eqz v0, :cond_3e

    .line 2212
    .line 2213
    invoke-virtual {v0}, Lb02;->a()Lfc0;

    .line 2214
    .line 2215
    .line 2216
    move-result-object v0

    .line 2217
    iput-object v3, v0, Lfc0;->c:Ljava/lang/String;

    .line 2218
    .line 2219
    invoke-virtual {v0}, Lfc0;->a()Lgc0;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v0

    .line 2223
    iput-object v0, v5, Lwb0;->j:Lb02;

    .line 2224
    .line 2225
    :cond_3e
    invoke-virtual {v5}, Lwb0;->a()Lxb0;

    .line 2226
    .line 2227
    .line 2228
    move-result-object v0

    .line 2229
    iget-object v5, v0, Lxb0;->k:Lb02;

    .line 2230
    .line 2231
    if-eqz v5, :cond_42

    .line 2232
    .line 2233
    invoke-virtual {v0}, Lxb0;->a()Lwb0;

    .line 2234
    .line 2235
    .line 2236
    move-result-object v0

    .line 2237
    invoke-virtual {v5}, Lb02;->a()Lfc0;

    .line 2238
    .line 2239
    .line 2240
    move-result-object v5

    .line 2241
    iput-object v11, v5, Lfc0;->k:Ljava/util/List;

    .line 2242
    .line 2243
    invoke-virtual {v5}, Lfc0;->a()Lgc0;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v5

    .line 2247
    iput-object v5, v0, Lwb0;->j:Lb02;

    .line 2248
    .line 2249
    invoke-virtual {v0}, Lwb0;->a()Lxb0;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v0

    .line 2253
    iget-object v5, v0, Lxb0;->k:Lb02;

    .line 2254
    .line 2255
    if-nez v5, :cond_3f

    .line 2256
    .line 2257
    const/4 v10, 0x0

    .line 2258
    const/4 v11, 0x3

    .line 2259
    goto :goto_31

    .line 2260
    :cond_3f
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2261
    .line 2262
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2263
    .line 2264
    .line 2265
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    .line 2267
    .line 2268
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v3
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 2272
    const/4 v11, 0x3

    .line 2273
    :try_start_15
    invoke-static {v2, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2274
    .line 2275
    .line 2276
    move-result v10
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    .line 2277
    if-eqz v10, :cond_40

    .line 2278
    .line 2279
    const/4 v10, 0x0

    .line 2280
    :try_start_16
    invoke-static {v2, v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2281
    .line 2282
    .line 2283
    goto :goto_2d

    .line 2284
    :cond_40
    const/4 v10, 0x0

    .line 2285
    :goto_2d
    if-eqz v13, :cond_41

    .line 2286
    .line 2287
    check-cast v5, Lgc0;

    .line 2288
    .line 2289
    iget-object v3, v5, Lgc0;->b:Ljava/lang/String;

    .line 2290
    .line 2291
    new-instance v5, Ljava/io/File;

    .line 2292
    .line 2293
    iget-object v13, v4, Lca3;->f:Ljava/lang/Object;

    .line 2294
    .line 2295
    check-cast v13, Ljava/io/File;

    .line 2296
    .line 2297
    invoke-direct {v5, v13, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2298
    .line 2299
    .line 2300
    goto :goto_2e

    .line 2301
    :cond_41
    check-cast v5, Lgc0;

    .line 2302
    .line 2303
    iget-object v3, v5, Lgc0;->b:Ljava/lang/String;

    .line 2304
    .line 2305
    new-instance v5, Ljava/io/File;

    .line 2306
    .line 2307
    iget-object v13, v4, Lca3;->e:Ljava/lang/Object;

    .line 2308
    .line 2309
    check-cast v13, Ljava/io/File;

    .line 2310
    .line 2311
    invoke-direct {v5, v13, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2312
    .line 2313
    .line 2314
    :goto_2e
    sget-object v3, Lf02;->a:Lom5;

    .line 2315
    .line 2316
    invoke-virtual {v3, v0}, Lom5;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v0

    .line 2320
    invoke-static {v5, v0}, Lk02;->f(Ljava/io/File;Ljava/lang/String;)V

    .line 2321
    .line 2322
    .line 2323
    goto :goto_31

    .line 2324
    :catch_9
    move-exception v0

    .line 2325
    goto :goto_30

    .line 2326
    :catch_a
    move-exception v0

    .line 2327
    const/4 v10, 0x0

    .line 2328
    goto :goto_30

    .line 2329
    :catch_b
    move-exception v0

    .line 2330
    :goto_2f
    const/4 v10, 0x0

    .line 2331
    const/4 v11, 0x3

    .line 2332
    goto :goto_30

    .line 2333
    :cond_42
    const/4 v10, 0x0

    .line 2334
    const/4 v11, 0x3

    .line 2335
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2336
    .line 2337
    const-string v3, "Reports without sessions cannot have events added to them."

    .line 2338
    .line 2339
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2340
    .line 2341
    .line 2342
    throw v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    .line 2343
    :catch_c
    move-exception v0

    .line 2344
    const/4 v10, 0x0

    .line 2345
    const/4 v11, 0x3

    .line 2346
    const/16 v19, 0x2

    .line 2347
    .line 2348
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2349
    .line 2350
    const-string v5, "Could not synthesize final report file for "

    .line 2351
    .line 2352
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2353
    .line 2354
    .line 2355
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2356
    .line 2357
    .line 2358
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2359
    .line 2360
    .line 2361
    move-result-object v3

    .line 2362
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2363
    .line 2364
    .line 2365
    :goto_31
    new-instance v0, Ljava/io/File;

    .line 2366
    .line 2367
    iget-object v3, v4, Lca3;->d:Ljava/lang/Object;

    .line 2368
    .line 2369
    check-cast v3, Ljava/io/File;

    .line 2370
    .line 2371
    invoke-direct {v0, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2372
    .line 2373
    .line 2374
    invoke-static {v0}, Lca3;->k(Ljava/io/File;)Z

    .line 2375
    .line 2376
    .line 2377
    const/4 v3, 0x1

    .line 2378
    const/4 v5, 0x0

    .line 2379
    goto/16 :goto_23

    .line 2380
    .line 2381
    :cond_43
    iget-object v0, v1, Lk02;->c:Lf80;

    .line 2382
    .line 2383
    invoke-virtual {v0}, Lf80;->c()Lfa7;

    .line 2384
    .line 2385
    .line 2386
    move-result-object v0

    .line 2387
    iget-object v0, v0, Lfa7;->a:Lme6;

    .line 2388
    .line 2389
    invoke-virtual {v1}, Lk02;->b()Ljava/util/ArrayList;

    .line 2390
    .line 2391
    .line 2392
    move-result-object v0

    .line 2393
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2394
    .line 2395
    .line 2396
    move-result v1

    .line 2397
    move/from16 v2, v16

    .line 2398
    .line 2399
    if-gt v1, v2, :cond_44

    .line 2400
    .line 2401
    goto :goto_33

    .line 2402
    :cond_44
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v0

    .line 2406
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2407
    .line 2408
    .line 2409
    move-result-object v0

    .line 2410
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2411
    .line 2412
    .line 2413
    move-result v1

    .line 2414
    if-eqz v1, :cond_45

    .line 2415
    .line 2416
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2417
    .line 2418
    .line 2419
    move-result-object v1

    .line 2420
    check-cast v1, Ljava/io/File;

    .line 2421
    .line 2422
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2423
    .line 2424
    .line 2425
    goto :goto_32

    .line 2426
    :cond_45
    :goto_33
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    const-wide/16 v7, 0x3e8

    .line 10
    .line 11
    div-long v4, v3, v7

    .line 12
    .line 13
    const-string v1, "Opening a new session with ID "

    .line 14
    .line 15
    invoke-static {v1, v2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "FirebaseCrashlytics"

    .line 20
    .line 21
    const/4 v9, 0x3

    .line 22
    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v10, 0x0

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const-string v3, "FirebaseCrashlytics"

    .line 30
    .line 31
    invoke-static {v3, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    const-string v3, "Crashlytics Android SDK/20.0.6"

    .line 37
    .line 38
    iget-object v1, v0, Lsy1;->f:Lk94;

    .line 39
    .line 40
    iget-object v6, v0, Lsy1;->h:Lcq;

    .line 41
    .line 42
    iget-object v13, v1, Lk94;->c:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v14, v6, Lcq;->f:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v15, v6, Lcq;->g:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1}, Lk94;->c()Ltd0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v1, v1, Ltd0;->a:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v12, v6, Lcq;->d:Ljava/lang/String;

    .line 55
    .line 56
    const/16 v19, 0x1

    .line 57
    .line 58
    move-wide/from16 v20, v7

    .line 59
    .line 60
    if-eqz v12, :cond_1

    .line 61
    .line 62
    const/4 v8, 0x4

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move/from16 v8, v19

    .line 65
    .line 66
    :goto_0
    invoke-static {v8}, Lxs1;->c(I)I

    .line 67
    .line 68
    .line 69
    move-result v17

    .line 70
    iget-object v6, v6, Lcq;->h:Loe;

    .line 71
    .line 72
    new-instance v12, Lke0;

    .line 73
    .line 74
    move-object/from16 v16, v1

    .line 75
    .line 76
    move-object/from16 v18, v6

    .line 77
    .line 78
    invoke-direct/range {v12 .. v18}, Lke0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILoe;)V

    .line 79
    .line 80
    .line 81
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 82
    .line 83
    sget-object v13, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {}, Ljm1;->C()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    new-instance v6, Lme0;

    .line 90
    .line 91
    invoke-direct {v6, v1}, Lme0;-><init>(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lsy1;->a:Landroid/content/Context;

    .line 95
    .line 96
    new-instance v14, Landroid/os/StatFs;

    .line 97
    .line 98
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v15

    .line 106
    invoke-direct {v14, v15}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v14}, Landroid/os/StatFs;->getBlockCount()I

    .line 110
    .line 111
    .line 112
    move-result v15

    .line 113
    move-object/from16 v17, v8

    .line 114
    .line 115
    int-to-long v7, v15

    .line 116
    invoke-virtual {v14}, Landroid/os/StatFs;->getBlockSize()I

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    int-to-long v14, v14

    .line 121
    mul-long v27, v7, v14

    .line 122
    .line 123
    sget-object v7, Lim1;->a:Lim1;

    .line 124
    .line 125
    const-string v8, "FirebaseCrashlytics"

    .line 126
    .line 127
    sget-object v14, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    const/4 v9, 0x2

    .line 134
    if-eqz v15, :cond_2

    .line 135
    .line 136
    const-string v15, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    .line 137
    .line 138
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 139
    .line 140
    .line 141
    move-result v22

    .line 142
    if-eqz v22, :cond_4

    .line 143
    .line 144
    invoke-static {v8, v15, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v14, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    sget-object v15, Lim1;->b:Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, Lim1;

    .line 159
    .line 160
    if-nez v8, :cond_3

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    move-object v7, v8

    .line 164
    :cond_4
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 165
    .line 166
    .line 167
    move-result v23

    .line 168
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    .line 175
    .line 176
    .line 177
    move-result v24

    .line 178
    invoke-static {v1}, Ljm1;->g(Landroid/content/Context;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v25

    .line 182
    invoke-static {}, Ljm1;->B()Z

    .line 183
    .line 184
    .line 185
    move-result v29

    .line 186
    invoke-static {}, Ljm1;->B()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-static {}, Ljm1;->C()Z

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-eqz v8, :cond_5

    .line 195
    .line 196
    or-int/lit8 v1, v1, 0x2

    .line 197
    .line 198
    :cond_5
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-eqz v8, :cond_6

    .line 203
    .line 204
    or-int/lit8 v1, v1, 0x4

    .line 205
    .line 206
    :cond_6
    move/from16 v30, v1

    .line 207
    .line 208
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 209
    .line 210
    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 211
    .line 212
    new-instance v22, Lle0;

    .line 213
    .line 214
    invoke-direct/range {v22 .. v30}, Lle0;-><init>(IIJJZI)V

    .line 215
    .line 216
    .line 217
    move-object/from16 v1, v22

    .line 218
    .line 219
    move/from16 v22, v9

    .line 220
    .line 221
    iget-object v9, v0, Lsy1;->j:Laz1;

    .line 222
    .line 223
    new-instance v10, Lje0;

    .line 224
    .line 225
    invoke-direct {v10, v12, v6, v1}, Lje0;-><init>(Lke0;Lme0;Lle0;)V

    .line 226
    .line 227
    .line 228
    move-object v1, v9

    .line 229
    move-object v6, v10

    .line 230
    invoke-interface/range {v1 .. v6}, Laz1;->prepareNativeSession(Ljava/lang/String;Ljava/lang/String;JLvm7;)V

    .line 231
    .line 232
    .line 233
    move-wide v9, v4

    .line 234
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_7

    .line 239
    .line 240
    if-eqz v2, :cond_7

    .line 241
    .line 242
    iget-object v1, v0, Lsy1;->d:Li75;

    .line 243
    .line 244
    iget-object v3, v1, Li75;->c:Ljava/lang/Object;

    .line 245
    .line 246
    move-object v12, v3

    .line 247
    check-cast v12, Ljava/lang/String;

    .line 248
    .line 249
    monitor-enter v12

    .line 250
    :try_start_0
    iput-object v2, v1, Li75;->c:Ljava/lang/Object;

    .line 251
    .line 252
    iget-object v3, v1, Li75;->d:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v3, Lfh8;

    .line 255
    .line 256
    iget-object v3, v3, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    check-cast v3, Lbp4;

    .line 263
    .line 264
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    .line 266
    .line 267
    iget-object v5, v3, Lbp4;->a:Ljava/util/HashMap;

    .line 268
    .line 269
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 273
    .line 274
    .line 275
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 276
    :try_start_2
    monitor-exit v3

    .line 277
    iget-object v3, v1, Li75;->f:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v3, Li66;

    .line 280
    .line 281
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    .line 283
    .line 284
    iget-object v6, v3, Li66;->b:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v6, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    :try_start_4
    monitor-exit v3

    .line 296
    iget-object v3, v1, Li75;->b:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v3, Ls02;

    .line 299
    .line 300
    iget-object v3, v3, Ls02;->b:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v3, Lo02;

    .line 303
    .line 304
    move-object v2, v1

    .line 305
    new-instance v1, Lpf2;

    .line 306
    .line 307
    const/4 v6, 0x1

    .line 308
    move-object/from16 v24, v15

    .line 309
    .line 310
    move-object v15, v3

    .line 311
    move-object/from16 v3, p1

    .line 312
    .line 313
    invoke-direct/range {v1 .. v6}, Lpf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 314
    .line 315
    .line 316
    move-object v2, v3

    .line 317
    invoke-virtual {v15, v1}, Lo02;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 318
    .line 319
    .line 320
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 321
    goto :goto_3

    .line 322
    :catchall_0
    move-exception v0

    .line 323
    goto :goto_2

    .line 324
    :catchall_1
    move-exception v0

    .line 325
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 326
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 327
    :catchall_2
    move-exception v0

    .line 328
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 329
    :try_start_8
    throw v0

    .line 330
    :goto_2
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 331
    throw v0

    .line 332
    :cond_7
    move-object/from16 v24, v15

    .line 333
    .line 334
    :goto_3
    iget-object v1, v0, Lsy1;->i:Lot9;

    .line 335
    .line 336
    iget-object v3, v1, Lot9;->b:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v3, Lw83;

    .line 339
    .line 340
    invoke-interface {v3}, Lw83;->a()V

    .line 341
    .line 342
    .line 343
    sget-object v3, Lot9;->c:Lge;

    .line 344
    .line 345
    iput-object v3, v1, Lot9;->b:Ljava/lang/Object;

    .line 346
    .line 347
    if-nez v2, :cond_8

    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_8
    iget-object v3, v1, Lot9;->a:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v3, Lca3;

    .line 353
    .line 354
    const-string v4, "userlog"

    .line 355
    .line 356
    invoke-virtual {v3, v2, v4}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    new-instance v4, Lwc6;

    .line 361
    .line 362
    invoke-direct {v4, v3}, Lwc6;-><init>(Ljava/io/File;)V

    .line 363
    .line 364
    .line 365
    iput-object v4, v1, Lot9;->b:Ljava/lang/Object;

    .line 366
    .line 367
    :goto_4
    iget-object v1, v0, Lsy1;->l:Loy1;

    .line 368
    .line 369
    invoke-virtual {v1, v2}, Loy1;->b(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object v0, v0, Lsy1;->m:Lca3;

    .line 373
    .line 374
    iget-object v1, v0, Lca3;->a:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v1, Ld02;

    .line 377
    .line 378
    sget-object v3, Lc02;->a:Ljava/nio/charset/Charset;

    .line 379
    .line 380
    new-instance v3, Lwb0;

    .line 381
    .line 382
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 383
    .line 384
    .line 385
    const-string v4, "20.0.6"

    .line 386
    .line 387
    iput-object v4, v3, Lwb0;->a:Ljava/lang/String;

    .line 388
    .line 389
    iget-object v4, v1, Ld02;->c:Lcq;

    .line 390
    .line 391
    iget-object v5, v4, Lcq;->a:Ljava/lang/String;

    .line 392
    .line 393
    if-eqz v5, :cond_1a

    .line 394
    .line 395
    iput-object v5, v3, Lwb0;->b:Ljava/lang/String;

    .line 396
    .line 397
    iget-object v5, v1, Ld02;->b:Lk94;

    .line 398
    .line 399
    invoke-virtual {v5}, Lk94;->c()Ltd0;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    iget-object v6, v6, Ltd0;->a:Ljava/lang/String;

    .line 404
    .line 405
    if-eqz v6, :cond_19

    .line 406
    .line 407
    iput-object v6, v3, Lwb0;->d:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v5}, Lk94;->c()Ltd0;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    iget-object v6, v6, Ltd0;->b:Ljava/lang/String;

    .line 414
    .line 415
    iput-object v6, v3, Lwb0;->e:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v5}, Lk94;->c()Ltd0;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    iget-object v6, v6, Ltd0;->c:Ljava/lang/String;

    .line 422
    .line 423
    iput-object v6, v3, Lwb0;->f:Ljava/lang/String;

    .line 424
    .line 425
    iget-object v6, v4, Lcq;->f:Ljava/lang/String;

    .line 426
    .line 427
    if-eqz v6, :cond_18

    .line 428
    .line 429
    iput-object v6, v3, Lwb0;->h:Ljava/lang/String;

    .line 430
    .line 431
    iget-object v12, v4, Lcq;->g:Ljava/lang/String;

    .line 432
    .line 433
    if-eqz v12, :cond_17

    .line 434
    .line 435
    iput-object v12, v3, Lwb0;->i:Ljava/lang/String;

    .line 436
    .line 437
    const/4 v15, 0x4

    .line 438
    iput v15, v3, Lwb0;->c:I

    .line 439
    .line 440
    iget-byte v15, v3, Lwb0;->m:B

    .line 441
    .line 442
    or-int/lit8 v15, v15, 0x1

    .line 443
    .line 444
    int-to-byte v15, v15

    .line 445
    iput-byte v15, v3, Lwb0;->m:B

    .line 446
    .line 447
    new-instance v15, Lfc0;

    .line 448
    .line 449
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 450
    .line 451
    .line 452
    move-object/from16 v27, v6

    .line 453
    .line 454
    const/4 v6, 0x0

    .line 455
    iput-boolean v6, v15, Lfc0;->f:Z

    .line 456
    .line 457
    iget-byte v6, v15, Lfc0;->m:B

    .line 458
    .line 459
    or-int/lit8 v6, v6, 0x2

    .line 460
    .line 461
    int-to-byte v6, v6

    .line 462
    iput-wide v9, v15, Lfc0;->d:J

    .line 463
    .line 464
    or-int/lit8 v6, v6, 0x1

    .line 465
    .line 466
    int-to-byte v6, v6

    .line 467
    iput-byte v6, v15, Lfc0;->m:B

    .line 468
    .line 469
    if-eqz v2, :cond_16

    .line 470
    .line 471
    iput-object v2, v15, Lfc0;->b:Ljava/lang/String;

    .line 472
    .line 473
    sget-object v2, Ld02;->g:Ljava/lang/String;

    .line 474
    .line 475
    if-eqz v2, :cond_15

    .line 476
    .line 477
    iput-object v2, v15, Lfc0;->a:Ljava/lang/String;

    .line 478
    .line 479
    iget-object v2, v5, Lk94;->c:Ljava/lang/String;

    .line 480
    .line 481
    if-eqz v2, :cond_14

    .line 482
    .line 483
    invoke-virtual {v5}, Lk94;->c()Ltd0;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    iget-object v5, v5, Ltd0;->a:Ljava/lang/String;

    .line 488
    .line 489
    iget-object v4, v4, Lcq;->h:Loe;

    .line 490
    .line 491
    invoke-virtual {v4}, Loe;->i()Lw00;

    .line 492
    .line 493
    .line 494
    move-result-object v6

    .line 495
    iget-object v6, v6, Lw00;->b:Ljava/lang/Object;

    .line 496
    .line 497
    move-object/from16 v30, v6

    .line 498
    .line 499
    check-cast v30, Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {v4}, Loe;->i()Lw00;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    iget-object v4, v4, Lw00;->c:Ljava/lang/Object;

    .line 506
    .line 507
    move-object/from16 v31, v4

    .line 508
    .line 509
    check-cast v31, Ljava/lang/String;

    .line 510
    .line 511
    new-instance v25, Lhc0;

    .line 512
    .line 513
    move-object/from16 v26, v2

    .line 514
    .line 515
    move-object/from16 v29, v5

    .line 516
    .line 517
    move-object/from16 v28, v12

    .line 518
    .line 519
    invoke-direct/range {v25 .. v31}, Lhc0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    move-object/from16 v2, v25

    .line 523
    .line 524
    iput-object v2, v15, Lfc0;->g:Ljz1;

    .line 525
    .line 526
    new-instance v2, Led0;

    .line 527
    .line 528
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 529
    .line 530
    .line 531
    const/4 v4, 0x3

    .line 532
    iput v4, v2, Led0;->a:I

    .line 533
    .line 534
    iget-byte v4, v2, Led0;->e:B

    .line 535
    .line 536
    or-int/lit8 v4, v4, 0x1

    .line 537
    .line 538
    int-to-byte v4, v4

    .line 539
    iput-byte v4, v2, Led0;->e:B

    .line 540
    .line 541
    if-eqz v17, :cond_13

    .line 542
    .line 543
    move-object/from16 v4, v17

    .line 544
    .line 545
    iput-object v4, v2, Led0;->b:Ljava/lang/String;

    .line 546
    .line 547
    if-eqz v13, :cond_12

    .line 548
    .line 549
    iput-object v13, v2, Led0;->c:Ljava/lang/String;

    .line 550
    .line 551
    invoke-static {}, Ljm1;->C()Z

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    iput-boolean v4, v2, Led0;->d:Z

    .line 556
    .line 557
    iget-byte v4, v2, Led0;->e:B

    .line 558
    .line 559
    or-int/lit8 v4, v4, 0x2

    .line 560
    .line 561
    int-to-byte v4, v4

    .line 562
    iput-byte v4, v2, Led0;->e:B

    .line 563
    .line 564
    invoke-virtual {v2}, Led0;->a()Lfd0;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    iput-object v2, v15, Lfc0;->i:Lzz1;

    .line 569
    .line 570
    new-instance v2, Landroid/os/StatFs;

    .line 571
    .line 572
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    const/4 v5, 0x7

    .line 588
    if-eqz v4, :cond_9

    .line 589
    .line 590
    goto :goto_5

    .line 591
    :cond_9
    sget-object v4, Ld02;->f:Ljava/util/HashMap;

    .line 592
    .line 593
    invoke-virtual {v14, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v6

    .line 597
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    check-cast v4, Ljava/lang/Integer;

    .line 602
    .line 603
    if-nez v4, :cond_a

    .line 604
    .line 605
    goto :goto_5

    .line 606
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    :goto_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    .line 615
    .line 616
    .line 617
    move-result v4

    .line 618
    iget-object v1, v1, Ld02;->a:Landroid/content/Context;

    .line 619
    .line 620
    invoke-static {v1}, Ljm1;->g(Landroid/content/Context;)J

    .line 621
    .line 622
    .line 623
    move-result-wide v9

    .line 624
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    int-to-long v11, v1

    .line 629
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    int-to-long v1, v1

    .line 634
    mul-long/2addr v11, v1

    .line 635
    invoke-static {}, Ljm1;->B()Z

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    invoke-static {}, Ljm1;->B()Z

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    invoke-static {}, Ljm1;->C()Z

    .line 644
    .line 645
    .line 646
    move-result v6

    .line 647
    if-eqz v6, :cond_b

    .line 648
    .line 649
    or-int/lit8 v2, v2, 0x2

    .line 650
    .line 651
    :cond_b
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    .line 652
    .line 653
    .line 654
    move-result v6

    .line 655
    if-eqz v6, :cond_c

    .line 656
    .line 657
    or-int/lit8 v2, v2, 0x4

    .line 658
    .line 659
    :cond_c
    new-instance v6, Ljc0;

    .line 660
    .line 661
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 662
    .line 663
    .line 664
    iput v5, v6, Ljc0;->a:I

    .line 665
    .line 666
    iget-byte v5, v6, Ljc0;->j:B

    .line 667
    .line 668
    or-int/lit8 v5, v5, 0x1

    .line 669
    .line 670
    int-to-byte v5, v5

    .line 671
    iput-byte v5, v6, Ljc0;->j:B

    .line 672
    .line 673
    if-eqz v7, :cond_11

    .line 674
    .line 675
    iput-object v7, v6, Ljc0;->b:Ljava/lang/String;

    .line 676
    .line 677
    iput v4, v6, Ljc0;->c:I

    .line 678
    .line 679
    or-int/lit8 v4, v5, 0x2

    .line 680
    .line 681
    int-to-byte v4, v4

    .line 682
    iput-wide v9, v6, Ljc0;->d:J

    .line 683
    .line 684
    const/16 v16, 0x4

    .line 685
    .line 686
    or-int/lit8 v4, v4, 0x4

    .line 687
    .line 688
    int-to-byte v4, v4

    .line 689
    iput-wide v11, v6, Ljc0;->e:J

    .line 690
    .line 691
    or-int/lit8 v4, v4, 0x8

    .line 692
    .line 693
    int-to-byte v4, v4

    .line 694
    iput-boolean v1, v6, Ljc0;->f:Z

    .line 695
    .line 696
    or-int/lit8 v1, v4, 0x10

    .line 697
    .line 698
    int-to-byte v1, v1

    .line 699
    iput v2, v6, Ljc0;->g:I

    .line 700
    .line 701
    or-int/lit8 v1, v1, 0x20

    .line 702
    .line 703
    int-to-byte v1, v1

    .line 704
    iput-byte v1, v6, Ljc0;->j:B

    .line 705
    .line 706
    if-eqz v8, :cond_10

    .line 707
    .line 708
    iput-object v8, v6, Ljc0;->h:Ljava/lang/String;

    .line 709
    .line 710
    if-eqz v24, :cond_f

    .line 711
    .line 712
    move-object/from16 v1, v24

    .line 713
    .line 714
    iput-object v1, v6, Ljc0;->i:Ljava/lang/String;

    .line 715
    .line 716
    invoke-virtual {v6}, Ljc0;->a()Lkc0;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    iput-object v1, v15, Lfc0;->j:Lkz1;

    .line 721
    .line 722
    const/4 v4, 0x3

    .line 723
    iput v4, v15, Lfc0;->l:I

    .line 724
    .line 725
    iget-byte v1, v15, Lfc0;->m:B

    .line 726
    .line 727
    const/16 v16, 0x4

    .line 728
    .line 729
    or-int/lit8 v1, v1, 0x4

    .line 730
    .line 731
    int-to-byte v1, v1

    .line 732
    iput-byte v1, v15, Lfc0;->m:B

    .line 733
    .line 734
    invoke-virtual {v15}, Lfc0;->a()Lgc0;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    iput-object v1, v3, Lwb0;->j:Lb02;

    .line 739
    .line 740
    invoke-virtual {v3}, Lwb0;->a()Lxb0;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    iget-object v0, v0, Lca3;->b:Ljava/lang/Object;

    .line 745
    .line 746
    check-cast v0, Lk02;

    .line 747
    .line 748
    iget-object v0, v0, Lk02;->b:Lca3;

    .line 749
    .line 750
    const-string v2, "FirebaseCrashlytics"

    .line 751
    .line 752
    iget-object v3, v1, Lxb0;->k:Lb02;

    .line 753
    .line 754
    if-nez v3, :cond_d

    .line 755
    .line 756
    const-string v0, "Could not get session for report"

    .line 757
    .line 758
    const/4 v4, 0x3

    .line 759
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-eqz v1, :cond_e

    .line 764
    .line 765
    const/4 v1, 0x0

    .line 766
    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    .line 768
    .line 769
    return-void

    .line 770
    :cond_d
    move-object v4, v3

    .line 771
    check-cast v4, Lgc0;

    .line 772
    .line 773
    iget-object v4, v4, Lgc0;->b:Ljava/lang/String;

    .line 774
    .line 775
    :try_start_9
    sget-object v5, Lk02;->g:Lf02;

    .line 776
    .line 777
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    sget-object v5, Lf02;->a:Lom5;

    .line 781
    .line 782
    invoke-virtual {v5, v1}, Lom5;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    const-string v5, "report"

    .line 787
    .line 788
    invoke-virtual {v0, v4, v5}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 789
    .line 790
    .line 791
    move-result-object v5

    .line 792
    invoke-static {v5, v1}, Lk02;->f(Ljava/io/File;Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    const-string v1, "start-time"

    .line 796
    .line 797
    invoke-virtual {v0, v4, v1}, Lca3;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    const-string v1, ""

    .line 802
    .line 803
    check-cast v3, Lgc0;

    .line 804
    .line 805
    iget-wide v5, v3, Lgc0;->d:J

    .line 806
    .line 807
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 808
    .line 809
    new-instance v7, Ljava/io/FileOutputStream;

    .line 810
    .line 811
    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 812
    .line 813
    .line 814
    sget-object v8, Lk02;->e:Ljava/nio/charset/Charset;

    .line 815
    .line 816
    invoke-direct {v3, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 817
    .line 818
    .line 819
    :try_start_a
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    mul-long v5, v5, v20

    .line 823
    .line 824
    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 825
    .line 826
    .line 827
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 828
    .line 829
    .line 830
    return-void

    .line 831
    :catchall_3
    move-exception v0

    .line 832
    move-object v1, v0

    .line 833
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 834
    .line 835
    .line 836
    goto :goto_6

    .line 837
    :catchall_4
    move-exception v0

    .line 838
    :try_start_d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 839
    .line 840
    .line 841
    :goto_6
    throw v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    const-string v1, "Could not persist report for session "

    .line 844
    .line 845
    invoke-static {v1, v4}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    const/4 v4, 0x3

    .line 850
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    if-eqz v3, :cond_e

    .line 855
    .line 856
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    .line 858
    .line 859
    :cond_e
    return-void

    .line 860
    :cond_f
    const-string v0, "Null modelClass"

    .line 861
    .line 862
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    return-void

    .line 866
    :cond_10
    const-string v0, "Null manufacturer"

    .line 867
    .line 868
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    return-void

    .line 872
    :cond_11
    const-string v0, "Null model"

    .line 873
    .line 874
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    return-void

    .line 878
    :cond_12
    const-string v0, "Null buildVersion"

    .line 879
    .line 880
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    return-void

    .line 884
    :cond_13
    const-string v0, "Null version"

    .line 885
    .line 886
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    return-void

    .line 890
    :cond_14
    const-string v0, "Null identifier"

    .line 891
    .line 892
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    return-void

    .line 896
    :cond_15
    const-string v0, "Null generator"

    .line 897
    .line 898
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    return-void

    .line 902
    :cond_16
    const-string v0, "Null identifier"

    .line 903
    .line 904
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    return-void

    .line 908
    :cond_17
    const-string v0, "Null displayVersion"

    .line 909
    .line 910
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    return-void

    .line 914
    :cond_18
    const-string v0, "Null buildVersion"

    .line 915
    .line 916
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    return-void

    .line 920
    :cond_19
    const-string v0, "Null installationUuid"

    .line 921
    .line 922
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    return-void

    .line 926
    :cond_1a
    const-string v0, "Null gmpAppId"

    .line 927
    .line 928
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    return-void
.end method

.method public final d(J)V
    .locals 2

    .line 1
    const-string v0, ".ae"

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lsy1;->g:Lca3;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance p2, Ljava/io/File;

    .line 21
    .line 22
    iget-object p0, p0, Lca3;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 37
    .line 38
    const-string p1, "Create new file failed."

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string p1, "Could not create app exception marker file."

    .line 46
    .line 47
    const-string p2, "FirebaseCrashlytics"

    .line 48
    .line 49
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final e(Lf80;)Z
    .locals 5

    .line 1
    invoke-static {}, Ls02;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lsy1;->n:Lm02;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "FirebaseCrashlytics"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lm02;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string p0, "Skipping session finalization because a crash has already occurred."

    .line 21
    .line 22
    invoke-static {v3, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    const-string v4, "Finalizing previously open sessions."

    .line 34
    .line 35
    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 v4, 0x1

    .line 39
    :try_start_0
    invoke-virtual {p0, v4, p1, v4}, Lsy1;->b(ZLf80;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    const-string p0, "Closed all previously open sessions."

    .line 49
    .line 50
    invoke-static {v3, p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_2
    return v4

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string p1, "Unable to finalize previously open sessions."

    .line 56
    .line 57
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    return v2
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lsy1;->m:Lca3;

    .line 2
    .line 3
    iget-object p0, p0, Lca3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lk02;

    .line 6
    .line 7
    invoke-virtual {p0}, Lk02;->c()Ljava/util/NavigableSet;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "com.google.firebase.crashlytics.version_control_info"

    .line 2
    .line 3
    const-string v1, "string"

    .line 4
    .line 5
    iget-object p0, p0, Lsy1;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object p0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    const/4 v0, 0x3

    .line 25
    const/4 v2, 0x0

    .line 26
    const-string v3, "FirebaseCrashlytics"

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "Read version control info from string resource"

    .line 37
    .line 38
    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object v0, Lsy1;->t:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    const-class p0, Lsy1;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-nez p0, :cond_3

    .line 59
    .line 60
    const-string p0, "Couldn\'t get Class Loader"

    .line 61
    .line 62
    invoke-static {v3, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    move-object p0, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const-string v4, "META-INF/version-control-info.textproto"

    .line 68
    .line 69
    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :goto_1
    if-eqz p0, :cond_6

    .line 74
    .line 75
    :try_start_0
    const-string v4, "Read version control info from file"

    .line 76
    .line 77
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    .line 90
    .line 91
    const/16 v1, 0x400

    .line 92
    .line 93
    :try_start_1
    new-array v1, v1, [B

    .line 94
    .line 95
    :goto_2
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/4 v4, -0x1

    .line 100
    if-eq v3, v4, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 109
    .line 110
    .line 111
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 120
    .line 121
    .line 122
    return-object v0

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    goto :goto_5

    .line 125
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :catchall_2
    move-exception v0

    .line 130
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :goto_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :catchall_3
    move-exception p0

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :goto_6
    throw v0

    .line 143
    :cond_6
    if-eqz p0, :cond_7

    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 146
    .line 147
    .line 148
    :cond_7
    const-string p0, "No version control information found"

    .line 149
    .line 150
    invoke-static {v3, p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    return-object v1
.end method

.method public final h()V
    .locals 5

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lsy1;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const-string v2, "com.crashlytics.version-control-info"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_1
    iget-object v4, p0, Lsy1;->d:Li75;

    .line 13
    .line 14
    iget-object v4, v4, Li75;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v4, Lfh8;

    .line 17
    .line 18
    invoke-virtual {v4, v2, v1}, Lfh8;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v1

    .line 23
    :try_start_2
    iget-object p0, p0, Lsy1;->a:Landroid/content/Context;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 32
    .line 33
    and-int/lit8 p0, p0, 0x2

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    :goto_0
    if-nez p0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    throw v1

    .line 44
    :cond_2
    :goto_1
    const-string p0, "Attempting to set custom attribute with null key, ignoring."

    .line 45
    .line 46
    invoke-static {v0, p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :goto_2
    const-string p0, "Saved version control info"

    .line 50
    .line 51
    invoke-static {v0, p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :catch_1
    move-exception p0

    .line 56
    const-string v1, "Unable to save version control info"

    .line 57
    .line 58
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_3
    return-void
.end method

.method public final i(Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lsy1;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    const-string v1, "FirebaseCrashlytics"

    .line 4
    .line 5
    iget-object v2, p0, Lsy1;->m:Lca3;

    .line 6
    .line 7
    iget-object v2, v2, Lca3;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lk02;

    .line 10
    .line 11
    iget-object v2, v2, Lk02;->b:Lca3;

    .line 12
    .line 13
    iget-object v3, v2, Lca3;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Lca3;->l([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    iget-object v3, v2, Lca3;->f:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Lca3;->l([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    iget-object v2, v2, Lca3;->k:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Lca3;->l([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const-string p0, "No crash reports are available to be sent."

    .line 71
    .line 72
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-static {v1, p0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    :goto_0
    sget-object v2, Lnh4;->c:Lnh4;

    .line 88
    .line 89
    const-string v3, "Crash reports are available to be sent."

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Lnh4;->o(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lsy1;->b:Lka2;

    .line 95
    .line 96
    invoke-virtual {v3}, Lka2;->b()Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_4

    .line 101
    .line 102
    const-string v2, "Automatic data collection is enabled. Allowing upload."

    .line 103
    .line 104
    const/4 v3, 0x3

    .line 105
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    invoke-static {v1, v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    const-string v1, "Automatic data collection is disabled."

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Lnh4;->h(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v1, "Notifying that unsent reports are available."

    .line 132
    .line 133
    invoke-virtual {v2, v1}, Lnh4;->o(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    iget-object v0, v3, Lka2;->c:Ljava/lang/Object;

    .line 142
    .line 143
    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, v3, Lka2;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    new-instance v0, Lge;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "Waiting for send/deleteUnsentReports to be called."

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Lnh4;->h(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lsy1;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v0, v1}, Lnc8;->V(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    :goto_1
    iget-object v1, p0, Lsy1;->e:Ls02;

    .line 176
    .line 177
    iget-object v1, v1, Ls02;->a:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Lo02;

    .line 180
    .line 181
    new-instance v2, Lyf1;

    .line 182
    .line 183
    const/4 v3, 0x0

    .line 184
    invoke-direct {v2, p0, p1, v4, v3}, Lyf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :catchall_0
    move-exception p0

    .line 192
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    throw p0
.end method
