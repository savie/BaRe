.class public abstract Lkv4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lb67;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    sput-boolean v0, Lkv4;->a:Z

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lorg/swiftapps/swiftbackup/SwiftApp;Ljava/util/Locale;)V
    .locals 4

    .line 1
    sget-boolean v0, Lkv4;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lhv4;->c:Ljava/util/Locale;

    .line 7
    .line 8
    new-instance v0, Lc00;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lc00;-><init>(Lorg/swiftapps/swiftbackup/SwiftApp;Ljava/util/Locale;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lhv4;->d:Lhv4;

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    new-instance p1, Lhv4;

    .line 18
    .line 19
    new-instance v1, Lge;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0, v1}, Lhv4;-><init>(Lc00;Lge;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Liv4;

    .line 28
    .line 29
    new-instance v2, Lfv4;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Lfv4;-><init>(Lhv4;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Liv4;-><init>(Lfv4;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljv4;

    .line 41
    .line 42
    new-instance v2, Lgv4;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v2, v3, p1, p0}, Lgv4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljv4;-><init>(Lgv4;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lc00;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Landroid/content/SharedPreferences;

    .line 57
    .line 58
    const-string v2, "follow_system_locale_key"

    .line 59
    .line 60
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object v0, p1, Lhv4;->a:Ljava/util/Locale;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Lc00;->h()Ljava/util/Locale;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_0
    invoke-virtual {p1, p0, v0}, Lhv4;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 74
    .line 75
    .line 76
    sput-object p1, Lhv4;->d:Lhv4;

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    const-string p0, "Already initialized"

    .line 80
    .line 81
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static b(Ljava/util/Locale;)V
    .locals 5

    .line 1
    sget-boolean v0, Lkv4;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lhv4;->d:Lhv4;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 11
    .line 12
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v0, Lhv4;->b:Lc00;

    .line 17
    .line 18
    iget-object v2, v2, Lc00;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Landroid/content/SharedPreferences;

    .line 21
    .line 22
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "follow_system_locale_key"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Lhv4;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    const-string p0, "Lingver should be initialized first"

    .line 41
    .line 42
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
