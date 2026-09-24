.class public final Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic N:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public final M:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lms;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lms;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Lgz3;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lns;

    .line 20
    .line 21
    const/16 v4, 0xc

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lns;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lz20;

    .line 27
    .line 28
    const/4 v5, 0x7

    .line 29
    invoke-direct {v4, p0, v5}, Lz20;-><init>(Lil0;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->K:Ll90;

    .line 36
    .line 37
    new-instance v0, Lkn3;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-direct {v0, p0, v1}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lgv7;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->L:Lgv7;

    .line 49
    .line 50
    new-instance v0, Lmo3;

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    invoke-direct {v0, p0, v1}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lgv7;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->M:Lgv7;

    .line 62
    .line 63
    return-void
.end method

.method public static final N(Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;)Lzv3;
    .locals 2

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/SwiftApp;->getGoogleAuthWebClientId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lbx3;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lbx3;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    new-instance v0, Lzv3;

    .line 28
    .line 29
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p0, v1}, Lzv3;-><init>(Ljava/util/List;Z)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static final O(Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;Lao;)V
    .locals 9

    .line 1
    instance-of v0, p1, Lu62;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p1, Lao;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"

    .line 11
    .line 12
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    :try_start_0
    iget-object p1, p1, Lao;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-static {p1}, Li6;->a(Landroid/os/Bundle;)Lp04;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object p1, p1, Lp04;->c:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v2, Lqz3;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-direct {v2, p1, v3}, Lqz3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, Lgz3;->f:Lgv7;

    .line 50
    .line 51
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ld45;

    .line 56
    .line 57
    new-instance v3, Lpx;

    .line 58
    .line 59
    const/16 v4, 0x9

    .line 60
    .line 61
    invoke-direct {v3, v0, v4}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/FirebaseAuth;->d(Ld80;)Lcom/google/android/gms/tasks/Task;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v2, Liq0;

    .line 76
    .line 77
    invoke-direct {v2, p1, v3}, Liq0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    :goto_0
    iget-object p1, v0, Lgz3;->i:Lix6;

    .line 85
    .line 86
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 87
    .line 88
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const v2, 0x7f13007f

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Lix6;->k(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq04; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_1
    move-object v5, p1

    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    move-object p1, v0

    .line 107
    goto :goto_1

    .line 108
    :goto_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 109
    .line 110
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const/16 v7, 0x8

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    const-string v4, "Failed to parse Google ID token"

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p0, p1, v1}, Lgz3;->j(Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string p1, "Unsupported Google credential"

    .line 140
    .line 141
    invoke-virtual {p0, p1, v1}, Lgz3;->j(Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final P()Lgz3;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgz3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 v0, 0x7d4

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->M:Lgv7;

    .line 9
    .line 10
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-boolean v1, p1, Lgz3;->e:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p1, Lgz3;->e:Z

    .line 28
    .line 29
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 30
    .line 31
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Ler8;->a:Ljava/util/WeakHashMap;

    .line 36
    .line 37
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x0

    .line 45
    :try_start_0
    const-string v3, "android.webkit.WebViewUpdateService"

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "getCurrentWebViewPackageName"

    .line 52
    .line 53
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v4, 0x0

    .line 71
    :try_start_1
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    :catch_0
    :goto_0
    if-eqz v2, :cond_5

    .line 76
    .line 77
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 85
    .line 86
    const-string v3, "Name="

    .line 87
    .line 88
    const-string v4, ", Package="

    .line 89
    .line 90
    invoke-static {v3, v2, v4, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 95
    .line 96
    iget-object v3, p1, La55;->b:Ljava/lang/String;

    .line 97
    .line 98
    const-string v4, "WebView: "

    .line 99
    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const/4 v6, 0x4

    .line 105
    const/4 v7, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 111
    .line 112
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lcom/google/firebase/FirebaseApp;->getApps(Landroid/content/Context;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v3, "WebView"

    .line 135
    .line 136
    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_1
    const/16 v1, 0x3eb

    .line 140
    .line 141
    sget-object v2, Lbe8;->a:Lbe8;

    .line 142
    .line 143
    if-eq v0, v1, :cond_8

    .line 144
    .line 145
    const/16 v1, 0x7d4

    .line 146
    .line 147
    if-eq v0, v1, :cond_7

    .line 148
    .line 149
    const/16 v1, 0xbbd

    .line 150
    .line 151
    if-eq v0, v1, :cond_6

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    iget-object p1, p1, Lgz3;->l:Lix6;

    .line 155
    .line 156
    invoke-virtual {p1, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    iget-object p1, p1, Lgz3;->k:Lix6;

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_8
    iget-object p1, p1, Lgz3;->j:Lix6;

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object p1, p1, Lgz3;->j:Lix6;

    .line 176
    .line 177
    new-instance v0, Lzs;

    .line 178
    .line 179
    const/4 v1, 0x7

    .line 180
    invoke-direct {v0, p0, v1}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    new-instance v1, Ly20;

    .line 184
    .line 185
    const/4 v2, 0x3

    .line 186
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object p1, p1, Lgz3;->k:Lix6;

    .line 197
    .line 198
    new-instance v0, Llm;

    .line 199
    .line 200
    const/16 v1, 0xa

    .line 201
    .line 202
    invoke-direct {v0, p0, v1}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 203
    .line 204
    .line 205
    new-instance v1, Ly20;

    .line 206
    .line 207
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iget-object p1, p1, Lgz3;->l:Lix6;

    .line 218
    .line 219
    new-instance v0, Lw20;

    .line 220
    .line 221
    const/16 v1, 0xe

    .line 222
    .line 223
    invoke-direct {v0, p0, v1}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 224
    .line 225
    .line 226
    new-instance v1, Ly20;

    .line 227
    .line 228
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iget-object p1, p1, Lgz3;->g:Lix6;

    .line 239
    .line 240
    new-instance v0, Lc7;

    .line 241
    .line 242
    const/16 v1, 0x12

    .line 243
    .line 244
    invoke-direct {v0, p0, v1}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 245
    .line 246
    .line 247
    new-instance v1, Ly20;

    .line 248
    .line 249
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    iget-object p1, p1, Lgz3;->i:Lix6;

    .line 260
    .line 261
    new-instance v0, Ld7;

    .line 262
    .line 263
    const/16 v1, 0xd

    .line 264
    .line 265
    invoke-direct {v0, p0, v1}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 266
    .line 267
    .line 268
    new-instance v1, Ly20;

    .line 269
    .line 270
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    iget-object p1, p1, Lgz3;->h:Lix6;

    .line 281
    .line 282
    new-instance v0, Le7;

    .line 283
    .line 284
    const/16 v1, 0xf

    .line 285
    .line 286
    invoke-direct {v0, p0, v1}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 287
    .line 288
    .line 289
    new-instance v1, Ly20;

    .line 290
    .line 291
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 295
    .line 296
    .line 297
    return-void
.end method
