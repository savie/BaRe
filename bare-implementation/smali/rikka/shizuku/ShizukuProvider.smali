.class public Lrikka/shizuku/ShizukuProvider;
.super Landroid/content/ContentProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 5
    .line 6
    if-nez p0, :cond_1

    .line 7
    .line 8
    iget-boolean p0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p0, "android:exported must be true"

    .line 14
    .line 15
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-string p0, "android:multiprocess must be false"

    .line 20
    .line 21
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    sget-boolean p2, Lz85;->f:Z

    .line 2
    .line 3
    const-string v0, "ShizukuProvider"

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p0, "Provider called when Sui is available. Are you using Shizuku and Sui at the same time?"

    .line 8
    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    new-instance p0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    return-object p2

    .line 22
    :cond_1
    const-class v1, Lmoe/shizuku/api/BinderContainer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string v2, "sendBinder"

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const-string v3, "moe.shizuku.privileged.api.intent.extra.BINDER"

    .line 46
    .line 47
    if-nez v2, :cond_5

    .line 48
    .line 49
    const-string p0, "getBinder"

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object p0, Lle7;->a:Landroid/os/IBinder;

    .line 59
    .line 60
    if-eqz p0, :cond_4

    .line 61
    .line 62
    invoke-interface {p0}, Landroid/os/IBinder;->pingBinder()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    new-instance p1, Lmoe/shizuku/api/BinderContainer;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p0, p1, Lmoe/shizuku/api/BinderContainer;->a:Landroid/os/IBinder;

    .line 75
    .line 76
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_4
    :goto_0
    return-object p2

    .line 81
    :cond_5
    invoke-static {}, Lle7;->f()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    const-string p0, "sendBinder is called when already a living binder"

    .line 88
    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lmoe/shizuku/api/BinderContainer;

    .line 98
    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    iget-object p1, p1, Lmoe/shizuku/api/BinderContainer;->a:Landroid/os/IBinder;

    .line 102
    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    const-string p2, "binder received"

    .line 106
    .line 107
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p1, p0}, Lle7;->e(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_7
    :goto_1
    return-object v1
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate()Z
    .locals 7

    .line 1
    sget-boolean v0, Lz85;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "activity"

    .line 15
    .line 16
    invoke-static {v0}, Lqv7;->a(Ljava/lang/String;)Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    :try_start_0
    const-string v6, "android.app.IActivityManager"

    .line 34
    .line 35
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    const v6, 0x5f535549

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v6, v4, v5, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 61
    .line 62
    .line 63
    move-object v3, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    if-eqz v3, :cond_2

    .line 78
    .line 79
    invoke-static {v3, p0}, Lle7;->e(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sput-boolean v1, Lz85;->f:Z

    .line 83
    .line 84
    move v2, v1

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    sput-boolean v2, Lz85;->f:Z

    .line 87
    .line 88
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v0, "Initialize Sui: "

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string v0, "ShizukuProvider"

    .line 103
    .line 104
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :catchall_1
    move-exception p0

    .line 109
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_3
    :goto_3
    return v1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
