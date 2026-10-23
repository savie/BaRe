.class public abstract Les0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final a(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->getItems()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :cond_0
    move-object p0, v0

    .line 17
    :cond_1
    if-nez p0, :cond_2

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->getItems()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    const/16 v1, 0x64

    .line 27
    .line 28
    invoke-static {p0, v1}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    move-object p0, v0

    .line 34
    :goto_0
    if-eqz p0, :cond_5

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    const/16 v1, 0xa

    .line 39
    .line 40
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v2, v1

    .line 62
    check-cast v2, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 63
    .line 64
    const/4 v6, 0x7

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-static/range {v2 .. v7}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->copy$default(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 74
    .line 75
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v4, 0x0

    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    const/4 v4, 0x1

    .line 95
    :catch_0
    :goto_2
    invoke-virtual {v1, v4}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->setInstalled(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    sget-object p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->Companion:Lds0;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lds0;->a(Ljava/util/List;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_6
    :goto_3
    return-object v0
.end method
