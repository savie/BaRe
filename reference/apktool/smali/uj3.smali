.class public final synthetic Luj3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lq63;

.field public final synthetic b:Lq63;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lwj3;

.field public final synthetic e:Lxp1;

.field public final synthetic f:[C

.field public final synthetic k:J

.field public final synthetic n:Lkh6;

.field public final synthetic p:Lqt3;


# direct methods
.method public synthetic constructor <init>(Lq63;Lq63;Ljava/util/ArrayList;Lwj3;Lxp1;[CJLkh6;Lqt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luj3;->a:Lq63;

    .line 5
    .line 6
    iput-object p2, p0, Luj3;->b:Lq63;

    .line 7
    .line 8
    iput-object p3, p0, Luj3;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p4, p0, Luj3;->d:Lwj3;

    .line 11
    .line 12
    iput-object p5, p0, Luj3;->e:Lxp1;

    .line 13
    .line 14
    iput-object p6, p0, Luj3;->f:[C

    .line 15
    .line 16
    iput-wide p7, p0, Luj3;->k:J

    .line 17
    .line 18
    iput-object p9, p0, Luj3;->n:Lkh6;

    .line 19
    .line 20
    iput-object p10, p0, Luj3;->p:Lqt3;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lmz6;->a:Ljava/util/HashSet;

    .line 4
    .line 5
    new-instance v2, Lhz6;

    .line 6
    .line 7
    iget-object v1, v0, Luj3;->a:Lq63;

    .line 8
    .line 9
    invoke-virtual {v1}, Lq63;->q()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v7, 0x0

    .line 14
    const/16 v8, 0x10

    .line 15
    .line 16
    iget-object v4, v0, Luj3;->b:Lq63;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    iget-object v6, v0, Luj3;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct/range {v2 .. v8}, Lhz6;-><init>(Ljava/lang/String;Lq63;ZLjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    sget-object v7, Lf27;->Basic:Lf27;

    .line 29
    .line 30
    iget-object v2, v0, Luj3;->e:Lxp1;

    .line 31
    .line 32
    invoke-virtual {v2}, Lxp1;->getLevel()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-gtz v3, :cond_0

    .line 37
    .line 38
    sget-object v2, Loy6;->j:Loy6;

    .line 39
    .line 40
    move-object v8, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v3, Lpy6;

    .line 43
    .line 44
    invoke-virtual {v2}, Lxp1;->getLevel()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-direct {v3, v2}, Lpy6;-><init>(I)V

    .line 49
    .line 50
    .line 51
    move-object v8, v3

    .line 52
    :goto_0
    iget-object v2, v0, Luj3;->f:[C

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    new-instance v3, Lfz6;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Lfz6;-><init>([C)V

    .line 59
    .line 60
    .line 61
    :goto_1
    move-object v9, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    sget-object v3, Lgz6;->i:Lgz6;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :goto_2
    sget-object v11, Liz6;->Auto:Liz6;

    .line 67
    .line 68
    new-instance v12, Lek;

    .line 69
    .line 70
    const/16 v2, 0x1a

    .line 71
    .line 72
    iget-object v3, v0, Luj3;->d:Lwj3;

    .line 73
    .line 74
    invoke-direct {v12, v3, v2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    iget-wide v14, v0, Luj3;->k:J

    .line 78
    .line 79
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-instance v13, Lmw;

    .line 84
    .line 85
    iget-object v4, v0, Luj3;->n:Lkh6;

    .line 86
    .line 87
    iget-object v0, v0, Luj3;->p:Lqt3;

    .line 88
    .line 89
    move-object/from16 v18, v0

    .line 90
    .line 91
    move-object/from16 v16, v3

    .line 92
    .line 93
    move-object/from16 v17, v4

    .line 94
    .line 95
    invoke-direct/range {v13 .. v18}, Lmw;-><init>(JLwj3;Lkh6;Lqt3;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lu10;

    .line 99
    .line 100
    const/16 v3, 0x11

    .line 101
    .line 102
    invoke-direct {v0, v13, v3}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    sget-object v3, Ld07;->a:Ld07;

    .line 106
    .line 107
    new-instance v4, Lmy6;

    .line 108
    .line 109
    invoke-direct {v4, v3}, Lmy6;-><init>(Lbt3;)V

    .line 110
    .line 111
    .line 112
    new-instance v13, Lc07;

    .line 113
    .line 114
    invoke-direct {v13, v2, v0, v4}, Lc07;-><init>(Ljava/lang/Long;Lu10;Lmy6;)V

    .line 115
    .line 116
    .line 117
    new-instance v3, Lop3;

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    const-string v10, ""

    .line 121
    .line 122
    move-object v4, v1

    .line 123
    invoke-direct/range {v3 .. v13}, Lop3;-><init>(Lq63;Ljava/util/List;Liu;Lf27;Lcy0;Lod2;Ljava/lang/String;Liz6;Lbt3;Lh07;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v3}, Lmz6;->b(Lop3;)Lez6;

    .line 127
    .line 128
    .line 129
    sget-object v0, Lbe8;->a:Lbe8;

    .line 130
    .line 131
    return-object v0
.end method
