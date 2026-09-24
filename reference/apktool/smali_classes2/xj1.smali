.class public final Lxj1;
.super Ldv;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Lxj1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lxj1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ldv;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lxj1;->g:Lxj1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lik6;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lai8;->b()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ltb1;->a:Ltb1;

    .line 7
    .line 8
    invoke-static {}, Lqb1;->m()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0xe

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Lik6;

    .line 19
    .line 20
    sget-object v1, Lhk6;->DriveNotConnected:Lhk6;

    .line 21
    .line 22
    invoke-direct {v0, v1, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 27
    .line 28
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lai8;->i(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    new-instance v0, Lik6;

    .line 39
    .line 40
    sget-object v1, Lhk6;->NetworkError:Lhk6;

    .line 41
    .line 42
    invoke-direct {v0, v1, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ltb1;->k()Lui1;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v5, v1, Lui1;->b:Ljava/lang/Exception;

    .line 55
    .line 56
    iget-object v6, v0, Ldv;->a:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    const-string v0, "getCloudBackups: "

    .line 61
    .line 62
    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    new-instance v0, Lik6;

    .line 66
    .line 67
    sget-object v1, Lhk6;->CloudError:Lhk6;

    .line 68
    .line 69
    invoke-direct {v0, v1, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_2
    iget-object v1, v1, Lui1;->a:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const/4 v7, 0x1

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    const-string v1, "getCloudBackups: FileList is EMPTY"

    .line 83
    .line 84
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iput-boolean v7, v0, Ldv;->b:Z

    .line 88
    .line 89
    new-instance v0, Lik6;

    .line 90
    .line 91
    sget-object v1, Lhk6;->Empty:Lhk6;

    .line 92
    .line 93
    invoke-direct {v0, v1, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 98
    .line 99
    const/16 v5, 0xa

    .line 100
    .line 101
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_4

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Lpg1;

    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v9, Lq63;

    .line 128
    .line 129
    sget-object v6, Lry5;->u:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v4, v3}, Lqy5;->f(ZLzn7;)Lry5;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    iget-object v6, v6, Lry5;->r:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v8, v5, Lpg1;->a:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v6, v8}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    const/4 v8, 0x2

    .line 144
    invoke-direct {v9, v6, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    iget-object v14, v5, Lpg1;->a:Ljava/lang/String;

    .line 148
    .line 149
    iget-wide v10, v5, Lpg1;->e:J

    .line 150
    .line 151
    iget-wide v12, v5, Lpg1;->c:J

    .line 152
    .line 153
    iget-object v15, v5, Lpg1;->b:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v5, v5, Lpg1;->f:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v9}, Lq63;->j()Z

    .line 158
    .line 159
    .line 160
    move-result v17

    .line 161
    new-instance v8, Lyn8;

    .line 162
    .line 163
    move-object/from16 v16, v5

    .line 164
    .line 165
    invoke-direct/range {v8 .. v17}, Lyn8;-><init>(Lq63;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_4
    iput-boolean v7, v0, Ldv;->b:Z

    .line 173
    .line 174
    new-instance v0, Lik6;

    .line 175
    .line 176
    sget-object v1, Lhk6;->Success:Lhk6;

    .line 177
    .line 178
    const/16 v3, 0xc

    .line 179
    .line 180
    invoke-direct {v0, v1, v2, v4, v3}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 181
    .line 182
    .line 183
    return-object v0
.end method
