.class public final Lyg4;
.super Las5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:[Ljava/lang/Class;

.field public static final d:[Ljava/lang/Class;


# instance fields
.field public transient a:Lwp4;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v6, Laj4;

    .line 2
    .line 3
    const-class v7, Lvk4;

    .line 4
    .line 5
    const-class v0, Lbm4;

    .line 6
    .line 7
    const-class v1, Lln4;

    .line 8
    .line 9
    const-class v2, Lck4;

    .line 10
    .line 11
    const-class v3, Lxm4;

    .line 12
    .line 13
    const-class v4, Lrl4;

    .line 14
    .line 15
    const-class v5, Lan4;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lyg4;->c:[Ljava/lang/Class;

    .line 22
    .line 23
    const-class v7, Lvk4;

    .line 24
    .line 25
    const-class v8, Lzk4;

    .line 26
    .line 27
    const-class v1, Loj4;

    .line 28
    .line 29
    const-class v2, Lln4;

    .line 30
    .line 31
    const-class v3, Lck4;

    .line 32
    .line 33
    const-class v4, Lxm4;

    .line 34
    .line 35
    const-class v5, Lan4;

    .line 36
    .line 37
    const-class v6, Laj4;

    .line 38
    .line 39
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lyg4;->d:[Ljava/lang/Class;

    .line 44
    .line 45
    :try_start_0
    sget v0, Lfh4;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    invoke-static {v0}, Ljb9;->a0(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static g0(Ls65;Ljb9;)Lvn7;
    .locals 10

    .line 1
    const-class v0, Lxm4;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxm4;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move-object v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v0}, Lxm4;->use()Lum4;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v0}, Lxm4;->include()Ltm4;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v0}, Lxm4;->property()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-interface {v0}, Lxm4;->defaultImpl()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-interface {v0}, Lxm4;->visible()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-interface {v0}, Lxm4;->requireTypeIdForSubtypes()Lfu5;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lfu5;->a()Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-static/range {v2 .. v7}, Lwm4;->a(Lum4;Ltm4;Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Boolean;)Lwm4;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    const-class v2, Lzm4;

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lzm4;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-interface {v2}, Lzm4;->value()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p0}, Ls65;->g()V

    .line 64
    .line 65
    .line 66
    sget-object v3, Lu65;->G:Lu65;

    .line 67
    .line 68
    invoke-virtual {p0, v3}, Ls65;->i(Lu65;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-static {v2, v3}, Lu81;->f(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lvn7;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    if-nez v0, :cond_3

    .line 80
    .line 81
    :goto_1
    return-object v1

    .line 82
    :cond_3
    iget-object v2, v0, Lwm4;->a:Lum4;

    .line 83
    .line 84
    sget-object v3, Lum4;->b:Lum4;

    .line 85
    .line 86
    if-ne v2, v3, :cond_4

    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v8, 0x0

    .line 90
    const/4 v4, 0x0

    .line 91
    const/4 v5, 0x0

    .line 92
    const/4 v6, 0x0

    .line 93
    invoke-static/range {v3 .. v8}, Lwm4;->a(Lum4;Ltm4;Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Boolean;)Lwm4;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    new-instance p1, Lvn7;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p0}, Lvn7;->b(Lwm4;)V

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_4
    new-instance v2, Lvn7;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lvn7;->b(Lwm4;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    const-class v3, Lsm4;

    .line 115
    .line 116
    invoke-virtual {p1, v3}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Lsm4;

    .line 121
    .line 122
    if-nez v3, :cond_5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    invoke-interface {v3}, Lsm4;->value()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p0}, Ls65;->g()V

    .line 130
    .line 131
    .line 132
    sget-object v3, Lu65;->G:Lu65;

    .line 133
    .line 134
    invoke-virtual {p0, v3}, Ls65;->i(Lu65;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    invoke-static {v1, p0}, Lu81;->f(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    move-object v1, p0

    .line 143
    check-cast v1, Lmc8;

    .line 144
    .line 145
    :goto_3
    iget-object p0, v0, Lwm4;->b:Ltm4;

    .line 146
    .line 147
    sget-object v3, Ltm4;->d:Ltm4;

    .line 148
    .line 149
    if-ne p0, v3, :cond_7

    .line 150
    .line 151
    instance-of p1, p1, Lhd;

    .line 152
    .line 153
    if-eqz p1, :cond_7

    .line 154
    .line 155
    sget-object v5, Ltm4;->a:Ltm4;

    .line 156
    .line 157
    if-ne v5, p0, :cond_6

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_6
    new-instance v3, Lwm4;

    .line 161
    .line 162
    iget-object v4, v0, Lwm4;->a:Lum4;

    .line 163
    .line 164
    iget-object v6, v0, Lwm4;->c:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v7, v0, Lwm4;->d:Ljava/lang/Class;

    .line 167
    .line 168
    iget-boolean v8, v0, Lwm4;->e:Z

    .line 169
    .line 170
    iget-object v9, v0, Lwm4;->f:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-direct/range {v3 .. v9}, Lwm4;-><init>(Lum4;Ltm4;Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Boolean;)V

    .line 173
    .line 174
    .line 175
    move-object v0, v3

    .line 176
    :cond_7
    :goto_4
    iget-object p0, v0, Lwm4;->d:Ljava/lang/Class;

    .line 177
    .line 178
    if-eqz p0, :cond_8

    .line 179
    .line 180
    const-class p1, Lvm4;

    .line 181
    .line 182
    if-eq p0, p1, :cond_8

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    :cond_8
    iput-object v1, v2, Lvn7;->d:Lmc8;

    .line 189
    .line 190
    invoke-virtual {v2, v0}, Lvn7;->b(Lwm4;)V

    .line 191
    .line 192
    .line 193
    return-object v2
.end method

.method public static h0(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lu81;->u(Ljava/lang/Class;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-ne p0, p1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Lu81;->u(Ljava/lang/Class;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-ne p1, p0, :cond_1

    .line 25
    .line 26
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0
.end method


# virtual methods
.method public final A(Ljb9;)Lsk4;
    .locals 4

    .line 1
    const-class p0, Ltk4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ltk4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lsk4;->b:Lsk4;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Lsk4;

    .line 15
    .line 16
    invoke-interface {p0}, Ltk4;->value()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    array-length v0, p0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .line 27
    .line 28
    array-length v1, p0

    .line 29
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 30
    .line 31
    .line 32
    array-length v1, p0

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_3

    .line 35
    .line 36
    aget-object v3, p0, v2

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 45
    .line 46
    :cond_3
    invoke-direct {p1, v0}, Lsk4;-><init>(Ljava/util/Set;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method

.method public final B(Lod;)Ljava/lang/Integer;
    .locals 0

    .line 1
    const-class p0, Lnl4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnl4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lnl4;->index()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 p1, -0x1

    .line 16
    if-eq p0, p1, :cond_0

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final C(Ls65;Lod;Lgc8;)Lvn7;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lgc8;->x0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p3}, Lho6;->C()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, p2}, Lyg4;->g0(Ls65;Ljb9;)Lvn7;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final D(Lod;)Lde;
    .locals 0

    .line 1
    const-class p0, Lvk4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvk4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lvk4;->value()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    new-instance p0, Lde;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-direct {p0, p1}, Lde;-><init>(I)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const-class p0, Laj4;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Laj4;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-interface {p0}, Laj4;->value()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    new-instance p0, Lde;

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    invoke-direct {p0, p1}, Lde;-><init>(I)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public final E(Lhd;)Lz86;
    .locals 2

    .line 1
    const-class p0, Lxl4;

    .line 2
    .line 3
    iget-object p1, p1, Lhd;->V:Lee;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lee;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lxl4;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-interface {p0}, Lxl4;->namespace()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object p1, v0

    .line 29
    :goto_0
    invoke-interface {p0}, Lxl4;->value()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0, p1}, Lz86;->b(Ljava/lang/String;Ljava/lang/String;)Lz86;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final F(Lod;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class p0, Lbm4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbm4;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-interface {p0}, Lbm4;->contentConverter()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-static {p0}, Lu81;->o(Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :cond_1
    move-object p0, p1

    .line 26
    :cond_2
    if-eqz p0, :cond_4

    .line 27
    .line 28
    const-class v0, Lzv1;

    .line 29
    .line 30
    if-ne p0, v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return-object p0

    .line 34
    :cond_4
    :goto_0
    return-object p1
.end method

.method public final G(Ljb9;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class p0, Lbm4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbm4;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-interface {p0}, Lbm4;->converter()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-static {p0}, Lu81;->o(Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :cond_1
    move-object p0, p1

    .line 26
    :cond_2
    if-eqz p0, :cond_4

    .line 27
    .line 28
    const-class v0, Lzv1;

    .line 29
    .line 30
    if-ne p0, v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return-object p0

    .line 34
    :cond_4
    :goto_0
    return-object p1
.end method

.method public final H(Lhd;)[Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lpl4;

    .line 2
    .line 3
    iget-object p1, p1, Lhd;->V:Lee;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lee;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lpl4;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Lpl4;->value()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final I(Ljb9;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const-class p0, Lpl4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lpl4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lpl4;->alphabetic()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final J(Ljb9;)Lam4;
    .locals 0

    .line 1
    const-class p0, Lbm4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbm4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Lbm4;->typing()Lam4;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final K(Ljb9;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class p0, Lbm4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbm4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lbm4;->using()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-class v0, Lcm4;

    .line 16
    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const-class p0, Lrl4;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lrl4;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-interface {p0}, Lrl4;->value()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljb9;->C()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance p1, Lif6;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-direct {p1, v0, p0}, Ltn7;-><init>(ILjava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public final L(Lod;)Lfm4;
    .locals 1

    .line 1
    const-class p0, Lgm4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgm4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0}, Lgm4;->nulls()Lsp5;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p0}, Lgm4;->contentNulls()Lsp5;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v0, Lsp5;->a:Lsp5;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    move-object p1, v0

    .line 25
    :cond_1
    if-nez p0, :cond_2

    .line 26
    .line 27
    move-object p0, v0

    .line 28
    :cond_2
    if-ne p1, v0, :cond_3

    .line 29
    .line 30
    if-ne p0, v0, :cond_3

    .line 31
    .line 32
    :goto_0
    sget-object p0, Lfm4;->c:Lfm4;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_3
    new-instance v0, Lfm4;

    .line 36
    .line 37
    invoke-direct {v0, p1, p0}, Lfm4;-><init>(Lsp5;Lsp5;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public final M(Ljb9;)Ljava/util/List;
    .locals 17

    .line 1
    const-class v0, Ljm4;

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljm4;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    invoke-interface {v0}, Ljm4;->value()[Lim4;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v0}, Ljm4;->failOnRepeatedNames()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_7

    .line 24
    .line 25
    invoke-virtual {v1}, Ljb9;->B()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    array-length v5, v3

    .line 32
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    array-length v6, v3

    .line 41
    const/4 v7, 0x0

    .line 42
    :goto_0
    if-ge v7, v6, :cond_6

    .line 43
    .line 44
    aget-object v8, v3, v7

    .line 45
    .line 46
    invoke-interface {v8}, Lim4;->name()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    const-string v11, "]"

    .line 55
    .line 56
    const-string v12, "] got repeated subtype name ["

    .line 57
    .line 58
    const-string v13, "Annotated type ["

    .line 59
    .line 60
    if-nez v10, :cond_2

    .line 61
    .line 62
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-nez v10, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-static {v13, v0, v12, v9, v11}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_2
    :goto_1
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    new-instance v10, Lik5;

    .line 81
    .line 82
    invoke-interface {v8}, Lim4;->value()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v14

    .line 86
    invoke-direct {v10, v14, v9}, Lik5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-interface {v8}, Lim4;->names()[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    array-length v10, v9

    .line 97
    const/4 v14, 0x0

    .line 98
    :goto_2
    if-ge v14, v10, :cond_5

    .line 99
    .line 100
    aget-object v15, v9, v14

    .line 101
    .line 102
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v16

    .line 106
    if-nez v16, :cond_4

    .line 107
    .line 108
    invoke-virtual {v5, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v16

    .line 112
    if-nez v16, :cond_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    invoke-static {v13, v0, v12, v15, v11}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-object v2

    .line 123
    :cond_4
    :goto_3
    invoke-virtual {v5, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    new-instance v2, Lik5;

    .line 127
    .line 128
    invoke-interface {v8}, Lim4;->value()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-direct {v2, v4, v15}, Lik5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    add-int/lit8 v14, v14, 0x1

    .line 139
    .line 140
    const/4 v2, 0x0

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    goto :goto_0

    .line 146
    :cond_6
    return-object v1

    .line 147
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 148
    .line 149
    array-length v1, v3

    .line 150
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .line 152
    .line 153
    array-length v1, v3

    .line 154
    const/4 v2, 0x0

    .line 155
    :goto_4
    if-ge v2, v1, :cond_9

    .line 156
    .line 157
    aget-object v4, v3, v2

    .line 158
    .line 159
    new-instance v5, Lik5;

    .line 160
    .line 161
    invoke-interface {v4}, Lim4;->value()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-interface {v4}, Lim4;->name()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-direct {v5, v6, v7}, Lik5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    invoke-interface {v4}, Lim4;->names()[Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    array-length v6, v5

    .line 180
    const/4 v7, 0x0

    .line 181
    :goto_5
    if-ge v7, v6, :cond_8

    .line 182
    .line 183
    aget-object v8, v5, v7

    .line 184
    .line 185
    new-instance v9, Lik5;

    .line 186
    .line 187
    invoke-interface {v4}, Lim4;->value()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-direct {v9, v10, v8}, Lik5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    add-int/lit8 v7, v7, 0x1

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_9
    return-object v0
.end method

.method public final N(Lhd;)Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lym4;

    .line 2
    .line 3
    iget-object p1, p1, Lhd;->V:Lee;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lee;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lym4;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Lym4;->value()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final O(Lv77;Lhd;Lgc8;)Lvn7;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lyg4;->g0(Ls65;Ljb9;)Lvn7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final P(Lod;)Lfk5;
    .locals 4

    .line 1
    const-class p0, Lan4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lan4;

    .line 8
    .line 9
    if-eqz p0, :cond_6

    .line 10
    .line 11
    invoke-interface {p0}, Lan4;->enabled()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {p0}, Lan4;->prefix()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p0}, Lan4;->suffix()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    move v2, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v2, v0

    .line 39
    :goto_0
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    move v0, v1

    .line 48
    :cond_2
    if-eqz v2, :cond_4

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    new-instance v0, Lak5;

    .line 53
    .line 54
    invoke-direct {v0, p1, p0}, Lak5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    new-instance p0, Lbk5;

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lbk5;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_4
    if-eqz v0, :cond_5

    .line 65
    .line 66
    new-instance p1, Lck5;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lck5;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_5
    sget-object p0, Lfk5;->a:Lek5;

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method public final Q(Ljb9;)[Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Lln4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lln4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Lln4;->value()[Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final R(Lod;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const-class p0, Lsi4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lsi4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Lsi4;->enabled()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final S(Lpd;)Z
    .locals 0

    .line 1
    const-class p0, Lsi4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->t0(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final T(Lod;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const-class p0, Lti4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lti4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Lti4;->enabled()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final U(Lod;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const-class p0, Luk4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Luk4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Luk4;->value()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final V(Lod;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const-class p0, Lhn4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhn4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Lhn4;->value()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final W(Lpd;)Z
    .locals 0

    .line 1
    const-class p0, Lhn4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhn4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lhn4;->value()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final X(Lod;)Z
    .locals 0

    .line 1
    const-class p0, Llk4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Llk4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Llk4;->value()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final Y(Lod;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class p0, Lnl4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnl4;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Lnl4;->isRequired()Lfu5;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lfu5;->b:Lfu5;

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lfu5;->a()Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-interface {p0}, Lnl4;->required()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final Z(Ljava/lang/annotation/Annotation;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lyg4;->a:Lwp4;

    .line 10
    .line 11
    iget-object v1, p0, Lwp4;->a:Lb76;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lb76;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Boolean;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-class v1, Lzg4;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    move p1, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Lwp4;->a:Lb76;

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1, v1}, Lb76;->g(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-object v1, p1

    .line 43
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final a(Ls65;Lhd;Ljava/util/ArrayList;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-class v3, Lwi4;

    .line 8
    .line 9
    iget-object v4, v1, Lhd;->V:Lee;

    .line 10
    .line 11
    invoke-interface {v4, v3}, Lee;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, v1, Lhd;->N:Ljava/lang/Class;

    .line 16
    .line 17
    check-cast v3, Lwi4;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :cond_0
    invoke-interface {v3}, Lwi4;->prepend()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-interface {v3}, Lwi4;->attrs()[Lui4;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    array-length v7, v6

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    move v10, v8

    .line 35
    :goto_0
    if-ge v10, v7, :cond_8

    .line 36
    .line 37
    if-nez v9, :cond_1

    .line 38
    .line 39
    const-class v9, Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {v0, v9}, Ls65;->c(Ljava/lang/Class;)Lgc8;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    :cond_1
    aget-object v11, v6, v10

    .line 46
    .line 47
    invoke-interface {v11}, Lui4;->required()Z

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    if-eqz v12, :cond_2

    .line 52
    .line 53
    sget-object v12, Lx86;->n:Lx86;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sget-object v12, Lx86;->p:Lx86;

    .line 57
    .line 58
    :goto_1
    invoke-interface {v11}, Lui4;->value()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    invoke-interface {v11}, Lui4;->propName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    invoke-interface {v11}, Lui4;->propNamespace()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v15

    .line 70
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v16

    .line 74
    if-eqz v16, :cond_3

    .line 75
    .line 76
    sget-object v14, Lz86;->d:Lz86;

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    if-eqz v15, :cond_5

    .line 80
    .line 81
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v16

    .line 85
    if-eqz v16, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-static {v14, v15}, Lz86;->b(Ljava/lang/String;Ljava/lang/String;)Lz86;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    :goto_2
    invoke-static {v14}, Lz86;->a(Ljava/lang/String;)Lz86;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    :goto_3
    iget-object v15, v14, Lz86;->a:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v15

    .line 103
    if-eqz v15, :cond_6

    .line 104
    .line 105
    invoke-static {v13}, Lz86;->a(Ljava/lang/String;)Lz86;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    :cond_6
    new-instance v15, Lhn8;

    .line 110
    .line 111
    invoke-direct {v15, v1, v4, v13, v9}, Lhn8;-><init>(Lhd;Ljava/lang/Class;Ljava/lang/String;Lgc8;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v11}, Lui4;->include()Lpk4;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-static {v0, v15, v14, v12, v11}, Leg7;->t(Ls65;Lhn8;Lz86;Lx86;Lpk4;)Leg7;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    iget-object v12, v1, Lhd;->V:Lee;

    .line 123
    .line 124
    new-instance v14, Lz70;

    .line 125
    .line 126
    invoke-direct {v14, v13, v11, v12, v9}, Lz70;-><init>(Ljava/lang/String;Leg7;Lee;Lgc8;)V

    .line 127
    .line 128
    .line 129
    if-eqz v5, :cond_7

    .line 130
    .line 131
    invoke-interface {v2, v10, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    invoke-interface {v3}, Lwi4;->props()[Lvi4;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    array-length v3, v2

    .line 146
    if-lez v3, :cond_d

    .line 147
    .line 148
    aget-object v2, v2, v8

    .line 149
    .line 150
    invoke-interface {v2}, Lvi4;->required()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_9

    .line 155
    .line 156
    sget-object v3, Lx86;->n:Lx86;

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    sget-object v3, Lx86;->p:Lx86;

    .line 160
    .line 161
    :goto_5
    invoke-interface {v2}, Lvi4;->name()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-interface {v2}, Lvi4;->namespace()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-nez v7, :cond_c

    .line 174
    .line 175
    if-eqz v6, :cond_b

    .line 176
    .line 177
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-eqz v7, :cond_a

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_a
    invoke-static {v5, v6}, Lz86;->b(Ljava/lang/String;Ljava/lang/String;)Lz86;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    goto :goto_7

    .line 189
    :cond_b
    :goto_6
    invoke-static {v5}, Lz86;->a(Ljava/lang/String;)Lz86;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    goto :goto_7

    .line 194
    :cond_c
    sget-object v5, Lz86;->d:Lz86;

    .line 195
    .line 196
    :goto_7
    invoke-interface {v2}, Lvi4;->type()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {v0, v6}, Ls65;->c(Ljava/lang/Class;)Lgc8;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    new-instance v7, Lhn8;

    .line 205
    .line 206
    iget-object v8, v5, Lz86;->a:Ljava/lang/String;

    .line 207
    .line 208
    invoke-direct {v7, v1, v4, v8, v6}, Lhn8;-><init>(Lhd;Ljava/lang/Class;Ljava/lang/String;Lgc8;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v2}, Lvi4;->include()Lpk4;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v0, v7, v5, v3, v1}, Leg7;->t(Ls65;Lhn8;Lz86;Lx86;Lpk4;)Leg7;

    .line 216
    .line 217
    .line 218
    invoke-interface {v2}, Lvi4;->value()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0}, Ls65;->g()V

    .line 223
    .line 224
    .line 225
    sget-object v2, Lu65;->G:Lu65;

    .line 226
    .line 227
    invoke-virtual {v0, v2}, Ls65;->i(Lu65;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    invoke-static {v1, v0}, Lu81;->f(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Lz70;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    const-string v0, "Should not be called on this type"

    .line 241
    .line 242
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :cond_d
    :goto_8
    return-void
.end method

.method public final a0(Lhd;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const-class p0, Lok4;

    .line 2
    .line 3
    iget-object p1, p1, Lhd;->V:Lee;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lee;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lok4;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Lok4;->value()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final b(Lhd;Lnn8;)Lnn8;
    .locals 12

    .line 1
    const-class p0, Lzi4;

    .line 2
    .line 3
    iget-object p1, p1, Lhd;->V:Lee;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lee;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lzi4;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-object p2

    .line 14
    :cond_0
    iget-object p1, p2, Lnn8;->a:Lyi4;

    .line 15
    .line 16
    iget-object v0, p2, Lnn8;->e:Lyi4;

    .line 17
    .line 18
    iget-object v1, p2, Lnn8;->d:Lyi4;

    .line 19
    .line 20
    iget-object v2, p2, Lnn8;->c:Lyi4;

    .line 21
    .line 22
    iget-object v3, p2, Lnn8;->b:Lyi4;

    .line 23
    .line 24
    invoke-interface {p0}, Lzi4;->getterVisibility()Lyi4;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sget-object v5, Lyi4;->d:Lyi4;

    .line 29
    .line 30
    if-ne v4, v5, :cond_1

    .line 31
    .line 32
    move-object v7, p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v7, v4

    .line 35
    :goto_0
    invoke-interface {p0}, Lzi4;->isGetterVisibility()Lyi4;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v5, :cond_2

    .line 40
    .line 41
    move-object v8, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v8, p1

    .line 44
    :goto_1
    invoke-interface {p0}, Lzi4;->setterVisibility()Lyi4;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v5, :cond_3

    .line 49
    .line 50
    move-object v9, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move-object v9, p1

    .line 53
    :goto_2
    invoke-interface {p0}, Lzi4;->creatorVisibility()Lyi4;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v5, :cond_4

    .line 58
    .line 59
    move-object v10, v1

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    move-object v10, p1

    .line 62
    :goto_3
    invoke-interface {p0}, Lzi4;->fieldVisibility()Lyi4;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-ne p0, v5, :cond_5

    .line 67
    .line 68
    move-object v11, v0

    .line 69
    goto :goto_4

    .line 70
    :cond_5
    move-object v11, p0

    .line 71
    :goto_4
    iget-object p0, p2, Lnn8;->a:Lyi4;

    .line 72
    .line 73
    if-ne v7, p0, :cond_6

    .line 74
    .line 75
    if-ne v8, v3, :cond_6

    .line 76
    .line 77
    if-ne v9, v2, :cond_6

    .line 78
    .line 79
    if-ne v10, v1, :cond_6

    .line 80
    .line 81
    if-ne v11, v0, :cond_6

    .line 82
    .line 83
    return-object p2

    .line 84
    :cond_6
    new-instance v6, Lnn8;

    .line 85
    .line 86
    invoke-direct/range {v6 .. v11}, Lnn8;-><init>(Lyi4;Lyi4;Lyi4;Lyi4;Lyi4;)V

    .line 87
    .line 88
    .line 89
    return-object v6
.end method

.method public final c(Ljb9;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-class p0, Lbm4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbm4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lbm4;->contentUsing()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-class p1, Lcm4;

    .line 16
    .line 17
    if-eq p0, p1, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final c0(Lod;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const-class p0, Lrm4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->t0(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final d(Lv77;Lud;)Lej4;
    .locals 1

    .line 1
    const-class v0, Lfj4;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lfj4;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p2}, Lfj4;->mode()Lej4;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    sget-object v0, Lej4;->a:Lej4;

    .line 18
    .line 19
    if-eq p2, v0, :cond_1

    .line 20
    .line 21
    return-object p2

    .line 22
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lyg4;->b:Z

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    sget-object p0, Lu65;->t:Lu65;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ls65;->i(Lu65;)Z

    .line 29
    .line 30
    .line 31
    :cond_2
    return-object p2
.end method

.method public final d0(Ls65;Ljb9;Lgc8;)Lgc8;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-object v0, v0, Ls65;->b:Len0;

    .line 6
    .line 7
    iget-object v0, v0, Len0;->a:Llc8;

    .line 8
    .line 9
    const-class v2, Lbm4;

    .line 10
    .line 11
    move-object/from16 v3, p2

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lbm4;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    :cond_0
    :goto_0
    move-object v5, v4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {v2}, Lbm4;->as()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    invoke-static {v5}, Lu81;->o(Ljava/lang/Class;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 38
    if-eqz v5, :cond_7

    .line 39
    .line 40
    invoke-virtual {v1, v5}, Lgc8;->w0(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_3

    .line 45
    .line 46
    invoke-virtual {v1}, Lgc8;->G0()Lgc8;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    iget-object v7, v1, Lgc8;->f:Ljava/lang/Class;

    .line 52
    .line 53
    :try_start_0
    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v5}, Llc8;->f(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_5

    .line 72
    .line 73
    invoke-virtual {v0, v1, v5, v6}, Llc8;->g(Lgc8;Ljava/lang/Class;Z)Lgc8;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_3

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    invoke-static {v7, v5}, Lyg4;->h0(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_6

    .line 85
    .line 86
    invoke-virtual {v1}, Lgc8;->G0()Lgc8;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    goto :goto_3

    .line 91
    :cond_6
    const-string v0, "Cannot refine serialization type %s into %s; types not related"

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v2, Lyk4;

    .line 106
    .line 107
    invoke-direct {v2, v4, v0}, Lyk4;-><init>(Lpw8;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v3}, Ljb9;->B()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    filled-new-array {v1, v2, v3, v5}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string v2, "Failed to widen type %s with annotation (value %s), from \'%s\': %s"

    .line 128
    .line 129
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Lyk4;

    .line 134
    .line 135
    invoke-direct {v2, v4, v1, v0}, Lyk4;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw v2

    .line 139
    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    instance-of v5, v1, Lq65;

    .line 143
    .line 144
    if-eqz v5, :cond_10

    .line 145
    .line 146
    move-object v5, v1

    .line 147
    check-cast v5, Lq65;

    .line 148
    .line 149
    iget-object v7, v5, Lq65;->G:Lgc8;

    .line 150
    .line 151
    if-nez v2, :cond_9

    .line 152
    .line 153
    :cond_8
    :goto_4
    move-object v8, v4

    .line 154
    goto :goto_5

    .line 155
    :cond_9
    invoke-interface {v2}, Lbm4;->keyAs()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    if-eqz v8, :cond_8

    .line 160
    .line 161
    invoke-static {v8}, Lu81;->o(Ljava/lang/Class;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_a

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_a
    :goto_5
    if-eqz v8, :cond_10

    .line 169
    .line 170
    invoke-virtual {v7, v8}, Lgc8;->w0(Ljava/lang/Class;)Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-eqz v9, :cond_b

    .line 175
    .line 176
    invoke-virtual {v7}, Lgc8;->G0()Lgc8;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    :goto_6
    move-object v13, v1

    .line 181
    goto :goto_7

    .line 182
    :cond_b
    iget-object v9, v7, Lgc8;->f:Ljava/lang/Class;

    .line 183
    .line 184
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    if-eqz v10, :cond_c

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {v7, v8}, Llc8;->f(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    goto :goto_6

    .line 198
    :cond_c
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-eqz v10, :cond_d

    .line 203
    .line 204
    invoke-virtual {v0, v7, v8, v6}, Llc8;->g(Lgc8;Ljava/lang/Class;Z)Lgc8;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    goto :goto_6

    .line 209
    :catch_1
    move-exception v0

    .line 210
    goto :goto_8

    .line 211
    :cond_d
    invoke-static {v9, v8}, Lyg4;->h0(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-eqz v9, :cond_f

    .line 216
    .line 217
    invoke-virtual {v7}, Lgc8;->G0()Lgc8;

    .line 218
    .line 219
    .line 220
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    goto :goto_6

    .line 222
    :goto_7
    if-ne v13, v7, :cond_e

    .line 223
    .line 224
    move-object v1, v5

    .line 225
    goto :goto_9

    .line 226
    :cond_e
    new-instance v8, Lq65;

    .line 227
    .line 228
    iget-object v9, v5, Lgc8;->f:Ljava/lang/Class;

    .line 229
    .line 230
    iget-object v10, v5, Lgc8;->x:Ljc8;

    .line 231
    .line 232
    iget-object v11, v5, Lgc8;->r:Lgc8;

    .line 233
    .line 234
    iget-object v12, v5, Lgc8;->t:[Lgc8;

    .line 235
    .line 236
    iget-object v14, v5, Lq65;->H:Lgc8;

    .line 237
    .line 238
    iget-object v15, v5, Lgc8;->n:Ljava/lang/Object;

    .line 239
    .line 240
    iget-object v1, v5, Lgc8;->p:Ljava/lang/Object;

    .line 241
    .line 242
    iget-boolean v5, v5, Lgc8;->q:Z

    .line 243
    .line 244
    move-object/from16 v16, v1

    .line 245
    .line 246
    move/from16 v17, v5

    .line 247
    .line 248
    invoke-direct/range {v8 .. v17}, Lq65;-><init>(Ljava/lang/Class;Ljc8;Lgc8;[Lgc8;Lgc8;Lgc8;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 249
    .line 250
    .line 251
    move-object v1, v8

    .line 252
    goto :goto_9

    .line 253
    :cond_f
    :try_start_2
    const-string v0, "Cannot refine serialization key type %s into %s; types not related"

    .line 254
    .line 255
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    filled-new-array {v7, v2}, [Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    new-instance v2, Lyk4;

    .line 268
    .line 269
    invoke-direct {v2, v4, v0}, Lyk4;-><init>(Lpw8;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    :goto_8
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v3}, Ljb9;->B()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    filled-new-array {v1, v2, v3, v5}, [Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v2, "Failed to widen key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    .line 290
    .line 291
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    new-instance v2, Lyk4;

    .line 296
    .line 297
    invoke-direct {v2, v4, v1, v0}, Lyk4;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    throw v2

    .line 301
    :cond_10
    :goto_9
    invoke-virtual {v1}, Lgc8;->o0()Lgc8;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    if-eqz v5, :cond_18

    .line 306
    .line 307
    if-nez v2, :cond_12

    .line 308
    .line 309
    :cond_11
    :goto_a
    move-object v2, v4

    .line 310
    goto :goto_b

    .line 311
    :cond_12
    invoke-interface {v2}, Lbm4;->contentAs()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    if-eqz v2, :cond_11

    .line 316
    .line 317
    invoke-static {v2}, Lu81;->o(Ljava/lang/Class;)Z

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    if-eqz v7, :cond_13

    .line 322
    .line 323
    goto :goto_a

    .line 324
    :cond_13
    :goto_b
    if-eqz v2, :cond_18

    .line 325
    .line 326
    invoke-virtual {v5, v2}, Lgc8;->w0(Ljava/lang/Class;)Z

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-eqz v7, :cond_14

    .line 331
    .line 332
    invoke-virtual {v5}, Lgc8;->G0()Lgc8;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    goto :goto_c

    .line 337
    :cond_14
    iget-object v7, v5, Lgc8;->f:Ljava/lang/Class;

    .line 338
    .line 339
    :try_start_3
    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    if-eqz v8, :cond_15

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-static {v5, v2}, Llc8;->f(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    goto :goto_c

    .line 353
    :cond_15
    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    if-eqz v8, :cond_16

    .line 358
    .line 359
    invoke-virtual {v0, v5, v2, v6}, Llc8;->g(Lgc8;Ljava/lang/Class;Z)Lgc8;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    goto :goto_c

    .line 364
    :catch_2
    move-exception v0

    .line 365
    goto :goto_d

    .line 366
    :cond_16
    invoke-static {v7, v2}, Lyg4;->h0(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_17

    .line 371
    .line 372
    invoke-virtual {v5}, Lgc8;->G0()Lgc8;

    .line 373
    .line 374
    .line 375
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 376
    :goto_c
    invoke-virtual {v1, v0}, Lgc8;->D0(Lgc8;)Lgc8;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    return-object v0

    .line 381
    :cond_17
    :try_start_4
    const-string v0, "Cannot refine serialization content type %s into %s; types not related"

    .line 382
    .line 383
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    new-instance v5, Lyk4;

    .line 396
    .line 397
    invoke-direct {v5, v4, v0}, Lyk4;-><init>(Lpw8;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v5
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 401
    :goto_d
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v3}, Ljb9;->B()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    filled-new-array {v1, v2, v3, v5}, [Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    const-string v2, "Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    .line 418
    .line 419
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    new-instance v2, Lyk4;

    .line 424
    .line 425
    invoke-direct {v2, v4, v1, v0}, Lyk4;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    .line 427
    .line 428
    throw v2

    .line 429
    :cond_18
    return-object v1
.end method

.method public final e(Lhd;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-class p0, Lmx2;

    .line 2
    .line 3
    iget-object p1, p1, Lhd;->V:Lee;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lee;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lmx2;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Lmx2;->value()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final e0(Lpd;Lpd;)Lpd;
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Lpd;->z0(I)Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p2, p0}, Lpd;->z0(I)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-class v1, Ljava/lang/String;

    .line 31
    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    if-eq p0, v1, :cond_3

    .line 35
    .line 36
    :goto_0
    return-object p1

    .line 37
    :cond_2
    if-ne p0, v1, :cond_3

    .line 38
    .line 39
    :goto_1
    return-object p2

    .line 40
    :cond_3
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public final f(Lhd;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lhd;->q0()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lld;

    .line 25
    .line 26
    const-class v1, Lnl4;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lnl4;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Lnl4;->value()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v0, v0, Lld;->O:Ljava/lang/reflect/Field;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    array-length p1, p2

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_1
    if-ge v0, p1, :cond_3

    .line 55
    .line 56
    aget-object v1, p2, v0

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    aput-object v1, p3, v0

    .line 71
    .line 72
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    return-object p3
.end method

.method public final g(Ljb9;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-class p0, Lxj4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxj4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lxj4;->value()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final h(Ljb9;)Lbk4;
    .locals 12

    .line 1
    const-class p0, Lck4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lck4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lbk4;

    .line 14
    .line 15
    invoke-interface {p0}, Lck4;->pattern()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p0}, Lck4;->shape()Lak4;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {p0}, Lck4;->locale()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {p0}, Lck4;->timezone()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {p0}, Lck4;->with()[Lyj4;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0}, Lck4;->without()[Lyj4;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    array-length v6, p1

    .line 40
    const/4 v7, 0x0

    .line 41
    move v8, v7

    .line 42
    move v9, v8

    .line 43
    :goto_0
    const/4 v10, 0x1

    .line 44
    if-ge v8, v6, :cond_1

    .line 45
    .line 46
    aget-object v11, p1, v8

    .line 47
    .line 48
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    shl-int/2addr v10, v11

    .line 53
    or-int/2addr v9, v10

    .line 54
    add-int/lit8 v8, v8, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    array-length p1, v5

    .line 58
    move v6, v7

    .line 59
    :goto_1
    if-ge v7, p1, :cond_2

    .line 60
    .line 61
    aget-object v8, v5, v7

    .line 62
    .line 63
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    shl-int v8, v10, v8

    .line 68
    .line 69
    or-int/2addr v6, v8

    .line 70
    add-int/lit8 v7, v7, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    new-instance v5, Lzj4;

    .line 74
    .line 75
    invoke-direct {v5, v9, v6}, Lzj4;-><init>(II)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p0}, Lck4;->lenient()Lfu5;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lfu5;->a()Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-direct/range {v0 .. v6}, Lbk4;-><init>(Ljava/lang/String;Lak4;Ljava/lang/String;Ljava/lang/String;Lzj4;Ljava/lang/Boolean;)V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method

.method public final i(Lod;)Lbh4;
    .locals 4

    .line 1
    const-class p0, Lch4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lch4;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-interface {p0}, Lch4;->value()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p0}, Lch4;->useInput()Lfu5;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lfu5;->a()Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {p0}, Lch4;->optional()Lfu5;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lfu5;->a()Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v3, ""

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v0, v1

    .line 43
    :goto_0
    if-nez v0, :cond_2

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    sget-object p0, Lbh4;->d:Lbh4;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    new-instance v1, Lbh4;

    .line 53
    .line 54
    invoke-direct {v1, v0, v2, p0}, Lbh4;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 55
    .line 56
    .line 57
    move-object p0, v1

    .line 58
    :goto_1
    iget-object v0, p0, Lbh4;->a:Ljava/lang/Object;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    instance-of v1, p1, Lpd;

    .line 64
    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1}, Ljb9;->C()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    check-cast p1, Lpd;

    .line 77
    .line 78
    iget-object v1, p1, Lpd;->P:Ljava/lang/reflect/Method;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterCount()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_5

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1, v1}, Lpd;->z0(I)Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    :goto_3
    return-object p0

    .line 111
    :cond_6
    new-instance v0, Lbh4;

    .line 112
    .line 113
    iget-object v1, p0, Lbh4;->b:Ljava/lang/Boolean;

    .line 114
    .line 115
    iget-object p0, p0, Lbh4;->c:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-direct {v0, p1, v1, p0}, Lbh4;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method public final j(Lod;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lyg4;->i(Lod;)Lbh4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lbh4;->a:Ljava/lang/Object;

    .line 10
    .line 11
    return-object p0
.end method

.method public final k(Ljb9;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-class p0, Lbm4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbm4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lbm4;->keyUsing()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-class p1, Lcm4;

    .line 16
    .line 17
    if-eq p0, p1, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final l(Lod;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const-class p0, Lzk4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzk4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Lzk4;->value()Lfu5;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lfu5;->a()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final m(Lod;)Lz86;
    .locals 2

    .line 1
    const-class p0, Lgm4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgm4;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Lgm4;->value()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p0}, Lz86;->a(Ljava/lang/String;)Lz86;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    const-class v0, Lnl4;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lnl4;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-interface {v0}, Lnl4;->namespace()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v1, p0

    .line 54
    :goto_1
    invoke-interface {v0}, Lnl4;->value()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0, v1}, Lz86;->b(Ljava/lang/String;Ljava/lang/String;)Lz86;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_3
    if-nez p0, :cond_5

    .line 64
    .line 65
    sget-object p0, Lyg4;->d:[Ljava/lang/Class;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lod;->u0([Ljava/lang/Class;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    return-object v1

    .line 75
    :cond_5
    :goto_2
    sget-object p0, Lz86;->d:Lz86;

    .line 76
    .line 77
    return-object p0
.end method

.method public final n(Lod;)Lz86;
    .locals 2

    .line 1
    const-class p0, Lhk4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhk4;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Lhk4;->value()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {p0}, Lz86;->a(Ljava/lang/String;)Lz86;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    const-class v0, Lnl4;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lnl4;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-interface {v0}, Lnl4;->namespace()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v1, p0

    .line 54
    :goto_1
    invoke-interface {v0}, Lnl4;->value()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0, v1}, Lz86;->b(Ljava/lang/String;Ljava/lang/String;)Lz86;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_3
    if-nez p0, :cond_5

    .line 64
    .line 65
    sget-object p0, Lyg4;->c:[Ljava/lang/Class;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lod;->u0([Ljava/lang/Class;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    return-object v1

    .line 75
    :cond_5
    :goto_2
    sget-object p0, Lz86;->d:Lz86;

    .line 76
    .line 77
    return-object p0
.end method

.method public final o(Lhd;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-class p0, Lbl4;

    .line 2
    .line 3
    iget-object p1, p1, Lhd;->V:Lee;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lee;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lbl4;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Lbl4;->value()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final p(Lod;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-class p0, Lbm4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbm4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lbm4;->nullsUsing()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-class p1, Lcm4;

    .line 16
    .line 17
    if-eq p0, p1, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final q(Ljb9;)Lkr5;
    .locals 6

    .line 1
    const-class p0, Ljk4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljk4;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljk4;->generator()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-class v0, Ljr5;

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljk4;->property()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lz86;->a(Ljava/lang/String;)Lz86;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v0, Lkr5;

    .line 29
    .line 30
    invoke-interface {p0}, Ljk4;->scope()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {p0}, Ljk4;->generator()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {p0}, Ljk4;->resolver()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-direct/range {v0 .. v5}, Lkr5;-><init>(Lz86;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public final r(Ljb9;Lkr5;)Lkr5;
    .locals 6

    .line 1
    const-class p0, Lkk4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkk4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-object p2

    .line 12
    :cond_0
    if-nez p2, :cond_1

    .line 13
    .line 14
    sget-object p2, Lkr5;->f:Lkr5;

    .line 15
    .line 16
    :cond_1
    invoke-interface {p0}, Lkk4;->alwaysAsId()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    iget-boolean p0, p2, Lkr5;->e:Z

    .line 21
    .line 22
    if-ne p0, v4, :cond_2

    .line 23
    .line 24
    return-object p2

    .line 25
    :cond_2
    new-instance v0, Lkr5;

    .line 26
    .line 27
    iget-object v1, p2, Lkr5;->a:Lz86;

    .line 28
    .line 29
    iget-object v2, p2, Lkr5;->d:Ljava/lang/Class;

    .line 30
    .line 31
    iget-object v3, p2, Lkr5;->b:Ljava/lang/Class;

    .line 32
    .line 33
    iget-object v5, p2, Lkr5;->c:Ljava/lang/Class;

    .line 34
    .line 35
    invoke-direct/range {v0 .. v5}, Lkr5;-><init>(Lz86;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final s(Ljb9;)Lml4;
    .locals 0

    .line 1
    const-class p0, Lnl4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnl4;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lnl4;->access()Lml4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final t(Ls65;Lod;Lgc8;)Lvn7;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lgc8;->o0()Lgc8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Lyg4;->g0(Ls65;Ljb9;)Lvn7;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "Must call method with a container or reference type (got "

    .line 13
    .line 14
    const-string p1, ")"

    .line 15
    .line 16
    invoke-static {p3, p1, p0}, Ld6;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final v(Lod;)Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lnl4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnl4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0}, Lnl4;->defaultValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 p0, 0x0

    .line 23
    :cond_1
    return-object p0
.end method

.method public final w(Lod;)Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lol4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lod;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lol4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Lol4;->value()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final x(Ljb9;)Lmk4;
    .locals 6

    .line 1
    const-class p0, Lnk4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnk4;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lmk4;->f:Lmk4;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p1, Lmk4;->f:Lmk4;

    .line 15
    .line 16
    invoke-interface {p0}, Lnk4;->value()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    array-length v0, p1

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .line 28
    .line 29
    array-length v1, p1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 31
    .line 32
    .line 33
    array-length v1, p1

    .line 34
    move v2, v5

    .line 35
    :goto_0
    if-ge v2, v1, :cond_2

    .line 36
    .line 37
    aget-object v3, p1, v2

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    move-object v1, v0

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    :goto_2
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_3
    invoke-interface {p0}, Lnk4;->ignoreUnknown()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-interface {p0}, Lnk4;->allowGetters()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-interface {p0}, Lnk4;->allowSetters()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    sget-object p0, Lmk4;->f:Lmk4;

    .line 63
    .line 64
    iget-boolean p1, p0, Lmk4;->b:Z

    .line 65
    .line 66
    if-ne v2, p1, :cond_5

    .line 67
    .line 68
    iget-boolean p1, p0, Lmk4;->c:Z

    .line 69
    .line 70
    if-ne v3, p1, :cond_5

    .line 71
    .line 72
    iget-boolean p1, p0, Lmk4;->d:Z

    .line 73
    .line 74
    if-ne v4, p1, :cond_5

    .line 75
    .line 76
    iget-boolean p1, p0, Lmk4;->e:Z

    .line 77
    .line 78
    if-nez p1, :cond_5

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    :cond_4
    return-object p0

    .line 89
    :cond_5
    new-instance v0, Lmk4;

    .line 90
    .line 91
    invoke-direct/range {v0 .. v5}, Lmk4;-><init>(Ljava/util/Set;ZZZZ)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method public final y(Ljb9;)Lmk4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lyg4;->x(Ljb9;)Lmk4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final z(Ljb9;)Lqk4;
    .locals 6

    .line 1
    const-class p0, Lrk4;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lrk4;

    .line 8
    .line 9
    sget-object v0, Lpk4;->e:Lpk4;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lqk4;->e:Lqk4;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v1, Lqk4;->e:Lqk4;

    .line 17
    .line 18
    invoke-interface {p0}, Lrk4;->value()Lpk4;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {p0}, Lrk4;->content()Lpk4;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-ne v2, v0, :cond_1

    .line 27
    .line 28
    if-ne v3, v0, :cond_1

    .line 29
    .line 30
    move-object p0, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {p0}, Lrk4;->valueFilter()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v4, 0x0

    .line 37
    const-class v5, Ljava/lang/Void;

    .line 38
    .line 39
    if-ne v1, v5, :cond_2

    .line 40
    .line 41
    move-object v1, v4

    .line 42
    :cond_2
    invoke-interface {p0}, Lrk4;->contentFilter()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-ne p0, v5, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move-object v4, p0

    .line 50
    :goto_0
    new-instance p0, Lqk4;

    .line 51
    .line 52
    invoke-direct {p0, v2, v3, v1, v4}, Lqk4;-><init>(Lpk4;Lpk4;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object v1, p0, Lqk4;->a:Lpk4;

    .line 56
    .line 57
    if-ne v1, v0, :cond_8

    .line 58
    .line 59
    const-class v0, Lbm4;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljb9;->z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lbm4;

    .line 66
    .line 67
    if-eqz p1, :cond_8

    .line 68
    .line 69
    invoke-interface {p1}, Lbm4;->include()Lzl4;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_7

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    if-eq p1, v0, :cond_6

    .line 81
    .line 82
    const/4 v0, 0x2

    .line 83
    if-eq p1, v0, :cond_5

    .line 84
    .line 85
    const/4 v0, 0x3

    .line 86
    if-eq p1, v0, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    sget-object p1, Lpk4;->c:Lpk4;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lqk4;->b(Lpk4;)Lqk4;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_5
    sget-object p1, Lpk4;->d:Lpk4;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lqk4;->b(Lpk4;)Lqk4;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_6
    sget-object p1, Lpk4;->b:Lpk4;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lqk4;->b(Lpk4;)Lqk4;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_7
    sget-object p1, Lpk4;->a:Lpk4;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lqk4;->b(Lpk4;)Lqk4;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    :cond_8
    :goto_2
    return-object p0
.end method
