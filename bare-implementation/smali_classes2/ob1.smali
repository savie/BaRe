.class public final Lob1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a()Ljava/util/List;
    .locals 5

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
    sget-object v0, Ltb1;->a:Ltb1;

    .line 17
    .line 18
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lqb1;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lre3;->f()Lzc2;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-static {v2, v3}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    instance-of v3, v2, Lxe3;

    .line 58
    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    check-cast v2, Lxe3;

    .line 62
    .line 63
    iget-object v1, v2, Lxe3;->n:Leb2;

    .line 64
    .line 65
    invoke-virtual {v1}, Leb2;->b()Ldb2;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    move-object v4, v3

    .line 93
    check-cast v4, Leb2;

    .line 94
    .line 95
    iget-object v4, v4, Leb2;->b:Lzc2;

    .line 96
    .line 97
    invoke-virtual {v4}, Lzc2;->e()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v0, v4}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_1

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Leb2;

    .line 126
    .line 127
    iget-object v2, v2, Leb2;->b:Lzc2;

    .line 128
    .line 129
    invoke-virtual {v2}, Lzc2;->e()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_3

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    instance-of v2, v2, Lwe3;

    .line 140
    .line 141
    if-eqz v2, :cond_6

    .line 142
    .line 143
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 144
    .line 145
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const v2, 0x7f130222

    .line 150
    .line 151
    .line 152
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    sget-object v3, Lzn4;->a:Lzn4;

    .line 157
    .line 158
    invoke-static {v1, v2}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-static {v0}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    new-instance v1, Lcl7;

    .line 171
    .line 172
    const/4 v2, 0x3

    .line 173
    invoke-direct {v1, v2}, Lcl7;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 182
    .line 183
    .line 184
    return-object v1

    .line 185
    :cond_7
    invoke-static {}, Ld6;->o()V

    .line 186
    .line 187
    .line 188
    return-object v1
.end method

.method public static b(Lil0;Ljava/util/List;Lmt3;Lae1;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Ltb1;->a:Ltb1;

    .line 10
    .line 11
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Lqb1;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Ljava/lang/String;

    .line 43
    .line 44
    const v6, 0x7f1301de

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    const-string v7, " ("

    .line 61
    .line 62
    const-string v8, ")"

    .line 63
    .line 64
    invoke-static {v5, v7, v6, v8}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance v3, Llh6;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v1, v3, Llh6;->a:Ljava/lang/Object;

    .line 78
    .line 79
    new-instance v1, Lhv1;

    .line 80
    .line 81
    const v4, 0x7f140160

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, p0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Ls35;

    .line 88
    .line 89
    const/4 v6, 0x0

    .line 90
    invoke-direct {v5, p0, v4, v1, v6}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v5, Lva;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Lra;

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    iput-boolean v4, v1, Lra;->m:Z

    .line 99
    .line 100
    const v1, 0x7f1304d7

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v1}, Lv75;->v(I)V

    .line 104
    .line 105
    .line 106
    new-array v1, v4, [Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, [Ljava/lang/CharSequence;

    .line 113
    .line 114
    new-instance v1, Lib1;

    .line 115
    .line 116
    invoke-direct {v1, v4, v3, p1, p2}, Lib1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v0, v2, v1}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    new-instance p1, Ljb1;

    .line 123
    .line 124
    invoke-direct {p1, p2, v3, v4}, Ljb1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    .line 125
    .line 126
    .line 127
    const p2, 0x7f1303e6

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, p2, p1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    if-eqz p3, :cond_2

    .line 134
    .line 135
    new-instance p1, Lkb1;

    .line 136
    .line 137
    invoke-direct {p1, v4, p0, p3}, Lkb1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    const p0, 0x7f1303b7

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, p0, p1}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    :cond_2
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 147
    .line 148
    .line 149
    return-void
.end method
