.class public abstract Lorg/swiftapps/swiftbackup/apptasks/sba/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lji;ZZLxp1;)Ljava/lang/String;
    .locals 19

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lw14;->a:Lgv7;

    .line 8
    .line 9
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual/range {p0 .. p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual/range {p0 .. p0}, Lji;->getAppId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual/range {p0 .. p0}, Lji;->getVersionName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-virtual/range {p0 .. p0}, Lji;->getSizeInfo()Lqx;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Lqx;->getDataSize()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v1, v2

    .line 50
    :goto_0
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v12

    .line 54
    invoke-virtual/range {p0 .. p0}, Lji;->getSizeInfo()Lqx;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Lqx;->getDeDataSize()J

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move-object v1, v2

    .line 70
    :goto_1
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v14

    .line 74
    invoke-virtual/range {p0 .. p0}, Lji;->getDataDir()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string v1, "data"

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    :goto_2
    move-object v1, v2

    .line 91
    :goto_3
    if-eqz p1, :cond_5

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    const-string v2, "data_de"

    .line 107
    .line 108
    :cond_5
    :goto_4
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v16

    .line 116
    new-instance v1, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v11, 0x1

    .line 121
    const/16 v17, 0x3

    .line 122
    .line 123
    const/16 v18, 0x0

    .line 124
    .line 125
    move/from16 v9, p1

    .line 126
    .line 127
    move/from16 v8, p2

    .line 128
    .line 129
    invoke-direct/range {v1 .. v18}, Lorg/swiftapps/swiftbackup/apptasks/sba/SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;ZJJLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    return-object v0
.end method
