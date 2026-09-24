.class public final Lh82;
.super Lq1;


# instance fields
.field public a:Lf1;

.field public b:Lt0;

.field public c:Lq1;

.field public d:I

.field public e:Lq1;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lh82;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lv1;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lh82;->f:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v1}, Lh82;->y(Lv1;I)Lq1;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Lf1;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Lf1;

    .line 17
    .line 18
    iput-object v2, p0, Lh82;->a:Lf1;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lh82;->y(Lv1;I)Lq1;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move v3, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v3, v1

    .line 27
    :goto_0
    instance-of v4, v2, Lt0;

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    check-cast v2, Lt0;

    .line 32
    .line 33
    iput-object v2, p0, Lh82;->b:Lt0;

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    invoke-static {p1, v3}, Lh82;->y(Lv1;I)Lq1;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_1
    instance-of v4, v2, Lq2;

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    iput-object v2, p0, Lh82;->c:Lq1;

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    invoke-static {p1, v3}, Lh82;->y(Lv1;I)Lq1;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_2
    invoke-virtual {p1}, Lv1;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/2addr v3, v0

    .line 58
    const/4 v4, 0x0

    .line 59
    if-ne p1, v3, :cond_a

    .line 60
    .line 61
    instance-of p1, v2, Lq2;

    .line 62
    .line 63
    if-eqz p1, :cond_9

    .line 64
    .line 65
    check-cast v2, Lq2;

    .line 66
    .line 67
    iget p1, v2, Lq2;->c:I

    .line 68
    .line 69
    if-ltz p1, :cond_8

    .line 70
    .line 71
    const/4 v3, 0x2

    .line 72
    if-gt p1, v3, :cond_8

    .line 73
    .line 74
    iput p1, p0, Lh82;->d:I

    .line 75
    .line 76
    invoke-static {v2}, Lvm4;->e(Lq2;)V

    .line 77
    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    if-eq p1, v0, :cond_4

    .line 82
    .line 83
    if-ne p1, v3, :cond_3

    .line 84
    .line 85
    sget-object p1, Lu;->b:Lr;

    .line 86
    .line 87
    invoke-virtual {p1, v2, v1}, Lol1;->r(Lq2;Z)Lq1;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lu;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    iget p0, v2, Lq2;->b:I

    .line 95
    .line 96
    invoke-static {p0, p1}, Lvm4;->q(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string p1, "invalid tag: "

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v4

    .line 110
    :cond_4
    sget-object p1, Lj1;->b:Lk0;

    .line 111
    .line 112
    invoke-virtual {p1, v2, v1}, Lol1;->r(Lq2;Z)Lq1;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lj1;

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {v2}, Lq2;->y()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    iget-object p1, v2, Lq2;->d:Lb0;

    .line 126
    .line 127
    instance-of v0, p1, Ly0;

    .line 128
    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    check-cast p1, Ly0;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    invoke-interface {p1}, Lb0;->d()Lq1;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :goto_1
    invoke-virtual {p1}, Ly0;->d()Lq1;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    :goto_2
    iput-object p1, p0, Lh82;->e:Lq1;

    .line 143
    .line 144
    return-void

    .line 145
    :cond_7
    const-string p0, "object implicit - explicit expected."

    .line 146
    .line 147
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v4

    .line 151
    :cond_8
    const-string p0, "invalid encoding value: "

    .line 152
    .line 153
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v4

    .line 161
    :cond_9
    const-string p0, "No tagged object found in sequence. Structure doesn\'t seem to be of type External"

    .line 162
    .line 163
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v4

    .line 167
    :cond_a
    const-string p0, "input sequence too large"

    .line 168
    .line 169
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v4
.end method

.method public static y(Lv1;I)Lq1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv1;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-le v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lv1;->C(I)Lb0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Lb0;->d()Lq1;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "too few objects in input sequence"

    .line 17
    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method


# virtual methods
.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lh82;->a:Lf1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lf1;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    iget-object v2, p0, Lh82;->b:Lt0;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    move v2, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v2}, Lt0;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :goto_1
    xor-int/2addr v0, v2

    .line 23
    iget-object v2, p0, Lh82;->c:Lq1;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {v2}, Lq1;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :goto_2
    xor-int/2addr v0, v1

    .line 33
    iget v1, p0, Lh82;->d:I

    .line 34
    .line 35
    xor-int/2addr v0, v1

    .line 36
    iget-object p0, p0, Lh82;->e:Lq1;

    .line 37
    .line 38
    invoke-virtual {p0}, Lq1;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    xor-int/2addr p0, v0

    .line 43
    return p0
.end method

