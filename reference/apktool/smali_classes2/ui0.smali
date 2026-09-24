.class public final Lui0;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lzc6;

.field public final synthetic b:Lxi0;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lri0;


# direct methods
.method public constructor <init>(Lzc6;Lxi0;Landroid/app/Activity;ZZLri0;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui0;->a:Lzc6;

    .line 2
    .line 3
    iput-object p2, p0, Lui0;->b:Lxi0;

    .line 4
    .line 5
    iput-object p3, p0, Lui0;->c:Landroid/app/Activity;

    .line 6
    .line 7
    iput-boolean p4, p0, Lui0;->d:Z

    .line 8
    .line 9
    iput-boolean p5, p0, Lui0;->e:Z

    .line 10
    .line 11
    iput-object p6, p0, Lui0;->f:Lri0;

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
    new-instance v0, Lui0;

    .line 2
    .line 3
    iget-boolean v5, p0, Lui0;->e:Z

    .line 4
    .line 5
    iget-object v6, p0, Lui0;->f:Lri0;

    .line 6
    .line 7
    iget-object v1, p0, Lui0;->a:Lzc6;

    .line 8
    .line 9
    iget-object v2, p0, Lui0;->b:Lxi0;

    .line 10
    .line 11
    iget-object v3, p0, Lui0;->c:Landroid/app/Activity;

    .line 12
    .line 13
    iget-boolean v4, p0, Lui0;->d:Z

    .line 14
    .line 15
    move-object v7, p2

    .line 16
    invoke-direct/range {v0 .. v7}, Lui0;-><init>(Lzc6;Lxi0;Landroid/app/Activity;ZZLri0;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lui0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lui0;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lui0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lui0;->a:Lzc6;

    .line 7
    .line 8
    iget-boolean v2, v1, Lzc6;->x:Z

    .line 9
    .line 10
    iget-boolean v3, v1, Lzc6;->q:Z

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    iget-object v6, v0, Lui0;->c:Landroid/app/Activity;

    .line 14
    .line 15
    iget-object v5, v0, Lui0;->b:Lxi0;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x1

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    new-instance v2, Lmj0;

    .line 22
    .line 23
    iget-boolean v9, v1, Lzc6;->r:Z

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    if-nez v9, :cond_0

    .line 28
    .line 29
    move v11, v8

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v11, v7

    .line 32
    :goto_0
    if-nez v3, :cond_2

    .line 33
    .line 34
    if-nez v9, :cond_2

    .line 35
    .line 36
    iget-object v3, v1, Lzc6;->a:Ljava/lang/String;

    .line 37
    .line 38
    const-string v10, "ID_BACKUP_ALL_APPS"

    .line 39
    .line 40
    invoke-static {v3, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v12, v7

    .line 48
    move v3, v8

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    :goto_1
    move v3, v8

    .line 51
    move v12, v3

    .line 52
    :goto_2
    iget-boolean v8, v1, Lzc6;->r:Z

    .line 53
    .line 54
    const/16 v22, 0x1

    .line 55
    .line 56
    const/16 v23, 0x0

    .line 57
    .line 58
    const/4 v7, 0x1

    .line 59
    move v1, v9

    .line 60
    iget-boolean v9, v0, Lui0;->d:Z

    .line 61
    .line 62
    iget-boolean v10, v0, Lui0;->e:Z

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    const/4 v14, 0x1

    .line 66
    const/4 v15, 0x1

    .line 67
    const/16 v16, 0x1

    .line 68
    .line 69
    const/16 v17, 0x0

    .line 70
    .line 71
    const/16 v18, 0x1

    .line 72
    .line 73
    const/16 v19, 0x0

    .line 74
    .line 75
    const/16 v20, 0x1

    .line 76
    .line 77
    const/16 v21, 0x0

    .line 78
    .line 79
    invoke-virtual/range {v5 .. v23}, Lxi0;->c(Landroid/app/Activity;ZZZZZZLjava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-direct {v2, v6, v1}, Lmj0;-><init>(Ljava/util/ArrayList;Z)V

    .line 84
    .line 85
    .line 86
    move-object v1, v2

    .line 87
    move v2, v3

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    move v2, v8

    .line 90
    iget-boolean v8, v1, Lzc6;->e:Z

    .line 91
    .line 92
    if-eqz v8, :cond_5

    .line 93
    .line 94
    new-instance v1, Loj0;

    .line 95
    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    if-eqz v8, :cond_4

    .line 99
    .line 100
    move v7, v2

    .line 101
    :cond_4
    iget-boolean v3, v0, Lui0;->d:Z

    .line 102
    .line 103
    iget-boolean v8, v0, Lui0;->e:Z

    .line 104
    .line 105
    invoke-static {v5, v6, v3, v8}, Lxi0;->a(Lxi0;Landroid/app/Activity;ZZ)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-direct {v1, v3, v7}, Loj0;-><init>(Ljava/util/ArrayList;Z)V

    .line 110
    .line 111
    .line 112
    :goto_3
    iget-object v0, v0, Lui0;->f:Lri0;

    .line 113
    .line 114
    invoke-virtual {v5, v1, v2, v4, v0}, Lxi0;->f(Lpj0;ZLcd;Lri0;)V

    .line 115
    .line 116
    .line 117
    sget-object v0, Lbe8;->a:Lbe8;

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_5
    const-string v0, "expandForQuickItem() for "

    .line 121
    .line 122
    invoke-static {v1, v0}, Lg84;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-object v4
.end method
