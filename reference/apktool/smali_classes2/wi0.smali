.class public final Lwi0;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lxi0;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Liz4;

.field public final synthetic f:Lcd;

.field public final synthetic k:Lri0;


# direct methods
.method public constructor <init>(Lxi0;Landroid/app/Activity;ZZLiz4;Lcd;Lri0;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwi0;->a:Lxi0;

    .line 2
    .line 3
    iput-object p2, p0, Lwi0;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iput-boolean p3, p0, Lwi0;->c:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lwi0;->d:Z

    .line 8
    .line 9
    iput-object p5, p0, Lwi0;->e:Liz4;

    .line 10
    .line 11
    iput-object p6, p0, Lwi0;->f:Lcd;

    .line 12
    .line 13
    iput-object p7, p0, Lwi0;->k:Lri0;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lws7;-><init>(ILjv1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 9

    .line 1
    new-instance v0, Lwi0;

    .line 2
    .line 3
    iget-object v6, p0, Lwi0;->f:Lcd;

    .line 4
    .line 5
    iget-object v7, p0, Lwi0;->k:Lri0;

    .line 6
    .line 7
    iget-object v1, p0, Lwi0;->a:Lxi0;

    .line 8
    .line 9
    iget-object v2, p0, Lwi0;->b:Landroid/app/Activity;

    .line 10
    .line 11
    iget-boolean v3, p0, Lwi0;->c:Z

    .line 12
    .line 13
    iget-boolean v4, p0, Lwi0;->d:Z

    .line 14
    .line 15
    iget-object v5, p0, Lwi0;->e:Liz4;

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lwi0;-><init>(Lxi0;Landroid/app/Activity;ZZLiz4;Lcd;Lri0;Ljv1;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lwi0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lwi0;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lwi0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v4, v0, Lwi0;->c:Z

    .line 7
    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    const-string v1, "system_app_parts"

    .line 11
    .line 12
    :goto_0
    move-object v3, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v1, "user_app_parts"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    if-eqz v4, :cond_1

    .line 18
    .line 19
    const v1, 0x7f1304e1

    .line 20
    .line 21
    .line 22
    :goto_2
    move v6, v1

    .line 23
    goto :goto_3

    .line 24
    :cond_1
    const v1, 0x7f1304e2

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :goto_3
    iget-object v1, v0, Lwi0;->e:Liz4;

    .line 29
    .line 30
    invoke-virtual {v1}, Liz4;->hasApk()Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    invoke-virtual {v1}, Liz4;->getTotalApkSize()J

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    new-instance v2, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-direct {v2, v9, v10}, Ljava/lang/Long;-><init>(J)V

    .line 41
    .line 42
    .line 43
    sget-object v5, Lp93;->a:Lp93;

    .line 44
    .line 45
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-virtual {v1}, Liz4;->hasSplitApks()Z

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    invoke-virtual {v1}, Liz4;->hasSharedLibs()Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    invoke-virtual {v1}, Liz4;->hasData()Z

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    invoke-virtual {v1}, Liz4;->getDataSize()J

    .line 62
    .line 63
    .line 64
    move-result-wide v13

    .line 65
    new-instance v2, Ljava/lang/Long;

    .line 66
    .line 67
    invoke-direct {v2, v13, v14}, Ljava/lang/Long;-><init>(J)V

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    invoke-virtual {v1}, Liz4;->hasExtData()Z

    .line 75
    .line 76
    .line 77
    move-result v14

    .line 78
    move-object v5, v1

    .line 79
    invoke-virtual {v5}, Liz4;->getExtDataSize()J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    new-instance v7, Ljava/lang/Long;

    .line 84
    .line 85
    invoke-direct {v7, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 86
    .line 87
    .line 88
    invoke-static {v7}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    invoke-virtual {v5}, Liz4;->hasMedia()Z

    .line 93
    .line 94
    .line 95
    move-result v16

    .line 96
    invoke-virtual {v5}, Liz4;->getMediaSize()J

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    new-instance v7, Ljava/lang/Long;

    .line 101
    .line 102
    invoke-direct {v7, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 103
    .line 104
    .line 105
    invoke-static {v7}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v17

    .line 109
    invoke-virtual {v5}, Liz4;->hasExpansion()Z

    .line 110
    .line 111
    .line 112
    move-result v18

    .line 113
    invoke-virtual {v5}, Liz4;->getExpansionSize()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    new-instance v5, Ljava/lang/Long;

    .line 118
    .line 119
    invoke-direct {v5, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 120
    .line 121
    .line 122
    invoke-static {v5}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v19

    .line 126
    iget-object v1, v0, Lwi0;->a:Lxi0;

    .line 127
    .line 128
    iget-object v2, v0, Lwi0;->b:Landroid/app/Activity;

    .line 129
    .line 130
    const/4 v5, 0x1

    .line 131
    iget-boolean v7, v0, Lwi0;->d:Z

    .line 132
    .line 133
    invoke-virtual/range {v1 .. v19}, Lxi0;->b(Landroid/app/Activity;Ljava/lang/String;ZZIZZLjava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljj0;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    filled-new-array {v2}, [Ljj0;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    new-instance v3, Loj0;

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-direct {v3, v2, v4}, Loj0;-><init>(Ljava/util/ArrayList;Z)V

    .line 149
    .line 150
    .line 151
    iget-object v2, v0, Lwi0;->f:Lcd;

    .line 152
    .line 153
    iget-object v0, v0, Lwi0;->k:Lri0;

    .line 154
    .line 155
    invoke-virtual {v1, v3, v4, v2, v0}, Lxi0;->f(Lpj0;ZLcd;Lri0;)V

    .line 156
    .line 157
    .line 158
    sget-object v0, Lbe8;->a:Lbe8;

    .line 159
    .line 160
    return-object v0
.end method