.method public final k(Lq1;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    instance-of v0, p1, Lh82;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_4

    .line 10
    :cond_1
    check-cast p1, Lh82;

    .line 11
    .line 12
    iget-object v0, p0, Lh82;->a:Lf1;

    .line 13
    .line 14
    iget-object v2, p1, Lh82;->a:Lf1;

    .line 15
    .line 16
    if-eq v0, v2, :cond_3

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lq1;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v1

    .line 30
    :cond_3
    :goto_0
    iget-object v0, p0, Lh82;->b:Lt0;

    .line 31
    .line 32
    iget-object v2, p1, Lh82;->b:Lt0;

    .line 33
    .line 34
    if-eq v0, v2, :cond_5

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lq1;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    return v1

    .line 48
    :cond_5
    :goto_1
    iget-object v0, p0, Lh82;->c:Lq1;

    .line 49
    .line 50
    iget-object v2, p1, Lh82;->c:Lq1;

    .line 51
    .line 52
    if-eq v0, v2, :cond_7

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    if-eqz v2, :cond_6

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lq1;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_6
    return v1

    .line 66
    :cond_7
    :goto_2
    iget v0, p0, Lh82;->d:I

    .line 67
    .line 68
    iget v2, p1, Lh82;->d:I

    .line 69
    .line 70
    if-ne v0, v2, :cond_8

    .line 71
    .line 72
    iget-object p0, p0, Lh82;->e:Lq1;

    .line 73
    .line 74
    iget-object p1, p1, Lh82;->e:Lq1;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lq1;->s(Lq1;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_8

    .line 81
    .line 82
    :goto_3
    const/4 p0, 0x1

    .line 83
    return p0

    .line 84
    :cond_8
    :goto_4
    return v1
.end method

.method public final l(Lm1;Z)V
    .locals 1

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Lm1;->n(IZ)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lh82;->x()Lv1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p1, p2}, Lq1;->l(Lm1;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final o()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final p(Z)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lh82;->x()Lv1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lq1;->p(Z)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public u()Lq1;
    .locals 6

    .line 1
    iget v0, p0, Lh82;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lh82;

    .line 7
    .line 8
    iget-object v1, p0, Lh82;->a:Lf1;

    .line 9
    .line 10
    iget-object v2, p0, Lh82;->b:Lt0;

    .line 11
    .line 12
    iget-object v3, p0, Lh82;->c:Lq1;

    .line 13
    .line 14
    iget v4, p0, Lh82;->d:I

    .line 15
    .line 16
    iget-object p0, p0, Lh82;->e:Lq1;

    .line 17
    .line 18
    invoke-direct {v0}, Lh82;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, Lh82;->a:Lf1;

    .line 22
    .line 23
    iput-object v2, v0, Lh82;->b:Lt0;

    .line 24
    .line 25
    iput-object v3, v0, Lh82;->c:Lq1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-ltz v4, :cond_3

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    if-gt v4, v2, :cond_3

    .line 32
    .line 33
    iput v4, v0, Lh82;->d:I

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    const-string v5, "unexpected object: "

    .line 37
    .line 38
    if-eq v4, v3, :cond_2

    .line 39
    .line 40
    if-eq v4, v2, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const-class v2, Lu;

    .line 44
    .line 45
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    move-object v0, v1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const-class v2, Lj1;

    .line 70
    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    :goto_1
    iput-object p0, v0, Lh82;->e:Lq1;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const-string p0, "invalid encoding value: "

    .line 81
    .line 82
    invoke-static {v4, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_2
    return-object v0

    .line 91
    :pswitch_0
    return-object p0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final w()Lq1;
    .locals 1

    .line 1
    iget v0, p0, Lh82;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final x()Lv1;
    .locals 6

    .line 1
    iget v0, p0, Lh82;->f:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x4

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lc0;

    .line 11
    .line 12
    invoke-direct {v0, v4}, Lc0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iget-object v4, p0, Lh82;->a:Lf1;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Lc0;->a(Lb0;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v4, p0, Lh82;->b:Lt0;

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Lc0;->a(Lb0;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v4, p0, Lh82;->c:Lq1;

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    invoke-virtual {v4}, Lq1;->w()Lq1;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v0, v4}, Lc0;->a(Lb0;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    new-instance v4, Lbi0;

    .line 41
    .line 42
    iget v5, p0, Lh82;->d:I

    .line 43
    .line 44
    if-nez v5, :cond_3

    .line 45
    .line 46
    move v2, v3

    .line 47
    :cond_3
    iget-object p0, p0, Lh82;->e:Lq1;

    .line 48
    .line 49
    invoke-direct {v4, v2, v5, p0}, Lbi0;-><init>(ZILb0;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v4}, Lc0;->a(Lb0;)V

    .line 53
    .line 54
    .line 55
    new-instance p0, Lh92;

    .line 56
    .line 57
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 58
    .line 59
    .line 60
    iput v1, p0, Lh92;->c:I

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_0
    new-instance v0, Lc0;

    .line 64
    .line 65
    invoke-direct {v0, v4}, Lc0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lh82;->a:Lf1;

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Lc0;->a(Lb0;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object v4, p0, Lh82;->b:Lt0;

    .line 76
    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Lc0;->a(Lb0;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    iget-object v4, p0, Lh82;->c:Lq1;

    .line 83
    .line 84
    if-eqz v4, :cond_6

    .line 85
    .line 86
    invoke-virtual {v4}, Lq1;->u()Lq1;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v0, v4}, Lc0;->a(Lb0;)V

    .line 91
    .line 92
    .line 93
    :cond_6
    new-instance v4, Lw82;

    .line 94
    .line 95
    iget v5, p0, Lh82;->d:I

    .line 96
    .line 97
    if-nez v5, :cond_7

    .line 98
    .line 99
    move v2, v3

    .line 100
    :cond_7
    iget-object p0, p0, Lh82;->e:Lq1;

    .line 101
    .line 102
    invoke-direct {v4, v2, v5, p0}, Lq2;-><init>(ZILb0;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v4}, Lc0;->a(Lb0;)V

    .line 106
    .line 107
    .line 108
    new-instance p0, Lt82;

    .line 109
    .line 110
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 111
    .line 112
    .line 113
    iput v1, p0, Lt82;->c:I

    .line 114
    .line 115
    return-object p0

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
