.class public final Lorg/swiftapps/swiftbackup/SwiftApp;
.super Landroid/app/Application;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements La45;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/SwiftApp$Companion;
    }
.end annotation


# static fields
.field public static final d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

.field public static e:Lorg/swiftapps/swiftbackup/SwiftApp;

.field public static final f:Lgv7;


# instance fields
.field public final a:Lex6;

.field public final b:Lgv7;

.field public final c:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 7
    .line 8
    new-instance v0, Ljx;

    .line 9
    .line 10
    const/16 v1, 0x17

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljx;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lgv7;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->f:Lgv7;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/SwiftApp;->a:Lex6;

    .line 15
    .line 16
    new-instance v0, Lzk;

    .line 17
    .line 18
    const/16 v1, 0x10

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lzk;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/SwiftApp;->b:Lgv7;

    .line 29
    .line 30
    new-instance v0, Lfl;

    .line 31
    .line 32
    const/16 v1, 0xe

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lfl;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lgv7;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/SwiftApp;->c:Lgv7;

    .line 43
    .line 44
    return-void
.end method

.method public static final a(Lorg/swiftapps/swiftbackup/SwiftApp;)V
    .locals 8

    .line 1
    const-class v0, Landroid/app/ActivityManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v0, v1, v2, v2}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Lx5;->d(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    move-object p0, v0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    move-object v0, v1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v0}, Lx5;->d(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v4}, Lx5;->d(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    cmp-long v7, v2, v5

    .line 107
    .line 108
    if-gez v7, :cond_5

    .line 109
    .line 110
    move-object v0, v4

    .line 111
    move-wide v2, v5

    .line 112
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_4

    .line 117
    .line 118
    :goto_1
    invoke-static {v0}, Lx5;->d(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 119
    .line 120
    .line 121
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    goto :goto_3

    .line 123
    :goto_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 124
    .line 125
    invoke-static {p0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-string v0, "slogLastExitInfo: "

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    const/4 v6, 0x4

    .line 136
    const/4 v7, 0x0

    .line 137
    const-string v3, "SwiftApp"

    .line 138
    .line 139
    const/4 v5, 0x0

    .line 140
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    move-object p0, v1

    .line 144
    :goto_3
    if-eqz p0, :cond_c

    .line 145
    .line 146
    sget-object v0, Le10;->a:Ljava/util/Set;

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    sget-object v3, Le10;->a:Ljava/util/Set;

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    const/16 v4, 0xd

    .line 167
    .line 168
    if-ne v0, v4, :cond_7

    .line 169
    .line 170
    if-eqz v2, :cond_7

    .line 171
    .line 172
    const-string v0, "MemoryLimiter:AnonSwap"

    .line 173
    .line 174
    const/4 v4, 0x1

    .line 175
    invoke-static {v2, v0, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-ne v0, v4, :cond_7

    .line 180
    .line 181
    const-string v0, "MemoryLimiter:AnonSwap detected; previous backup/restore may have been killed by Android\'s per-app memory limiter."

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_7
    move-object v0, v1

    .line 185
    :goto_4
    :try_start_1
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getProcessStateSummary()[B

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    new-instance v4, Ljava/lang/String;

    .line 192
    .line 193
    sget-object v5, Lf51;->a:Ljava/nio/charset/Charset;

    .line 194
    .line 195
    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :catch_0
    :cond_8
    move-object v4, v1

    .line 200
    :goto_5
    if-eqz v0, :cond_9

    .line 201
    .line 202
    const-string v2, "\n"

    .line 203
    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    goto :goto_6

    .line 209
    :cond_9
    move-object v0, v1

    .line 210
    :goto_6
    if-nez v0, :cond_a

    .line 211
    .line 212
    const-string v0, ""

    .line 213
    .line 214
    :cond_a
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v7, "Last exit details, "

    .line 223
    .line 224
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string p0, ", description="

    .line 231
    .line 232
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p0, ", stateSummary="

    .line 239
    .line 240
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-static {v6, v4, v0}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    sget-object v0, Lvr6$a;->YELLOW:Lvr6$a;

    .line 248
    .line 249
    if-nez v3, :cond_b

    .line 250
    .line 251
    move-object v1, v0

    .line 252
    :cond_b
    const-string v0, "SwiftApp"

    .line 253
    .line 254
    invoke-virtual {v2, v0, p0, v1}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 255
    .line 256
    .line 257
    :cond_c
    return-void
.end method

.method public static final b()Lorg/swiftapps/swiftbackup/SwiftApp;
    .locals 1

    .line 195
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->b()Lorg/swiftapps/swiftbackup/SwiftApp;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Lorg/swiftapps/swiftbackup/SwiftApp;)V
    .locals 9

    .line 1
    const-class v0, Landroid/app/ActivityManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getHistoricalProcessStartReasons(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Lf6;->c(Ljava/lang/Object;)Landroid/app/ApplicationStartInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/app/ApplicationStartInfo;->getProcessName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object p0, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v3, v2

    .line 56
    :goto_0
    invoke-static {v3}, Lf6;->c(Ljava/lang/Object;)Landroid/app/ApplicationStartInfo;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 62
    .line 63
    invoke-static {p0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v0, "slogStartupInfo: "

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/4 v7, 0x4

    .line 74
    const/4 v8, 0x0

    .line 75
    const-string v4, "SwiftApp"

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    move-object p0, v2

    .line 82
    :goto_2
    if-eqz p0, :cond_8

    .line 83
    .line 84
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getReason()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    const-string v4, "UNKNOWN"

    .line 91
    .line 92
    packed-switch v3, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    move-object v3, v4

    .line 96
    goto :goto_3

    .line 97
    :pswitch_0
    const-string v3, "START ACTIVITY"

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :pswitch_1
    const-string v3, "SERVICE"

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :pswitch_2
    const-string v3, "PUSH"

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :pswitch_3
    const-string v3, "OTHER"

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :pswitch_4
    const-string v3, "LAUNCHER RECENTS"

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :pswitch_5
    const-string v3, "LAUNCHER"

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :pswitch_6
    const-string v3, "JOB"

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :pswitch_7
    const-string v3, "CONTENT PROVIDER"

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :pswitch_8
    const-string v3, "BROADCAST"

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :pswitch_9
    const-string v3, "BOOT COMPLETE"

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :pswitch_a
    const-string v3, "BACKUP"

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :pswitch_b
    const-string v3, "ALARM"

    .line 131
    .line 132
    :goto_3
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getStartType()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_6

    .line 137
    .line 138
    if-eq v5, v1, :cond_5

    .line 139
    .line 140
    const/4 v1, 0x2

    .line 141
    if-eq v5, v1, :cond_4

    .line 142
    .line 143
    const/4 v1, 0x3

    .line 144
    if-eq v5, v1, :cond_3

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_3
    const-string v4, "HOT"

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_4
    const-string v4, "WARM"

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    const-string v4, "COLD"

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_6
    const-string v4, "UNSET"

    .line 157
    .line 158
    :goto_4
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->wasForceStopped()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    const-string v5, ", startType="

    .line 163
    .line 164
    const-string v6, ", wasForceStopped="

    .line 165
    .line 166
    const-string v7, "ApplicationStartInfo: startReason="

    .line 167
    .line 168
    invoke-static {v7, v3, v5, v4, v6}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    sget-object v3, Lvr6$a;->YELLOW:Lvr6$a;

    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->wasForceStopped()Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-eqz p0, :cond_7

    .line 186
    .line 187
    move-object v2, v3

    .line 188
    :cond_7
    const-string p0, "SwiftApp"

    .line 189
    .line 190
    invoke-virtual {v0, p0, v1, v2}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    return-void

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Exiting: reason=("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ")"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SwiftApp"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->x(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    invoke-static {p1, p0}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method

.method public final native getGoogleAuthAndroidClientId()Ljava/lang/String;
.end method

.method public final native getGoogleAuthWebClientId()Ljava/lang/String;
.end method

.method public final native isLocalNetworkTcpBlockedByPermission(Ljava/lang/String;II)Z
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lb67;->e()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Config changed. Locales: "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "LocaleManager"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lj05;->c(Landroid/os/LocaleList;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onCreate()V
    .locals 15

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SwiftApp"

    .line 5
    .line 6
    const-string v1, "onCreate"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    sput-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->e:Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 12
    .line 13
    sget v0, Lb67;->a:I

    .line 14
    .line 15
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->f()Ljava/util/Locale;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Landroid/app/NotificationChannel;

    .line 24
    .line 25
    const-string v3, "backup_restore_channel"

    .line 26
    .line 27
    const v4, 0x7f130093

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v1}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->a(ILjava/util/Locale;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const/4 v5, 0x2

    .line 35
    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Landroid/app/NotificationChannel;

    .line 46
    .line 47
    const-string v4, "normal_channel"

    .line 48
    .line 49
    const v6, 0x7f1303d5

    .line 50
    .line 51
    .line 52
    invoke-static {v6, v1}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->a(ILjava/util/Locale;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-direct {v2, v4, v6, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 66
    .line 67
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 68
    .line 69
    .line 70
    const/4 v4, 0x4

    .line 71
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v4, 0x5

    .line 76
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v4, Landroid/app/NotificationChannel;

    .line 85
    .line 86
    const-string v6, "task_completion_channel_success"

    .line 87
    .line 88
    const v7, 0x7f130569

    .line 89
    .line 90
    .line 91
    invoke-static {v7, v1}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->a(ILjava/util/Locale;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    const/4 v8, 0x3

    .line 96
    invoke-direct {v4, v6, v7, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->e()Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v4, v6, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 107
    .line 108
    .line 109
    const/4 v6, 0x1

    .line 110
    invoke-virtual {v4, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Landroid/app/NotificationChannel;

    .line 120
    .line 121
    const-string v7, "task_completion_channel_error"

    .line 122
    .line 123
    const v9, 0x7f130568

    .line 124
    .line 125
    .line 126
    invoke-static {v9, v1}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->a(ILjava/util/Locale;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-direct {v4, v7, v9, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->b()Landroid/net/Uri;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v4, v7, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 150
    .line 151
    .line 152
    new-instance v4, Landroid/app/NotificationChannel;

    .line 153
    .line 154
    const-string v7, "task_completion_channel_silent"

    .line 155
    .line 156
    const v9, 0x7f130567

    .line 157
    .line 158
    .line 159
    invoke-static {v9, v1}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->a(ILjava/util/Locale;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v4, v7, v1, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 176
    .line 177
    .line 178
    new-instance v1, Landroid/app/NotificationChannel;

    .line 179
    .line 180
    const-string v4, "crash_error_channel"

    .line 181
    .line 182
    const-string v7, "Crash notification"

    .line 183
    .line 184
    invoke-direct {v1, v4, v7, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->b()Landroid/net/Uri;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 204
    .line 205
    .line 206
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 211
    .line 212
    .line 213
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    new-instance v1, Lxs7;

    .line 218
    .line 219
    invoke-direct {v1, p0, v0}, Lxs7;-><init>(Lorg/swiftapps/swiftbackup/SwiftApp;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 223
    .line 224
    .line 225
    sget-boolean v0, Lcz4;->e:Z

    .line 226
    .line 227
    if-eqz v0, :cond_0

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, "_preferences"

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    sput-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 259
    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    sput-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 268
    .line 269
    sput-boolean v6, Lcz4;->e:Z

    .line 270
    .line 271
    :goto_0
    invoke-static {}, Lbs4;->b()V

    .line 272
    .line 273
    .line 274
    sget-object v1, Lmp6;->a:Lmp6;

    .line 275
    .line 276
    monitor-enter v1

    .line 277
    :try_start_0
    sget-object v0, Lmp6;->d:Lex0;

    .line 278
    .line 279
    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->setDefaultBuilder(Lmd7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    .line 281
    .line 282
    monitor-exit v1

    .line 283
    invoke-static {p0}, Lj05;->d(Lorg/swiftapps/swiftbackup/SwiftApp;)V

    .line 284
    .line 285
    .line 286
    const-string v0, "native-lib"

    .line 287
    .line 288
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    sget-object v0, Ld45;->b:Ld45;

    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    iget-object v0, v0, Ld45;->a:Ljava/util/LinkedHashSet;

    .line 297
    .line 298
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    sget-boolean v0, Lgg3;->i:Z

    .line 302
    .line 303
    if-eqz v0, :cond_1

    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_1
    sput-boolean v6, Lgg3;->i:Z

    .line 307
    .line 308
    sget-object v0, Lgg3;->j:Lzc2;

    .line 309
    .line 310
    sget-object v1, Lgg3;->k:Lcg3;

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Lzc2;->c(Laj8;)V

    .line 313
    .line 314
    .line 315
    :goto_1
    new-instance v0, Ljz4;

    .line 316
    .line 317
    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 318
    .line 319
    .line 320
    new-instance v1, Landroid/content/IntentFilter;

    .line 321
    .line 322
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 323
    .line 324
    .line 325
    const/16 v2, 0x3e7

    .line 326
    .line 327
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 328
    .line 329
    .line 330
    const-string v2, "package"

    .line 331
    .line 332
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 336
    .line 337
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 341
    .line 342
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 346
    .line 347
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 351
    .line 352
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->C(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 356
    .line 357
    .line 358
    sget-object v2, Lkc2;->a:Lkc2;

    .line 359
    .line 360
    monitor-enter v2

    .line 361
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 362
    .line 363
    .line 364
    move-result-wide v0

    .line 365
    invoke-static {}, Lkc2;->d()Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-static {v0, v1, v3}, Lkc2;->a(JLjava/util/List;)Ljava/util/ArrayList;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-nez v3, :cond_2

    .line 378
    .line 379
    invoke-static {v4, v0, v1}, Lkc2;->e(Ljava/util/ArrayList;J)Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {v0}, Lkc2;->g(Ljava/util/List;)V

    .line 384
    .line 385
    .line 386
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 387
    .line 388
    const-string v8, "DataSyncFgsRuntimeLedger"

    .line 389
    .line 390
    const-string v9, "Closed stale dataSync FGS sessions from previous process"

    .line 391
    .line 392
    const/4 v11, 0x4

    .line 393
    const/4 v12, 0x0

    .line 394
    const/4 v10, 0x0

    .line 395
    invoke-static/range {v7 .. v12}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    .line 397
    .line 398
    goto :goto_2

    .line 399
    :catchall_0
    move-exception v0

    .line 400
    move-object p0, v0

    .line 401
    goto :goto_3

    .line 402
    :catch_0
    move-exception v0

    .line 403
    move-object v10, v0

    .line 404
    :try_start_2
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 405
    .line 406
    const-string v8, "DataSyncFgsRuntimeLedger"

    .line 407
    .line 408
    const-string v9, "Failed to reconcile dataSync FGS ledger on app launch"

    .line 409
    .line 410
    const/16 v12, 0x8

    .line 411
    .line 412
    const/4 v13, 0x0

    .line 413
    const/4 v11, 0x0

    .line 414
    invoke-static/range {v7 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    .line 416
    .line 417
    :cond_2
    :goto_2
    monitor-exit v2

    .line 418
    sget-object v0, Lzn4;->a:Lzn4;

    .line 419
    .line 420
    new-instance v0, Lys7;

    .line 421
    .line 422
    const/4 v1, 0x0

    .line 423
    invoke-direct {v0, p0, v1}, Lys7;-><init>(Lorg/swiftapps/swiftbackup/SwiftApp;Ljv1;)V

    .line 424
    .line 425
    .line 426
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 427
    .line 428
    .line 429
    sget-object p0, Lnq5;->i:Ljq5;

    .line 430
    .line 431
    new-instance p0, Liq5;

    .line 432
    .line 433
    invoke-direct {p0, v5, v1}, Lws7;-><init>(ILjv1;)V

    .line 434
    .line 435
    .line 436
    invoke-static {v1, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 437
    .line 438
    .line 439
    sget-boolean p0, Lq63;->d:Z

    .line 440
    .line 441
    sget-object p0, Lvr6;->INSTANCE:Lvr6;

    .line 442
    .line 443
    new-instance p0, Ln63;

    .line 444
    .line 445
    invoke-direct {p0, v6}, Ln63;-><init>(I)V

    .line 446
    .line 447
    .line 448
    sput-object p0, Lcy0;->b:Lrt3;

    .line 449
    .line 450
    sget-object v9, Lh70;->a:Lh70;

    .line 451
    .line 452
    new-instance v7, Lg70;

    .line 453
    .line 454
    const-class v10, Lh70;

    .line 455
    .line 456
    const-string v11, "trashDirFor"

    .line 457
    .line 458
    const-string v12, "trashDirFor(Lorg/swiftapps/filesystem/File;)Lorg/swiftapps/filesystem/File;"

    .line 459
    .line 460
    const/4 v13, 0x0

    .line 461
    const/4 v14, 0x0

    .line 462
    const/4 v8, 0x1

    .line 463
    invoke-direct/range {v7 .. v14}, Lg70;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 464
    .line 465
    .line 466
    sput-object v7, Lm70;->b:Lg70;

    .line 467
    .line 468
    const-string p0, "SwiftApp"

    .line 469
    .line 470
    const-string v0, "init() complete"

    .line 471
    .line 472
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .line 474
    .line 475
    new-instance p0, Lzs7;

    .line 476
    .line 477
    invoke-direct {p0, v5, v1}, Lws7;-><init>(ILjv1;)V

    .line 478
    .line 479
    .line 480
    invoke-static {v1, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 481
    .line 482
    .line 483
    new-instance p0, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 484
    .line 485
    invoke-direct {p0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 489
    .line 490
    .line 491
    move-result-object p0

    .line 492
    invoke-static {p0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 493
    .line 494
    .line 495
    return-void

    .line 496
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    throw p0

    .line 498
    :catchall_1
    move-exception v0

    .line 499
    move-object p0, v0

    .line 500
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 501
    throw p0
.end method
