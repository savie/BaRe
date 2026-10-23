.class public final Lf28;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Ljava/lang/Integer;)Lh28;
    .locals 4

    .line 1
    invoke-static {}, Lh28;->getEntries()Ljx2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lz3;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lw3;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lw3;-><init>(Lz3;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lw3;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1}, Lw3;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Lh28;

    .line 27
    .line 28
    invoke-virtual {v2}, Lh28;->getThemeId()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_1
    check-cast v0, Lh28;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    invoke-static {}, Lh28;->access$getDEFAULT_THEME_MODE$cp()Lh28;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_3
    invoke-static {v0}, Lh28;->access$getValidatedMode(Lh28;)Lh28;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static b()Lh28;
    .locals 3

    .line 1
    const-string v0, "app_theme_mode"

    .line 2
    .line 3
    invoke-static {}, Lh28;->access$getDEFAULT_THEME_MODE$cp()Lh28;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lh28;->getThemeId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "prefs"

    .line 21
    .line 22
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lf28;->a(Ljava/lang/Integer;)Lh28;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lh28;->access$getValidatedMode(Lh28;)Lh28;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public static c(Lk28;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const p0, 0x7f14015b

    .line 6
    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-static {}, Lf28;->e()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const p0, 0x7f140157

    .line 20
    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    const p0, 0x7f140158

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :cond_2
    iget-object p0, p0, Lk28;->f:Lgv7;

    .line 28
    .line 29
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    const p0, 0x7f14029e

    .line 42
    .line 43
    .line 44
    return p0

    .line 45
    :cond_3
    invoke-static {}, Lf28;->e()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_4

    .line 50
    .line 51
    const p0, 0x7f14029c

    .line 52
    .line 53
    .line 54
    return p0

    .line 55
    :cond_4
    const p0, 0x7f14029d

    .line 56
    .line 57
    .line 58
    return p0
.end method

.method public static d(Lk28;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lk28;->f:Lgv7;

    .line 2
    .line 3
    invoke-static {}, Lf28;->b()Lh28;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Le28;->a:[I

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget v1, v2, v1

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const v3, 0x7f140296

    .line 17
    .line 18
    .line 19
    const v4, 0x7f14029b

    .line 20
    .line 21
    .line 22
    const v5, 0x7f140156

    .line 23
    .line 24
    .line 25
    const v6, 0x7f14015b

    .line 26
    .line 27
    .line 28
    if-eq v1, v2, :cond_6

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    if-eq v1, v2, :cond_5

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-ne v1, v2, :cond_4

    .line 35
    .line 36
    invoke-static {p0}, Lio4;->e(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-static {p0}, Lf28;->c(Lk28;)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_0
    instance-of v1, p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    return v6

    .line 52
    :cond_1
    instance-of p0, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    return v5

    .line 57
    :cond_2
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    return v4

    .line 70
    :cond_3
    return v3

    .line 71
    :cond_4
    invoke-static {}, Lq;->j()V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return p0

    .line 76
    :cond_5
    invoke-static {p0}, Lf28;->c(Lk28;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0

    .line 81
    :cond_6
    instance-of v1, p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    return v6

    .line 86
    :cond_7
    instance-of p0, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 87
    .line 88
    if-eqz p0, :cond_8

    .line 89
    .line 90
    return v5

    .line 91
    :cond_8
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_9

    .line 102
    .line 103
    return v4

    .line 104
    :cond_9
    return v3
.end method

.method public static e()Z
    .locals 3

    .line 1
    const-string v0, "use_amoled_theme"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    return v1
.end method
