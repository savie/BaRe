.class public final Lus8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lke;

.field public final b:Ldt8;

.field public c:Lts8;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 7

    .line 1
    new-instance v0, Lke;

    .line 2
    .line 3
    new-instance v1, Lcz4;

    .line 4
    .line 5
    const/16 v2, 0x16

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcz4;-><init>(I)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lns8;->a:Lns8;

    .line 11
    .line 12
    sget-object v2, Lks8;->LEGACY_PUBLIC:Lks8;

    .line 13
    .line 14
    new-instance v3, Lgt4;

    .line 15
    .line 16
    invoke-direct {v3, p1}, Lgt4;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lpw5;

    .line 20
    .line 21
    invoke-direct {v4, v2, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lks8;->ROOT_XML:Lks8;

    .line 25
    .line 26
    new-instance v3, Llq6;

    .line 27
    .line 28
    invoke-direct {v3}, Llq6;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lpw5;

    .line 32
    .line 33
    invoke-direct {v5, v2, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v2, Lks8;->SHIZUKU_BINDER:Lks8;

    .line 37
    .line 38
    new-instance v3, Lwe7;

    .line 39
    .line 40
    invoke-direct {v3}, Lwe7;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v6, Lpw5;

    .line 44
    .line 45
    invoke-direct {v6, v2, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    filled-new-array {v4, v5, v6}, [Lpw5;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v0, v1, v2}, Lke;-><init>(Lcz4;Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lus8;->a:Lke;

    .line 66
    .line 67
    invoke-static {}, Lb67;->d()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    new-instance p1, Lys8;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lb67;->d()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string p0, "SHelper WifiHelper should be used on Android 12 and up only!"

    .line 86
    .line 87
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    throw p0

    .line 92
    :cond_1
    invoke-static {}, Lb67;->c()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    new-instance p1, Lxs8;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-static {}, Lb67;->b()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    new-instance p1, Lws8;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    new-instance v0, Lvs8;

    .line 117
    .line 118
    invoke-direct {v0, p1}, Lvs8;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 119
    .line 120
    .line 121
    move-object p1, v0

    .line 122
    :goto_0
    iput-object p1, p0, Lus8;->b:Ldt8;

    .line 123
    .line 124
    return-void
.end method

.method public static c()Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;
    .locals 4

    .line 1
    invoke-static {}, Lre3;->g()Lzc2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "wifi"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lxe3;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Lxe3;

    .line 21
    .line 22
    iget-object v0, v0, Lxe3;->n:Leb2;

    .line 23
    .line 24
    const-class v1, Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    instance-of v1, v0, Lwe3;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    check-cast v0, Lwe3;

    .line 39
    .line 40
    iget-object v0, v0, Lwe3;->n:Lwc2;

    .line 41
    .line 42
    iget-object v0, v0, Lwc2;->b:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "onCancelled: "

    .line 45
    .line 46
    const-string v3, "WifiHelper"

    .line 47
    .line 48
    invoke-static {v1, v0, v3}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 53
    .line 54
    .line 55
    return-object v2
.end method

.method public static d(ILq63;Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_7

    .line 15
    .line 16
    new-instance v2, Lrf8;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/16 v4, 0x17

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v3, p1

    .line 24
    invoke-direct/range {v2 .. v7}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string p1, "WifiHelper"

    .line 28
    .line 29
    const-string v0, "syncFileToDrive"

    .line 30
    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    sget-object p1, Ltb1;->a:Ltb1;

    .line 35
    .line 36
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v2}, Ltb1;->d(Lrf8;)Lag8;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iput-object p2, p1, Lag8;->b:Ljava/lang/String;

    .line 57
    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lag8;->c()Lzf8;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lzf8;->a()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v2, 0x0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object p1, p1, Lzf8;->a:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v3}, Lq63;->A()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const-wide/16 v3, 0x0

    .line 89
    .line 90
    cmp-long v0, v0, v3

    .line 91
    .line 92
    if-lez v0, :cond_3

    .line 93
    .line 94
    move-object v2, p2

    .line 95
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    new-instance p2, Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;

    .line 100
    .line 101
    invoke-direct {p2, p1, v2, p0}, Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lre3;->g()Lzc2;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const-string p1, "wifi"

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0, p2}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    instance-of p0, p0, Lze3;

    .line 119
    .line 120
    return p0

    .line 121
    :cond_4
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 122
    .line 123
    invoke-virtual {p1}, Lzf8;->b()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v0, "onFailure: "

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const/4 v8, 0x4

    .line 134
    const/4 v9, 0x0

    .line 135
    const-string v5, "WifiHelper"

    .line 136
    .line 137
    const/4 v7, 0x0

    .line 138
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    if-eqz p2, :cond_6

    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_5

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    invoke-static {p0, v3, v2}, Lus8;->d(ILq63;Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    return p0

    .line 155
    :cond_6
    :goto_1
    return v1

    .line 156
    :cond_7
    invoke-static {}, Ld6;->o()V

    .line 157
    .line 158
    .line 159
    return v1
.end method


# virtual methods
.method public final a(Lbz7;Z)Lod2;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lss8;->i:Lss8;

    .line 8
    .line 9
    sget-object v4, Lrs8;->i:Lrs8;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, v1, Lbz7;->d:Ljava/util/List;

    .line 15
    .line 16
    iget-object v1, v1, Lbz7;->c:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v2, :cond_13

    .line 19
    .line 20
    iget-object v8, v0, Lus8;->a:Lke;

    .line 21
    .line 22
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v9, Lkt8;->BACKUP:Lkt8;

    .line 26
    .line 27
    invoke-virtual {v8, v9}, Lke;->m(Lkt8;)Lis8;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    instance-of v9, v8, Lhs8;

    .line 32
    .line 33
    if-eqz v9, :cond_0

    .line 34
    .line 35
    move-object v9, v8

    .line 36
    check-cast v9, Lhs8;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v9, 0x0

    .line 40
    :goto_0
    if-nez v9, :cond_1

    .line 41
    .line 42
    new-instance v0, Lps8;

    .line 43
    .line 44
    check-cast v8, Lgs8;

    .line 45
    .line 46
    invoke-direct {v0, v8}, Lps8;-><init>(Lgs8;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_1
    iget-object v8, v9, Lhs8;->b:Lks8;

    .line 51
    .line 52
    iget-object v9, v9, Lhs8;->a:Ljava/util/List;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v10, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    new-instance v9, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-eqz v11, :cond_b

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    check-cast v11, Let8;

    .line 85
    .line 86
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {v11}, Liz1;->f(Let8;)Les8;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    iget-object v12, v11, Les8;->b:Lmt8;

    .line 94
    .line 95
    invoke-static {v10}, Lfl1;->y0(Ljava/util/Collection;)Lnd4;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    new-instance v14, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v13}, Lld4;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    :cond_2
    :goto_2
    move-object v15, v13

    .line 109
    check-cast v15, Lmd4;

    .line 110
    .line 111
    iget-boolean v6, v15, Lmd4;->c:Z

    .line 112
    .line 113
    if-eqz v6, :cond_3

    .line 114
    .line 115
    invoke-virtual {v15}, Lmd4;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    move-object v15, v6

    .line 120
    check-cast v15, Ljava/lang/Number;

    .line 121
    .line 122
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v15

    .line 130
    check-cast v15, Let8;

    .line 131
    .line 132
    invoke-static {v15}, Liz1;->f(Let8;)Les8;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    iget-object v15, v15, Les8;->a:Ljava/lang/String;

    .line 137
    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    iget-object v7, v11, Les8;->a:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_2

    .line 147
    .line 148
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    const/16 v16, 0x0

    .line 153
    .line 154
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    const/4 v7, -0x1

    .line 159
    if-eqz v6, :cond_5

    .line 160
    .line 161
    :cond_4
    move v6, v7

    .line 162
    goto :goto_4

    .line 163
    :cond_5
    sget-object v6, Lmt8;->UNKNOWN:Lmt8;

    .line 164
    .line 165
    if-ne v12, v6, :cond_6

    .line 166
    .line 167
    invoke-static {v14}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Ljava/lang/Integer;

    .line 172
    .line 173
    if-eqz v6, :cond_4

    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    goto :goto_4

    .line 180
    :cond_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    if-eqz v11, :cond_8

    .line 189
    .line 190
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    move-object v13, v11

    .line 195
    check-cast v13, Ljava/lang/Number;

    .line 196
    .line 197
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    check-cast v13, Let8;

    .line 206
    .line 207
    invoke-static {v13}, Liz1;->f(Let8;)Les8;

    .line 208
    .line 209
    .line 210
    move-result-object v13

    .line 211
    iget-object v13, v13, Les8;->b:Lmt8;

    .line 212
    .line 213
    if-ne v13, v12, :cond_7

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_8
    move-object/from16 v11, v16

    .line 217
    .line 218
    :goto_3
    check-cast v11, Ljava/lang/Integer;

    .line 219
    .line 220
    if-eqz v11, :cond_9

    .line 221
    .line 222
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    goto :goto_4

    .line 227
    :cond_9
    invoke-static {v14}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    check-cast v6, Ljava/lang/Integer;

    .line 232
    .line 233
    if-eqz v6, :cond_4

    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    :goto_4
    if-ne v6, v7, :cond_a

    .line 240
    .line 241
    move-object/from16 v1, v16

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_a
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :cond_b
    const/16 v16, 0x0

    .line 254
    .line 255
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    new-instance v1, Lgj1;

    .line 261
    .line 262
    const/4 v6, 0x5

    .line 263
    invoke-direct {v1, v6}, Lgj1;-><init>(I)V

    .line 264
    .line 265
    .line 266
    invoke-static {v9, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    :goto_5
    if-nez v1, :cond_c

    .line 271
    .line 272
    sget-object v0, Lqs8;->i:Lqs8;

    .line 273
    .line 274
    return-object v0

    .line 275
    :cond_c
    sget-object v6, Lks8;->SHIZUKU_BINDER:Lks8;

    .line 276
    .line 277
    if-ne v8, v6, :cond_13

    .line 278
    .line 279
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-eqz v6, :cond_d

    .line 284
    .line 285
    goto/16 :goto_a

    .line 286
    .line 287
    :cond_d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    if-eqz v7, :cond_13

    .line 296
    .line 297
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    check-cast v7, Let8;

    .line 302
    .line 303
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-static {v7}, Liz1;->f(Let8;)Les8;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    iget-object v9, v9, Les8;->b:Lmt8;

    .line 311
    .line 312
    sget-object v10, Lfs8;->a:[I

    .line 313
    .line 314
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    aget v9, v10, v9

    .line 319
    .line 320
    const/4 v10, 0x1

    .line 321
    packed-switch v9, :pswitch_data_0

    .line 322
    .line 323
    .line 324
    invoke-static {}, Lq;->j()V

    .line 325
    .line 326
    .line 327
    return-object v16

    .line 328
    :pswitch_0
    invoke-virtual {v7}, Let8;->getPreSharedKey()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    invoke-static {v9}, Liz1;->q(Ljava/lang/String;)Z

    .line 333
    .line 334
    .line 335
    move-result v9

    .line 336
    if-nez v9, :cond_11

    .line 337
    .line 338
    invoke-virtual {v7}, Let8;->getPasswordInfo()Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    if-eqz v9, :cond_e

    .line 343
    .line 344
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getPsk()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    goto :goto_7

    .line 349
    :cond_e
    move-object/from16 v9, v16

    .line 350
    .line 351
    :goto_7
    invoke-static {v9}, Liz1;->q(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    if-nez v9, :cond_11

    .line 356
    .line 357
    invoke-static {v7}, Liz1;->o(Let8;)Z

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-eqz v7, :cond_f

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_f
    const/4 v10, 0x0

    .line 365
    goto :goto_9

    .line 366
    :pswitch_1
    invoke-static {v7}, Liz1;->o(Let8;)Z

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    goto :goto_9

    .line 371
    :pswitch_2
    invoke-virtual {v7}, Let8;->getPreSharedKey()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    invoke-static {v9}, Liz1;->q(Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v9

    .line 379
    if-nez v9, :cond_11

    .line 380
    .line 381
    invoke-virtual {v7}, Let8;->getPasswordInfo()Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    if-eqz v7, :cond_10

    .line 386
    .line 387
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getPsk()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    goto :goto_8

    .line 392
    :cond_10
    move-object/from16 v7, v16

    .line 393
    .line 394
    :goto_8
    invoke-static {v7}, Liz1;->q(Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    if-eqz v7, :cond_f

    .line 399
    .line 400
    :cond_11
    :goto_9
    :pswitch_3
    if-nez v10, :cond_12

    .line 401
    .line 402
    new-instance v0, Lps8;

    .line 403
    .line 404
    new-instance v1, Lgs8;

    .line 405
    .line 406
    sget-object v2, Lds8;->INCOMPLETE_CREDENTIALS:Lds8;

    .line 407
    .line 408
    move-object/from16 v3, v16

    .line 409
    .line 410
    invoke-direct {v1, v2, v8, v3}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 411
    .line 412
    .line 413
    invoke-direct {v0, v1}, Lps8;-><init>(Lgs8;)V

    .line 414
    .line 415
    .line 416
    return-object v0

    .line 417
    :cond_12
    const/16 v16, 0x0

    .line 418
    .line 419
    goto/16 :goto_6

    .line 420
    .line 421
    :cond_13
    :goto_a
    sget-object v6, Lq05;->DEVICE:Lq05;

    .line 422
    .line 423
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v6

    .line 427
    if-eqz v6, :cond_14

    .line 428
    .line 429
    new-instance v6, Lq63;

    .line 430
    .line 431
    sget-object v7, Lry5;->u:Ljava/lang/String;

    .line 432
    .line 433
    const/4 v7, 0x0

    .line 434
    const/4 v8, 0x0

    .line 435
    invoke-static {v7, v8}, Lqy5;->f(ZLzn7;)Lry5;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    iget-object v7, v7, Lry5;->n:Ljava/lang/String;

    .line 440
    .line 441
    const-string v9, "wifi_networks.wfi"

    .line 442
    .line 443
    invoke-static {v7, v9}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    const/4 v9, 0x2

    .line 448
    invoke-direct {v6, v7, v9}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v1, v2, v6}, Lus8;->b(Ljava/util/List;ZLq63;)Los8;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    iget-boolean v6, v6, Los8;->a:Z

    .line 456
    .line 457
    if-nez v6, :cond_15

    .line 458
    .line 459
    goto :goto_c

    .line 460
    :cond_14
    const/4 v8, 0x0

    .line 461
    :cond_15
    sget-object v6, Lq05;->CLOUD:Lq05;

    .line 462
    .line 463
    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    if-eqz v5, :cond_19

    .line 468
    .line 469
    invoke-static {}, Lnh4;->a()Lq63;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    invoke-virtual {v0, v1, v2, v5}, Lus8;->b(Ljava/util/List;ZLq63;)Los8;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    iget-boolean v1, v0, Los8;->a:Z

    .line 478
    .line 479
    if-nez v1, :cond_16

    .line 480
    .line 481
    goto :goto_c

    .line 482
    :cond_16
    invoke-static {}, Lus8;->c()Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    if-eqz v1, :cond_17

    .line 487
    .line 488
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;->getDriveId()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v7

    .line 492
    goto :goto_b

    .line 493
    :cond_17
    move-object v7, v8

    .line 494
    :goto_b
    invoke-static {}, Lnh4;->a()Lq63;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    iget v0, v0, Los8;->b:I

    .line 499
    .line 500
    invoke-static {v0, v1, v7}, Lus8;->d(ILq63;Ljava/lang/String;)Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_18

    .line 505
    .line 506
    goto :goto_d

    .line 507
    :cond_18
    :goto_c
    return-object v4

    .line 508
    :cond_19
    :goto_d
    return-object v3

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/util/List;ZLq63;)Los8;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_b

    .line 7
    .line 8
    invoke-virtual {p3}, Lq63;->j()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_b

    .line 13
    .line 14
    sget-object p2, Lw14;->a:Lgv7;

    .line 15
    .line 16
    const-class p2, Lft8;

    .line 17
    .line 18
    invoke-static {p3, p2}, Lw14;->a(Lq63;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lft8;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lft8;->getItems()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v2, v1

    .line 33
    :goto_0
    if-eqz v2, :cond_b

    .line 34
    .line 35
    invoke-virtual {p2}, Lft8;->getItems()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_b

    .line 44
    .line 45
    invoke-virtual {p2}, Lft8;->getItems()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_b

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Let8;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Liz1;->f(Let8;)Les8;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iget-object v5, v4, Les8;->b:Lmt8;

    .line 81
    .line 82
    iget-object v4, v4, Les8;->a:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v6, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_2

    .line 98
    .line 99
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    move-object v9, v8

    .line 104
    check-cast v9, Let8;

    .line 105
    .line 106
    invoke-static {v9}, Liz1;->f(Let8;)Les8;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    iget-object v9, v9, Les8;->a:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_1

    .line 117
    .line 118
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    sget-object v7, Lmt8;->UNKNOWN:Lmt8;

    .line 123
    .line 124
    if-eq v5, v7, :cond_5

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_3

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_5

    .line 142
    .line 143
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    check-cast v8, Let8;

    .line 148
    .line 149
    invoke-static {v8}, Liz1;->f(Let8;)Les8;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    iget-object v8, v8, Les8;->b:Lmt8;

    .line 154
    .line 155
    if-ne v8, v5, :cond_4

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    const/4 v7, 0x0

    .line 163
    if-eqz v5, :cond_6

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_9

    .line 175
    .line 176
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    check-cast v8, Let8;

    .line 181
    .line 182
    invoke-static {v8}, Liz1;->f(Let8;)Les8;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    iget-object v8, v8, Les8;->a:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-eqz v8, :cond_7

    .line 193
    .line 194
    add-int/lit8 v7, v7, 0x1

    .line 195
    .line 196
    if-ltz v7, :cond_8

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_8
    invoke-static {}, Lfl1;->E0()V

    .line 200
    .line 201
    .line 202
    throw v1

    .line 203
    :cond_9
    :goto_5
    const/4 v4, 0x1

    .line 204
    if-ne v7, v4, :cond_a

    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-ne v5, v4, :cond_a

    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :cond_a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    if-eqz p2, :cond_c

    .line 224
    .line 225
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    .line 227
    .line 228
    :cond_c
    iget-object p0, p0, Lus8;->b:Ldt8;

    .line 229
    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    sget-object p0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 234
    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    new-instance p0, Lxg;

    .line 239
    .line 240
    const/16 p1, 0xc

    .line 241
    .line 242
    invoke-direct {p0, p1}, Lxg;-><init>(I)V

    .line 243
    .line 244
    .line 245
    invoke-static {v0, p0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    new-instance p1, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    .line 253
    .line 254
    sget-object p0, Lw14;->a:Lgv7;

    .line 255
    .line 256
    sget-object p0, Lft8;->Companion:Lft8$a;

    .line 257
    .line 258
    invoke-virtual {p0, p1}, Lft8$a;->wrapList(Ljava/util/List;)Lft8;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-static {p0, p3}, Lw14;->f(Ljava/lang/Object;Lq63;)Z

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    new-instance p2, Los8;

    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    invoke-direct {p2, p1, p0}, Los8;-><init>(IZ)V

    .line 273
    .line 274
    .line 275
    return-object p2
.end method
