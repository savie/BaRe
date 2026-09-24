.class public abstract Lje5;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class p0, Lme5;

    .line 5
    .line 6
    invoke-static {p0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public abstract U()Lme5;
.end method

.method public final V(Lvd5;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lvd5;->getLocalFile()Lq63;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lvd5;->isLocalItem()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lq63;->j()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    invoke-virtual {p0}, Lje5;->U()Lme5;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object p0, p0, Lme5;->e:Lix6;

    .line 25
    .line 26
    new-instance p1, Lke5;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Lke5;-><init>(Lq63;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lvd5;->isCloudItem()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_5

    .line 40
    .line 41
    invoke-virtual {v0}, Lq63;->j()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lq63;->A()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-virtual {p1}, Lvd5;->getRemoteFileSize()Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    cmp-long v3, v1, v3

    .line 63
    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Lje5;->U()Lme5;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget-object p0, p0, Lme5;->e:Lix6;

    .line 71
    .line 72
    new-instance p1, Lke5;

    .line 73
    .line 74
    invoke-direct {p1, v0}, Lke5;-><init>(Lq63;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    :goto_0
    sget-object v0, Lp93;->a:Lp93;

    .line 82
    .line 83
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lvd5;->getRemoteFileSize()Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, ", cloud="

    .line 100
    .line 101
    const-string v3, ")"

    .line 102
    .line 103
    const-string v4, "Cloud item file size mismatch (local="

    .line 104
    .line 105
    invoke-static {v4, v0, v2, v1, v3}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 110
    .line 111
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    const/4 v9, 0x4

    .line 116
    const/4 v10, 0x0

    .line 117
    const/4 v8, 0x0

    .line 118
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    sget-object v0, Ltb1;->a:Ltb1;

    .line 128
    .line 129
    invoke-static {}, Lqb1;->m()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {p0}, Lje5;->U()Lme5;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    sget-object v0, Lzn4;->a:Lzn4;

    .line 144
    .line 145
    new-instance v0, Lsf;

    .line 146
    .line 147
    const/4 v1, 0x1

    .line 148
    const/4 v2, 0x0

    .line 149
    invoke-direct {v0, p0, p1, v2, v1}, Lsf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 153
    .line 154
    .line 155
    :cond_5
    :goto_1
    return-void
.end method

.method public final W(Landroid/view/View;Lvd5;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lu45;

    .line 8
    .line 9
    const/16 v1, 0xc

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0f0023

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ll90;->f(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v0, Ll90;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lfc5;

    .line 23
    .line 24
    const v1, 0x7f0a008d

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lfc5;->findItem(I)Landroid/view/MenuItem;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p2}, Lvd5;->isCloudItem()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    xor-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0a005b

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lfc5;->findItem(I)Landroid/view/MenuItem;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 71
    .line 72
    .line 73
    :cond_0
    new-instance p1, Liq0;

    .line 74
    .line 75
    invoke-direct {p1, p0, p2}, Liq0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, v0, Ll90;->e:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {v0}, Lu45;->j()V

    .line 81
    .line 82
    .line 83
    return-void
.end method
