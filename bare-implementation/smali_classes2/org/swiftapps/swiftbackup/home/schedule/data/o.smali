.class public final Lorg/swiftapps/swiftbackup/home/schedule/data/o;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(J)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "app_locale"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "prefs"

    .line 18
    .line 19
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    :goto_0
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {v2}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lis4;->a()Ljava/util/Locale;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lis4;->a()Ljava/util/Locale;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_2
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x3

    .line 51
    invoke-static {v2, v3, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v1, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string p1, "\n"

    .line 64
    .line 65
    invoke-static {v0, p1, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;
    .locals 4

    .line 1
    const-string v0, "prefs"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "_type"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    move-object v1, v2

    .line 31
    :goto_0
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-class v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    invoke-static {}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->access$getStoredTypeClasses$cp()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Class;

    .line 48
    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    sget-object v3, Lw14;->a:Lgv7;

    .line 52
    .line 53
    sget-object v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :try_start_1
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 63
    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-interface {v3, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 75
    :catch_1
    move-object p0, v2

    .line 76
    :goto_1
    if-eqz p0, :cond_4

    .line 77
    .line 78
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-lez v0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move-object p0, v2

    .line 86
    :goto_2
    if-eqz p0, :cond_4

    .line 87
    .line 88
    sget-object v0, Lw14;->a:Lgv7;

    .line 89
    .line 90
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v3, Ljava/io/StringReader;

    .line 99
    .line 100
    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3, v1}, Lcom/google/gson/a;->b(Ljava/io/Reader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    goto :goto_3

    .line 108
    :catch_2
    :cond_4
    move-object p0, v2

    .line 109
    :goto_3
    if-eqz p0, :cond_5

    .line 110
    .line 111
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    move-object v2, p0

    .line 116
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 117
    .line 118
    :cond_5
    return-object v2
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "schedule_last_run_msg_"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "_type"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lw14;->a:Lgv7;

    .line 34
    .line 35
    invoke-static {p1, p0}, Lw14;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string p0, "editor"

    .line 40
    .line 41
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    throw p0
.end method
