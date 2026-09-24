.class public final Lw00;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Laj8;
.implements Ln59;
.implements Lqp9;
.implements Lyi6;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lw00;->a:I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 102
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lw00;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    .line 103
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 104
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lw00;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 117
    iput p1, p0, Lw00;->a:I

    iput-object p2, p0, Lw00;->b:Ljava/lang/Object;

    iput-object p3, p0, Lw00;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/z;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lw00;->a:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw00;->b:Ljava/lang/Object;

    .line 111
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lw00;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lke;Lyf1;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lw00;->a:I

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw00;->b:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw00;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loe;)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lw00;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p1, Loe;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Landroid/content/Context;

    .line 10
    .line 11
    const-string v0, "com.google.firebase.crashlytics.unity_version"

    .line 12
    .line 13
    const-string v1, "string"

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Ljm1;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    const-string v2, "FirebaseCrashlytics"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v4, "Unity"

    .line 26
    .line 27
    iput-object v4, p0, Lw00;->b:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lw00;->c:Ljava/lang/Object;

    .line 38
    .line 39
    const-string p0, "Unity Editor version is: "

    .line 40
    .line 41
    invoke-static {p0, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-static {v2, p0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const-string v0, "flutter_assets/NOTICES.Z"

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-nez v4, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :cond_2
    const-string p1, "Flutter"

    .line 78
    .line 79
    iput-object p1, p0, Lw00;->b:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object v3, p0, Lw00;->c:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    const-string p0, "Development platform is: Flutter"

    .line 90
    .line 91
    invoke-static {v2, p0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    :goto_0
    iput-object v3, p0, Lw00;->b:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v3, p0, Lw00;->c:Ljava/lang/Object;

    .line 98
    .line 99
    :cond_3
    :goto_1
    return-void
.end method

.method public constructor <init>(Loe;B)V
    .locals 0

    const/4 p2, 0x6

    iput p2, p0, Lw00;->a:I

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw00;->b:Ljava/lang/Object;

    .line 119
    iget-object p1, p1, Loe;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lw00;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lvq3;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lw00;->a:I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lbq1;

    .line 114
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 115
    iput-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lw00;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lvx6;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lw00;->a:I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw00;->b:Ljava/lang/Object;

    .line 107
    new-instance v0, Lot9;

    .line 108
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lot9;->a:Ljava/lang/Object;

    .line 109
    iput-object v0, p0, Lw00;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lz39;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0

    const/16 p1, 0xd

    iput p1, p0, Lw00;->a:I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw00;->b:Ljava/lang/Object;

    iput-object p3, p0, Lw00;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/view/View;)Lw00;
    .locals 3

    .line 1
    const v0, 0x7f0a04e5

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 11
    .line 12
    new-instance v0, Lix0;

    .line 13
    .line 14
    const/16 v2, 0x9

    .line 15
    .line 16
    invoke-direct {v0, v2, v1, v1}, Lix0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lw00;

    .line 20
    .line 21
    check-cast p0, Lorg/swiftapps/swiftbackup/views/MAppBarLayout;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2, p0, v0}, Lw00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "Missing required view with ID: "

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget v0, Lzf9;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    move-object v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "com.google.android.auth.IAuthManagerService"

    .line 9
    .line 10
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    instance-of v3, v2, Lsh9;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    check-cast v2, Lsh9;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v2, Lee9;

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-direct {v2, p1, v1, v3}, Lvz8;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, p0, Lw00;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Landroid/os/Bundle;

    .line 34
    .line 35
    check-cast v2, Lee9;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v3, v2, Lvz8;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p0}, Lxa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x2

    .line 56
    invoke-virtual {v2, v1, p0}, Lvz8;->j(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-static {p0, p1}, Lxa9;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 69
    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    const-string p0, "Error"

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v1, "booleanResult"

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_2
    new-instance p1, Lrz3;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_3
    sget-object p0, Lsz3;->c:Lu50;

    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    new-array p1, p1, [Ljava/lang/Object;

    .line 98
    .line 99
    const-string v1, "Service call returned null."

    .line 100
    .line 101
    invoke-virtual {p0, v1, p1}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const-string p0, "Service unavailable."

    .line 105
    .line 106
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v0
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/accounts/Account;

    .line 4
    .line 5
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/os/Bundle;

    .line 8
    .line 9
    check-cast p1, Lhn9;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 12
    .line 13
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lat9;

    .line 18
    .line 19
    new-instance v1, Lyy9;

    .line 20
    .line 21
    invoke-direct {v1, p2}, Lyy9;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iget-object v2, p1, Lvz8;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget v2, Lxa9;->a:I

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v0}, Lxa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "oauth2:https://www.googleapis.com/auth/drive.file"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2, p0}, Lxa9;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    invoke-virtual {p1, p2, p0}, Lvz8;->k(Landroid/os/Parcel;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public c(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lw00;->c(Landroidx/fragment/app/o;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public d(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, p1, v1}, Lw00;->d(Landroidx/fragment/app/o;Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    throw p0

    .line 51
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method public e(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lw00;->e(Landroidx/fragment/app/o;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public f(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lw00;->f(Landroidx/fragment/app/o;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public g(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lw00;->g(Landroidx/fragment/app/o;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lw00;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lw00;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/views/MAppBarLayout;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lf59;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v7, v0

    .line 4
    check-cast v7, Lyf1;

    .line 5
    .line 6
    check-cast p1, Ll69;

    .line 7
    .line 8
    iget-object v0, p1, Ll69;->e:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance p0, Lwc9;

    .line 17
    .line 18
    iget-object v0, p1, Ll69;->e:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p1, Ll69;->d:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, v0, p1, v1}, Lwc9;-><init>(Ljava/lang/String;Ljava/util/List;Lua9;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7, p0}, Lyf1;->f(Lwc9;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v2, Lb69;

    .line 31
    .line 32
    iget-object v0, p1, Ll69;->b:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, p1, Ll69;->a:Ljava/lang/String;

    .line 35
    .line 36
    iget-wide v3, p1, Ll69;->c:J

    .line 37
    .line 38
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v3, "Bearer"

    .line 43
    .line 44
    invoke-direct {v2, v0, v1, p1, v3}, Lb69;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lw00;->c:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v1, p1

    .line 50
    check-cast v1, Lke;

    .line 51
    .line 52
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    move-object v8, p0

    .line 58
    invoke-virtual/range {v1 .. v8}, Lke;->t(Lb69;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lua9;Lyf1;Ln59;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public i(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lw00;->i(Landroidx/fragment/app/o;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public j(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, p1, v1}, Lw00;->j(Landroidx/fragment/app/o;Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    throw p0

    .line 51
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method public k(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lw00;->k(Landroidx/fragment/app/o;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public l(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lw00;->l(Landroidx/fragment/app/o;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public m(Landroidx/fragment/app/o;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, p2, v1}, Lw00;->m(Landroidx/fragment/app/o;Landroid/os/Bundle;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public n(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lw00;->n(Landroidx/fragment/app/o;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public o(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lw00;->o(Landroidx/fragment/app/o;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public onCancelled(Lwc2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lw00;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onDataChange(Leb2;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lw00;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public p(Landroidx/fragment/app/o;Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/fragment/app/z;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, p1, p2, v1}, Lw00;->p(Landroidx/fragment/app/o;Landroid/view/View;Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    throw p0

    .line 50
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public q(Landroidx/fragment/app/o;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/fragment/app/z;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/z;->y:Landroidx/fragment/app/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/fragment/app/z;->o:Lw00;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p1, v1}, Lw00;->q(Landroidx/fragment/app/o;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    throw p0

    .line 47
    :cond_2
    invoke-static {}, Le6;->d()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public r(Lau1;Ljava/lang/annotation/Annotation;Ldr4;)Lcr4;
    .locals 2

    .line 1
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lbq1;

    .line 4
    .line 5
    invoke-virtual {v0, p3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcr4;

    .line 10
    .line 11
    if-nez v1, :cond_5

    .line 12
    .line 13
    instance-of v1, p2, Lut2;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lw00;->t(Lau1;Ljava/lang/annotation/Annotation;)Lcr4;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of v1, p2, Ljt2;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lw00;->t(Lau1;Ljava/lang/annotation/Annotation;)Lcr4;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, p2, Lpt2;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, Lw00;->t(Lau1;Ljava/lang/annotation/Annotation;)Lcr4;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, v1}, Lw00;->s(Lau1;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Luq4;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    new-instance p1, Lfz0;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lfz0;-><init>(Luq4;)V

    .line 50
    .line 51
    .line 52
    move-object p0, p1

    .line 53
    :cond_3
    new-instance p1, Lcr4;

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    new-array p2, p2, [Luq4;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    aput-object p0, p2, v1

    .line 60
    .line 61
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {p1, p0}, Lcr4;-><init>(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    move-object p0, p1

    .line 69
    :goto_0
    if-eqz p0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0, p3, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_4
    return-object p0

    .line 75
    :cond_5
    return-object v1
.end method

.method public s(Lau1;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Luq4;
    .locals 5

    .line 1
    instance-of v0, p2, Lat2;

    .line 2
    .line 3
    const-class v1, Lat2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lu00;

    .line 9
    .line 10
    const-class v3, Lft2;

    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lu00;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    instance-of v0, p2, Lgt2;

    .line 18
    .line 19
    const-class v3, Lgt2;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lu00;

    .line 24
    .line 25
    const-class v1, Lht2;

    .line 26
    .line 27
    invoke-direct {v0, v1, v3, v2}, Lu00;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    instance-of v0, p2, Lct2;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    new-instance v0, Lu00;

    .line 37
    .line 38
    const-class v1, Ldt2;

    .line 39
    .line 40
    const-class v3, Lct2;

    .line 41
    .line 42
    invoke-direct {v0, v1, v3, v2}, Lu00;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    instance-of v0, p2, Lmt2;

    .line 47
    .line 48
    const-class v4, Lmt2;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    new-instance v0, Lu00;

    .line 53
    .line 54
    const-class v1, Lnt2;

    .line 55
    .line 56
    invoke-direct {v0, v1, v4, v2}, Lu00;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    instance-of v0, p2, Lut2;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    new-instance v0, Lu00;

    .line 65
    .line 66
    const-class v2, Lvt2;

    .line 67
    .line 68
    const-class v3, Lut2;

    .line 69
    .line 70
    invoke-direct {v0, v2, v3, v1}, Lu00;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    instance-of v0, p2, Ljt2;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    new-instance v0, Lu00;

    .line 79
    .line 80
    const-class v1, Lkt2;

    .line 81
    .line 82
    const-class v2, Ljt2;

    .line 83
    .line 84
    invoke-direct {v0, v1, v2, v3}, Lu00;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    instance-of v0, p2, Lpt2;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    new-instance v0, Lu00;

    .line 93
    .line 94
    const-class v1, Lqt2;

    .line 95
    .line 96
    const-class v2, Lpt2;

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v4}, Lu00;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    instance-of v0, p2, Lu70;

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    new-instance v0, Lu00;

    .line 107
    .line 108
    const-class v1, Lx70;

    .line 109
    .line 110
    const-class v3, Lu70;

    .line 111
    .line 112
    invoke-direct {v0, v1, v3, v2}, Lu00;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_7
    instance-of v0, p2, Lvj8;

    .line 117
    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    new-instance v0, Lu00;

    .line 121
    .line 122
    const-class v1, Lxj8;

    .line 123
    .line 124
    const-class v3, Lvj8;

    .line 125
    .line 126
    invoke-direct {v0, v1, v3, v2}, Lu00;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_8
    instance-of v0, p2, Lq08;

    .line 131
    .line 132
    if-eqz v0, :cond_c

    .line 133
    .line 134
    new-instance v0, Lu00;

    .line 135
    .line 136
    const-class v1, Lj18;

    .line 137
    .line 138
    const-class v3, Lq08;

    .line 139
    .line 140
    invoke-direct {v0, v1, v3, v2}, Lu00;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 141
    .line 142
    .line 143
    :goto_0
    iget-object v1, v0, Lu00;->d:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v1, Ljava/lang/Class;

    .line 146
    .line 147
    iget-object v2, v0, Lu00;->c:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v2, Ljava/lang/Class;

    .line 150
    .line 151
    iget-object v0, v0, Lu00;->b:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Ljava/lang/Class;

    .line 154
    .line 155
    const-class v3, Lvq3;

    .line 156
    .line 157
    const-class v4, Lau1;

    .line 158
    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    filled-new-array {v4, v0, v2, v3}, [Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    goto :goto_1

    .line 170
    :cond_9
    filled-new-array {v4, v0, v3}, [Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_a

    .line 183
    .line 184
    const/4 v1, 0x1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 186
    .line 187
    .line 188
    :cond_a
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast p0, Lvq3;

    .line 191
    .line 192
    if-eqz p3, :cond_b

    .line 193
    .line 194
    filled-new-array {p1, p2, p3, p0}, [Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    check-cast p0, Luq4;

    .line 203
    .line 204
    return-object p0

    .line 205
    :cond_b
    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    check-cast p0, Luq4;

    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_c
    new-instance p0, Lkd5;

    .line 217
    .line 218
    const-string p1, "Annotation %s not supported"

    .line 219
    .line 220
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p0, p1, p2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    throw p0
.end method

.method public t(Lau1;Ljava/lang/annotation/Annotation;)Lcr4;
    .locals 6

    .line 1
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    aget-object v0, v0, v3

    .line 15
    .line 16
    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [Ljava/lang/annotation/Annotation;

    .line 21
    .line 22
    check-cast v0, [Ljava/lang/annotation/Annotation;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-array v0, v3, [Ljava/lang/annotation/Annotation;

    .line 26
    .line 27
    :goto_0
    array-length v1, v0

    .line 28
    if-lez v1, :cond_3

    .line 29
    .line 30
    new-instance v1, Ljava/util/LinkedList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 33
    .line 34
    .line 35
    array-length v2, v0

    .line 36
    :goto_1
    if-ge v3, v2, :cond_2

    .line 37
    .line 38
    aget-object v4, v0, v3

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, v4}, Lw00;->s(Lau1;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Luq4;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    new-instance v5, Lfz0;

    .line 47
    .line 48
    invoke-direct {v5, v4}, Lfz0;-><init>(Luq4;)V

    .line 49
    .line 50
    .line 51
    move-object v4, v5

    .line 52
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    new-instance p0, Lcr4;

    .line 59
    .line 60
    invoke-direct {p0, v1}, Lcr4;-><init>(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_3
    return-object v2
.end method

.method public u(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lw00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lvx6;

    .line 4
    .line 5
    iget-object v0, p0, Lvx6;->a:Lwx6;

    .line 6
    .line 7
    iget-boolean v1, p0, Lvx6;->e:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lvx6;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {v0}, Lfu4;->getLifecycle()Lhu4;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lhu4;->d:Lst4;

    .line 19
    .line 20
    sget-object v2, Lst4;->d:Lst4;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-gez v1, :cond_3

    .line 27
    .line 28
    iget-boolean v0, p0, Lvx6;->g:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-static {p1, v1}, Lk55;->s(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    iput-object v0, p0, Lvx6;->f:Landroid/os/Bundle;

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lvx6;->g:Z

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const-string p0, "SavedStateRegistry was already restored."

    .line 54
    .line 55
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-interface {v0}, Lfu4;->getLifecycle()Lhu4;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget-object p0, p0, Lhu4;->d:Lst4;

    .line 64
    .line 65
    const-string p1, "performRestore cannot be called when owner is "

    .line 66
    .line 67
    invoke-static {p0, p1}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public v(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lw00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lvx6;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v1, v0, [Lpw5;

    .line 7
    .line 8
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Lpw5;

    .line 13
    .line 14
    invoke-static {v0}, Ljd4;->b([Lpw5;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lvx6;->f:Landroid/os/Bundle;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lvx6;->c:Lfo8;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object p0, p0, Lvx6;->d:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lux6;

    .line 61
    .line 62
    invoke-interface {v2}, Lux6;->a()Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    monitor-exit v1

    .line 76
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_2

    .line 81
    .line 82
    const-string p0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 83
    .line 84
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    :goto_1
    monitor-exit v1

    .line 89
    throw p0
.end method

.method public w(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lw00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Loe;

    .line 4
    .line 5
    iget-object p0, p0, Loe;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0x8

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public x(ZLcom/google/android/gms/common/api/Status;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lw00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    iget-object v2, p0, Lw00;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ljava/util/Map;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    iget-object v0, p0, Lw00;->c:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v2, v0

    .line 19
    check-cast v2, Ljava/util/Map;

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ljava/util/Map;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 71
    .line 72
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    .line 96
    if-nez p1, :cond_4

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 115
    .line 116
    new-instance v1, Lre;

    .line 117
    .line 118
    invoke-direct {v1, p2}, Lre;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    return-void

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    throw p0

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    throw p0
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lzv1;->t(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lw00;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lyf1;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lyf1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
