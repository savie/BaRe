.class public final Lka2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lcom/google/firebase/FirebaseApp;

.field public final c:Ljava/lang/Object;

.field public d:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Boolean;

.field public final h:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lka2;->c:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lka2;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lka2;->e:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lka2;->f:Z

    .line 22
    .line 23
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lka2;->h:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object p1, p0, Lka2;->b:Lcom/google/firebase/FirebaseApp;

    .line 35
    .line 36
    const-string p1, "com.google.firebase.crashlytics"

    .line 37
    .line 38
    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lka2;->a:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    const-string v3, "firebase_crashlytics_collection_enabled"

    .line 45
    .line 46
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x1

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    iput-boolean v1, p0, Lka2;->f:Z

    .line 55
    .line 56
    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move-object p1, v5

    .line 66
    :goto_0
    if-nez p1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Lka2;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_1
    iput-object p1, p0, Lka2;->g:Ljava/lang/Boolean;

    .line 73
    .line 74
    monitor-enter v0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lka2;->b()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    iget-object p1, p0, Lka2;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 82
    .line 83
    invoke-virtual {p1, v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iput-boolean v6, p0, Lka2;->e:Z

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    :goto_1
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4

    .line 1
    const-string v0, "firebase_crashlytics_collection_enabled"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/16 v3, 0x80

    .line 15
    .line 16
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    const-string v0, "Could not read data collection permission from manifest"

    .line 45
    .line 46
    const-string v2, "FirebaseCrashlytics"

    .line 47
    .line 48
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    move-object p1, v1

    .line 52
    :goto_0
    if-nez p1, :cond_1

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lka2;->f:Z

    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_1
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lka2;->f:Z

    .line 60
    .line 61
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public final declared-synchronized b()Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lka2;->g:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_3

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lka2;->b:Lcom/google/firebase/FirebaseApp;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    :try_start_2
    const-string v1, "FirebaseCrashlytics"

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v2, "ENABLED"

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const-string v2, "DISABLED"

    .line 29
    .line 30
    :goto_1
    iget-object v3, p0, Lka2;->g:Ljava/lang/Boolean;

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    const-string v3, "global Firebase setting"

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    iget-boolean v3, p0, Lka2;->f:Z

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    const-string v3, "firebase_crashlytics_collection_enabled manifest flag"

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const-string v3, "API"

    .line 45
    .line 46
    :goto_2
    const-string v4, "Crashlytics automatic data collection "

    .line 47
    .line 48
    const-string v5, " by "

    .line 49
    .line 50
    const-string v6, "."

    .line 51
    .line 52
    invoke-static {v4, v2, v5, v3, v6}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x3

    .line 57
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    :cond_4
    monitor-exit p0

    .line 68
    return v0

    .line 69
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    throw v0
.end method
