.class public final Laj0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lil0;

.field public final b:I


# direct methods
.method public constructor <init>(Lil0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Laj0;->a:Lil0;

    .line 5
    .line 6
    iput p2, p0, Laj0;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lzi0;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljj0;

    .line 7
    .line 8
    const v2, 0x7f1304da

    .line 9
    .line 10
    .line 11
    iget-object v7, v0, Laj0;->a:Lil0;

    .line 12
    .line 13
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/16 v6, 0x1c

    .line 22
    .line 23
    const-string v2, "locations"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-direct/range {v1 .. v6}, Ljj0;-><init>(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)V

    .line 27
    .line 28
    .line 29
    new-instance v8, Lli0;

    .line 30
    .line 31
    sget-object v2, Lq05;->DEVICE:Lq05;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    const v3, 0x7f1301fa

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const v3, 0x7f080129

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    iget v3, v0, Laj0;->b:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lq05;->isCheckedInExpansion(I)Z

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    const/4 v15, 0x0

    .line 61
    const/16 v16, 0xd4

    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v13, 0x0

    .line 65
    invoke-direct/range {v8 .. v16}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v1, Ljj0;->c:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    new-instance v9, Lli0;

    .line 74
    .line 75
    sget-object v4, Lq05;->CLOUD:Lq05;

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    const v5, 0x7f130106

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const v5, 0x7f080114

    .line 92
    .line 93
    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    invoke-virtual {v4, v3}, Lq05;->isCheckedInExpansion(I)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    const/16 v16, 0x0

    .line 103
    .line 104
    const/16 v17, 0xd4

    .line 105
    .line 106
    const/4 v12, 0x0

    .line 107
    const/4 v14, 0x0

    .line 108
    invoke-direct/range {v9 .. v17}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-instance v2, Lmj0;

    .line 115
    .line 116
    filled-new-array {v1}, [Ljj0;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const/4 v3, 0x0

    .line 125
    invoke-direct {v2, v1, v3}, Lmj0;-><init>(Ljava/util/ArrayList;Z)V

    .line 126
    .line 127
    .line 128
    new-instance v1, Llj0;

    .line 129
    .line 130
    invoke-direct {v1, v7}, Llj0;-><init>(Lil0;)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Lyi0;

    .line 134
    .line 135
    move-object/from16 v5, p1

    .line 136
    .line 137
    invoke-direct {v4, v3, v5, v0, v2}, Lyi0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2, v4}, Llj0;->j(Lpj0;Lbt3;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
