.class Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Laz1;


# static fields
.field public static e:Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;


# instance fields
.field public final a:Lt02;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Lcom/google/firebase/crashlytics/ndk/b;


# direct methods
.method public constructor <init>(Lt02;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->a:Lt02;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->e:Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "FirebaseCrashlyticsNdk component is not present."

    .line 7
    .line 8
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method


# virtual methods
.method public getSessionFileProvider(Ljava/lang/String;)Ltk5;
    .locals 1

    .line 1
    new-instance v0, Lz28;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->a:Lt02;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lt02;->b(Ljava/lang/String;)Lca2;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 p1, 0x10

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public hasCrashDataForCurrentSession()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->hasCrashDataForSession(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public hasCrashDataForSession(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->a:Lt02;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt02;->b(Ljava/lang/String;)Lca2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lca2;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lyf1;

    .line 10
    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lyf1;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Ljava/io/File;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lyf1;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lez1;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public declared-synchronized installSignalHandler()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->d:Lcom/google/firebase/crashlytics/ndk/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/ndk/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->b:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "Native signal handler already installed; skipping re-install."

    .line 19
    .line 20
    const-string v2, "FirebaseCrashlytics"

    .line 21
    .line 22
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v0, "Deferring signal handler installation until the FirebaseCrashlyticsNdk session has been prepared"

    .line 27
    .line 28
    const-string v2, "FirebaseCrashlytics"

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const-string v2, "FirebaseCrashlytics"

    .line 38
    .line 39
    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :cond_2
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    :goto_0
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw v0
.end method

.method public declared-synchronized prepareNativeSession(Ljava/lang/String;Ljava/lang/String;JLvm7;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->c:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v0, Lcom/google/firebase/crashlytics/ndk/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-wide v4, p3

    .line 10
    move-object v6, p5

    .line 11
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/crashlytics/ndk/b;-><init>(Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;Ljava/lang/String;Ljava/lang/String;JLvm7;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, v1, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->d:Lcom/google/firebase/crashlytics/ndk/b;

    .line 15
    .line 16
    iget-boolean p0, v1, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->b:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/ndk/b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    :goto_0
    move-object p0, v0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :goto_1
    monitor-exit v1

    .line 28
    return-void

    .line 29
    :catchall_1
    move-exception v0

    .line 30
    move-object v1, p0

    .line 31
    goto :goto_0

    .line 32
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p0
.end method
