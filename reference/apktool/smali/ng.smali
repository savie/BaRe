.class public final Lng;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lq63;Z)Lrg;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v1, "getApkInfo"

    .line 5
    .line 6
    sget-object v0, Lp93;->a:Lp93;

    .line 7
    .line 8
    invoke-virtual {p0}, Lq63;->A()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    :try_start_0
    sget-object p1, Lg00;->a:Lg00;

    .line 26
    .line 27
    const/16 p1, 0x80

    .line 28
    .line 29
    invoke-static {p0, p1}, Lg00;->p(Lq63;I)Landroid/content/pm/PackageInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    move-object p1, v0

    .line 36
    :try_start_1
    const-string v0, "ApkInfo"

    .line 37
    .line 38
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    .line 43
    move-object p1, v0

    .line 44
    move-object v9, p1

    .line 45
    move-object p1, v5

    .line 46
    goto :goto_5

    .line 47
    :cond_0
    :goto_0
    move-object p1, v5

    .line 48
    :goto_1
    if-eqz p1, :cond_1

    .line 49
    .line 50
    new-instance v0, Lqg;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Lqg;-><init>(Landroid/content/pm/PackageInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    .line 55
    move-object p1, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    move-object p1, v5

    .line 58
    :goto_2
    if-eqz p1, :cond_3

    .line 59
    .line 60
    :try_start_2
    invoke-virtual {p1}, Lqg;->c()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    cmp-long v0, v0, v3

    .line 65
    .line 66
    if-ltz v0, :cond_2

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    goto :goto_3

    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 71
    :goto_3
    if-nez v0, :cond_4

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :catch_2
    move-exception v0

    .line 75
    move-object v9, v0

    .line 76
    goto :goto_5

    .line 77
    :cond_3
    :goto_4
    new-instance v0, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;-><init>(Lq63;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Lih;->getApkInfo()Lrg;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :cond_4
    if-eqz p1, :cond_5

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 90
    .line 91
    const-string v1, "Unable to get APK info both by system or our own APIs"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    :goto_5
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "getApkInfo: apk="

    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p0, " ("

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p0, ")"

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    const/16 v11, 0x8

    .line 127
    .line 128
    const/4 v12, 0x0

    .line 129
    const-string v7, "ApkInfo"

    .line 130
    .line 131
    const/4 v10, 0x0

    .line 132
    invoke-static/range {v6 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :goto_6
    if-eqz p1, :cond_7

    .line 136
    .line 137
    invoke-virtual {p1}, Lrg;->c()J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    cmp-long p0, v0, v3

    .line 142
    .line 143
    if-ltz p0, :cond_6

    .line 144
    .line 145
    move-object v5, p1

    .line 146
    :cond_6
    if-nez v5, :cond_8

    .line 147
    .line 148
    :cond_7
    sget-object v5, Log;->a:Log;

    .line 149
    .line 150
    :cond_8
    return-object v5
.end method
