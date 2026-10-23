.class public final Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAME"

.field private static final EXTRA_STATUS:Ljava/lang/String; = "android.content.pm.extra.STATUS"

.field private static final EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.pm.extra.STATUS_MESSAGE"

.field public static final INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;

.field private static final PREFIX:Ljava/lang/String; = "SB_INSTALL"

.field private static final RESULT_TIMEOUT_MILLIS:J = 0x1d4c0L

.field private static final STATUS_FAILURE_TIMEOUT_COMPAT:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final commitAndAwaitResult(Landroid/content/Context;Landroid/content/pm/PackageInstaller$Session;Ljava/lang/String;Ljava/lang/String;)Lcd4;
    .locals 4

    .line 1
    new-instance v0, Led4;

    .line 2
    .line 3
    invoke-direct {v0}, Led4;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v2, v0, Led4;->c:Ldd4;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroid/content/IntentSender;->readIntentSenderOrNullFromParcel(Landroid/os/Parcel;)Landroid/content/IntentSender;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, v0, Led4;->a:Ljava/util/concurrent/CountDownLatch;

    .line 35
    .line 36
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    const-wide/32 v2, 0x1d4c0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    iget-object p2, v0, Led4;->b:Landroid/content/Intent;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object p2, v1

    .line 52
    :goto_0
    if-nez p2, :cond_1

    .line 53
    .line 54
    new-instance p0, Lcd4;

    .line 55
    .line 56
    const-string p1, "Timed out waiting for PackageInstaller result intent"

    .line 57
    .line 58
    sget-object p2, Lbd4;->Internal:Lbd4;

    .line 59
    .line 60
    const/16 p3, 0x8

    .line 61
    .line 62
    invoke-direct {p0, p3, p1, v1, p2}, Lcd4;-><init>(ILjava/lang/String;Ljava/lang/String;Lbd4;)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_1
    invoke-virtual {p0, p2}, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;->installResultFromIntent$app(Landroid/content/Intent;)Lcd4;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-nez p2, :cond_2

    .line 71
    .line 72
    new-instance p0, Lcd4;

    .line 73
    .line 74
    const-string p1, "PackageInstaller result intent did not include an install status"

    .line 75
    .line 76
    sget-object p2, Lbd4;->Internal:Lbd4;

    .line 77
    .line 78
    const/4 p4, 0x1

    .line 79
    invoke-direct {p0, p4, p1, p3, p2}, Lcd4;-><init>(ILjava/lang/String;Ljava/lang/String;Lbd4;)V

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_2
    iget v0, p2, Lcd4;->a:I

    .line 84
    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    invoke-direct {p0, p1, p3, p4}, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;->verifyInstallSource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcd4;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_3
    return-object p2

    .line 93
    :cond_4
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    const-string p1, "Failed to create local PackageInstaller result sender"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method private final createInstallerContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;->prepareAppProcessMainLooper()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const-string p0, "android.app.ActivityThread"

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "systemMain"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "getSystemContext"

    .line 28
    .line 29
    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    check-cast p0, Landroid/content/Context;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method private final install(Lfd4;)I
    .locals 14

    .line 1
    const-string v1, "]"

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    iget-object v0, p1, Lfd4;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p1, Lfd4;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;->createInstallerContext(Ljava/lang/String;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v5, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    invoke-direct {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lfd4;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v7, 0x4

    .line 36
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 37
    .line 38
    .line 39
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v8, 0x22

    .line 42
    .line 43
    if-lt v7, v8, :cond_0

    .line 44
    .line 45
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/16 v8, 0x21

    .line 49
    .line 50
    const/4 v9, 0x2

    .line 51
    if-lt v7, v8, :cond_1

    .line 52
    .line 53
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const/16 v8, 0x1f

    .line 57
    .line 58
    if-lt v7, v8, :cond_2

    .line 59
    .line 60
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequireUserAction(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const-wide/16 v8, 0x0

    .line 68
    .line 69
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-eqz v10, :cond_3

    .line 74
    .line 75
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    check-cast v10, Lad4;

    .line 80
    .line 81
    iget-wide v10, v10, Lad4;->c:J

    .line 82
    .line 83
    add-long/2addr v8, v10

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 86
    .line 87
    .line 88
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 89
    .line 90
    .line 91
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 93
    .line 94
    .line 95
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_4

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Lad4;

    .line 111
    .line 112
    new-instance v13, Ljava/io/FileInputStream;

    .line 113
    .line 114
    new-instance v9, Ljava/io/File;

    .line 115
    .line 116
    iget-object v10, v8, Lad4;->b:Ljava/lang/String;

    .line 117
    .line 118
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v13, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    move-object v9, v8

    .line 125
    :try_start_3
    iget-object v8, v9, Lad4;->a:Ljava/lang/String;

    .line 126
    .line 127
    iget-wide v11, v9, Lad4;->c:J

    .line 128
    .line 129
    const-wide/16 v9, 0x0

    .line 130
    .line 131
    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    .line 132
    .line 133
    .line 134
    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    const/high16 v9, 0x40000

    .line 139
    .line 140
    invoke-static {v13, v8, v9}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 144
    .line 145
    .line 146
    :try_start_5
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    .line 148
    .line 149
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    move-object p0, v0

    .line 155
    goto :goto_5

    .line 156
    :catchall_1
    move-exception v0

    .line 157
    move-object p0, v0

    .line 158
    goto :goto_2

    .line 159
    :catchall_2
    move-exception v0

    .line 160
    move-object p0, v0

    .line 161
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 162
    :catchall_3
    move-exception v0

    .line 163
    move-object p1, v0

    .line 164
    :try_start_8
    invoke-static {v8, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 168
    :goto_2
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 169
    :catchall_4
    move-exception v0

    .line 170
    move-object p1, v0

    .line 171
    :try_start_a
    invoke-static {v13, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_4
    sget-object v3, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;

    .line 176
    .line 177
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-direct {v3, p0, v7, p1, v0}, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;->commitAndAwaitResult(Landroid/content/Context;Landroid/content/pm/PackageInstaller$Session;Ljava/lang/String;Ljava/lang/String;)Lcd4;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    iget p1, p0, Lcd4;->a:I

    .line 185
    .line 186
    const/4 v0, 0x0

    .line 187
    if-nez p1, :cond_5

    .line 188
    .line 189
    move p1, v6

    .line 190
    goto :goto_3

    .line 191
    :cond_5
    move p1, v0

    .line 192
    :goto_3
    if-eqz p1, :cond_7

    .line 193
    .line 194
    iget-object p0, p0, Lcd4;->c:Ljava/lang/String;

    .line 195
    .line 196
    if-nez p0, :cond_6

    .line 197
    .line 198
    move-object p0, v2

    .line 199
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v3, "SB_INSTALL:Success [session="

    .line 205
    .line 206
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v3, ", package="

    .line 213
    .line 214
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 228
    .line 229
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_7
    invoke-virtual {v3, p0}, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;->failureOutput$app(Lcd4;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 238
    .line 239
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 240
    .line 241
    .line 242
    move v0, v6

    .line 243
    :goto_4
    :try_start_b
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 244
    .line 245
    .line 246
    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    move-object p0, v0

    .line 249
    goto :goto_6

    .line 250
    :goto_5
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 251
    :catchall_5
    move-exception v0

    .line 252
    move-object p1, v0

    .line 253
    :try_start_d
    invoke-static {v7, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    throw p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 257
    :catch_1
    move-exception v0

    .line 258
    move-object p0, v0

    .line 259
    const/4 v5, -0x1

    .line 260
    :goto_6
    if-ltz v5, :cond_8

    .line 261
    .line 262
    :try_start_e
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 263
    .line 264
    .line 265
    :catchall_6
    :cond_8
    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

    .line 266
    .line 267
    if-eqz p1, :cond_9

    .line 268
    .line 269
    move-object p1, p0

    .line 270
    check-cast p1, Ljava/lang/reflect/InvocationTargetException;

    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    if-eqz v0, :cond_9

    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    if-nez p0, :cond_a

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_a
    move-object v2, p0

    .line 298
    :goto_7
    const-string p0, ": "

    .line 299
    .line 300
    invoke-static {p1, p0, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    const-string p1, "SB_INSTALL:Failure ["

    .line 305
    .line 306
    invoke-static {p1, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 311
    .line 312
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    return v6
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;

    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Lzm5;->w([Ljava/lang/String;)Lfd4;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;->install(Lfd4;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    new-instance v0, Lbn6;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    move-object p0, v0

    .line 26
    :goto_0
    invoke-static {p0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    instance-of p0, v0, Ljava/lang/reflect/InvocationTargetException;

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    move-object p0, v0

    .line 37
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    const-string v0, ""

    .line 64
    .line 65
    :cond_1
    const-string v1, ": "

    .line 66
    .line 67
    invoke-static {p0, v1, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string v0, "SB_INSTALL:Failure ["

    .line 72
    .line 73
    const-string v1, "]"

    .line 74
    .line 75
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x1

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 96
    .line 97
    .line 98
    new-instance p0, Ljava/lang/RuntimeException;

    .line 99
    .line 100
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 101
    .line 102
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method private final prepareAppProcessMainLooper()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final verifyInstallSource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcd4;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const-string v2, ""

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance p1, Lcd4;

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    move-object p0, v2

    .line 23
    :cond_0
    const-string p3, "Install verification failed: installerPackageName="

    .line 24
    .line 25
    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object p3, Lbd4;->Internal:Lbd4;

    .line 30
    .line 31
    invoke-direct {p1, v1, p0, p2, p3}, Lcd4;-><init>(ILjava/lang/String;Ljava/lang/String;Lbd4;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 v0, 0x1e

    .line 38
    .line 39
    if-lt p0, v0, :cond_5

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1, p3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1, p3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_5

    .line 71
    .line 72
    :cond_2
    new-instance p1, Lcd4;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    if-nez p3, :cond_3

    .line 79
    .line 80
    move-object p3, v2

    .line 81
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-nez p0, :cond_4

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    move-object v2, p0

    .line 89
    :goto_0
    const-string p0, "Install verification failed: initiatingPackageName="

    .line 90
    .line 91
    const-string v0, ", installingPackageName="

    .line 92
    .line 93
    invoke-static {p0, p3, v0, v2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    sget-object p3, Lbd4;->Internal:Lbd4;

    .line 98
    .line 99
    invoke-direct {p1, v1, p0, p2, p3}, Lcd4;-><init>(ILjava/lang/String;Ljava/lang/String;Lbd4;)V

    .line 100
    .line 101
    .line 102
    return-object p1

    .line 103
    :cond_5
    new-instance p0, Lcd4;

    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    sget-object p3, Lbd4;->PackageInstaller:Lbd4;

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0, p1, p2, p3}, Lcd4;-><init>(ILjava/lang/String;Ljava/lang/String;Lbd4;)V

    .line 110
    .line 111
    .line 112
    return-object p0
.end method


# virtual methods
.method public final failureOutput$app(Lcd4;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Lcd4;->d:Lbd4;

    .line 5
    .line 6
    invoke-virtual {p0}, Lbd4;->getDisplayName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget v0, p1, Lcd4;->a:I

    .line 11
    .line 12
    iget-object p1, p1, Lcd4;->b:Ljava/lang/String;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    :cond_0
    const-string v1, ", status="

    .line 19
    .line 20
    const-string v2, ", message="

    .line 21
    .line 22
    const-string v3, "SB_INSTALL:Failure [source="

    .line 23
    .line 24
    invoke-static {v3, p0, v1, v0, v2}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "]"

    .line 29
    .line 30
    invoke-static {p0, p1, v0}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final installResultFromIntent$app(Landroid/content/Intent;)Lcd4;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 p1, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string v0, "android.content.pm.extra.STATUS"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v1, v0, Ljava/lang/Integer;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    check-cast v0, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    :goto_0
    new-instance v0, Lcd4;

    .line 40
    .line 41
    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "android.content.pm.extra.PACKAGE_NAME"

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-object v2, Lbd4;->PackageInstaller:Lbd4;

    .line 54
    .line 55
    invoke-direct {v0, p1, v1, p0, v2}, Lcd4;-><init>(ILjava/lang/String;Ljava/lang/String;Lbd4;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    return-object p1
.end method
