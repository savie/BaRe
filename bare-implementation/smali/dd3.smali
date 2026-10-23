.class public final Ldd3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lod3;


# static fields
.field public static final a:Ldd3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldd3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldd3;->a:Ldd3;

    .line 7
    .line 8
    return-void
.end method

.method public static e()Lcd3;
    .locals 5

    .line 1
    const-string v0, "prefs"

    .line 2
    .line 3
    const-string v1, "show_system_apps"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :goto_0
    if-nez v3, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcd3;->All:Lcd3;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    const-string v1, "key_user_apps_pref"

    .line 26
    .line 27
    sget-object v3, Lcd3;->All:Lcd3;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :try_start_1
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    :catch_1
    :goto_1
    if-eqz v3, :cond_6

    .line 47
    .line 48
    invoke-static {}, Lcd3;->getEntries()Ljx2;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lz3;

    .line 53
    .line 54
    invoke-virtual {v0}, Lz3;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_3
    move-object v1, v0

    .line 59
    check-cast v1, Lw3;

    .line 60
    .line 61
    invoke-virtual {v1}, Lw3;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-virtual {v1}, Lw3;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v4, v1

    .line 72
    check-cast v4, Lcd3;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    move-object v2, v1

    .line 85
    :cond_4
    check-cast v2, Lcd3;

    .line 86
    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    return-object v2

    .line 91
    :cond_6
    :goto_2
    sget-object v0, Lcd3;->All:Lcd3;

    .line 92
    .line 93
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Lnd3;
    .locals 0

    .line 1
    invoke-static {}, Ldd3;->e()Lcd3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final c()Lnd3;
    .locals 0

    .line 1
    sget-object p0, Lcd3;->All:Lcd3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "key_user_apps_pref"

    .line 2
    .line 3
    return-object p0
.end method

.method public final reset()V
    .locals 0

    .line 1
    invoke-super {p0}, Lod3;->reset()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lge3;->a:Lge3;

    .line 5
    .line 6
    invoke-interface {p0}, Lod3;->reset()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
