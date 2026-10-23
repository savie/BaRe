.class public abstract Ley7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)Lvq;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 5
    .line 6
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f130079

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const v2, 0x7f1301aa

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v2, v3

    .line 45
    :goto_0
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v8, 0x0

    .line 54
    const/16 v9, 0x3e

    .line 55
    .line 56
    const-string v5, ": "

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getConfigSettings()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_4

    .line 71
    .line 72
    new-instance p1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 92
    .line 93
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getApplyData()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->getLabels()Ljava/util/Set;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    move-object v2, v3

    .line 105
    :goto_2
    if-nez v2, :cond_2

    .line 106
    .line 107
    sget-object v2, Lsv2;->a:Lsv2;

    .line 108
    .line 109
    :cond_2
    invoke-static {v2, p1}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-static {p1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    :cond_4
    new-instance p0, Lvq;

    .line 118
    .line 119
    invoke-direct {p0, v1, v0, v3}, Lvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 120
    .line 121
    .line 122
    return-object p0
.end method
