.class public final Lti0;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Ln10;

.field public final synthetic b:Lxi0;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lri0;


# direct methods
.method public constructor <init>(Ln10;Lxi0;Landroid/app/Activity;ZZLri0;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lti0;->a:Ln10;

    .line 2
    .line 3
    iput-object p2, p0, Lti0;->b:Lxi0;

    .line 4
    .line 5
    iput-object p3, p0, Lti0;->c:Landroid/app/Activity;

    .line 6
    .line 7
    iput-boolean p4, p0, Lti0;->d:Z

    .line 8
    .line 9
    iput-boolean p5, p0, Lti0;->e:Z

    .line 10
    .line 11
    iput-object p6, p0, Lti0;->f:Lri0;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lws7;-><init>(ILjv1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 8

    .line 1
    new-instance v0, Lti0;

    .line 2
    .line 3
    iget-boolean v5, p0, Lti0;->e:Z

    .line 4
    .line 5
    iget-object v6, p0, Lti0;->f:Lri0;

    .line 6
    .line 7
    iget-object v1, p0, Lti0;->a:Ln10;

    .line 8
    .line 9
    iget-object v2, p0, Lti0;->b:Lxi0;

    .line 10
    .line 11
    iget-object v3, p0, Lti0;->c:Landroid/app/Activity;

    .line 12
    .line 13
    iget-boolean v4, p0, Lti0;->d:Z

    .line 14
    .line 15
    move-object v7, p2

    .line 16
    invoke-direct/range {v0 .. v7}, Lti0;-><init>(Ln10;Lxi0;Landroid/app/Activity;ZZLri0;Ljv1;)V

    .line 17
    .line 18
    .line 19
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
    invoke-virtual {p0, p1, p2}, Lti0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lti0;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lti0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lti0;->a:Ln10;

    .line 7
    .line 8
    iget-object v2, v1, Ln10;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, v1, Ln10;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const v5, -0x5b5c9592

    .line 17
    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    iget-object v8, v0, Lti0;->c:Landroid/app/Activity;

    .line 21
    .line 22
    iget-object v7, v0, Lti0;->b:Lxi0;

    .line 23
    .line 24
    const/4 v9, 0x1

    .line 25
    if-eq v4, v5, :cond_1

    .line 26
    .line 27
    const v5, 0x142a828c

    .line 28
    .line 29
    .line 30
    const-string v10, "Sync backups"

    .line 31
    .line 32
    if-eq v4, v5, :cond_0

    .line 33
    .line 34
    const v5, 0x762561e2

    .line 35
    .line 36
    .line 37
    if-ne v4, v5, :cond_2

    .line 38
    .line 39
    const-string v4, "Backup"

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    :goto_0
    invoke-static {v3, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    new-instance v2, Lmj0;

    .line 59
    .line 60
    invoke-static {v3, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    xor-int/lit8 v13, v3, 0x1

    .line 65
    .line 66
    const/16 v24, 0x1

    .line 67
    .line 68
    const/16 v25, 0x0

    .line 69
    .line 70
    move v3, v9

    .line 71
    const/4 v9, 0x1

    .line 72
    iget-boolean v11, v0, Lti0;->d:Z

    .line 73
    .line 74
    iget-boolean v12, v0, Lti0;->e:Z

    .line 75
    .line 76
    const/4 v14, 0x1

    .line 77
    const/4 v15, 0x0

    .line 78
    const/16 v16, 0x1

    .line 79
    .line 80
    const/16 v17, 0x1

    .line 81
    .line 82
    const/16 v18, 0x1

    .line 83
    .line 84
    const/16 v19, 0x0

    .line 85
    .line 86
    const/16 v20, 0x1

    .line 87
    .line 88
    const/16 v21, 0x0

    .line 89
    .line 90
    const/16 v22, 0x1

    .line 91
    .line 92
    const/16 v23, 0x0

    .line 93
    .line 94
    move v10, v1

    .line 95
    invoke-virtual/range {v7 .. v25}, Lxi0;->c(Landroid/app/Activity;ZZZZZZLjava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v2, v1, v10}, Lmj0;-><init>(Ljava/util/ArrayList;Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    move v3, v9

    .line 104
    const-string v4, "Restore"

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    new-instance v2, Loj0;

    .line 113
    .line 114
    iget-boolean v1, v1, Ln10;->k:Z

    .line 115
    .line 116
    iget-boolean v4, v0, Lti0;->d:Z

    .line 117
    .line 118
    iget-boolean v5, v0, Lti0;->e:Z

    .line 119
    .line 120
    invoke-static {v7, v8, v4, v5}, Lxi0;->a(Lxi0;Landroid/app/Activity;ZZ)Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-direct {v2, v4, v1}, Loj0;-><init>(Ljava/util/ArrayList;Z)V

    .line 125
    .line 126
    .line 127
    :goto_1
    iget-object v0, v0, Lti0;->f:Lri0;

    .line 128
    .line 129
    invoke-virtual {v7, v2, v3, v6, v0}, Lxi0;->f(Lpj0;ZLcd;Lri0;)V

    .line 130
    .line 131
    .line 132
    sget-object v0, Lbe8;->a:Lbe8;

    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_2
    const-string v0, "expandForBatchAction() for "

    .line 136
    .line 137
    invoke-static {v1, v0}, Lg84;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v6
.end method
