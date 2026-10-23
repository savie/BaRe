.class public final Lbi0;
.super Lq2;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(IIILb0;I)V
    .locals 0

    .line 8
    iput p5, p0, Lbi0;->e:I

    invoke-direct {p0, p1, p2, p3, p4}, Lq2;-><init>(IIILb0;)V

    return-void
.end method

.method public synthetic constructor <init>(ZILb0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lbi0;->e:I

    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lq2;-><init>(ZILb0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final B(Lq1;)Lv1;
    .locals 0

    .line 1
    iget p0, p0, Lbi0;->e:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lh92;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lv1;-><init>(Lb0;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lh92;->c:I

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    new-instance p0, Lxh0;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lv1;-><init>(Lb0;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Lm1;Z)V
    .locals 5

    .line 1
    iget v0, p0, Lbi0;->e:I

    .line 2
    .line 3
    iget v1, p0, Lq2;->c:I

    .line 4
    .line 5
    iget v2, p0, Lq2;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Lq2;->d:Lb0;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v3}, Lb0;->d()Lq1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lq1;->w()Lq1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lq2;->y()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lq1;->o()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    :cond_0
    or-int/lit8 v2, v2, 0x20

    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1, v2, v1}, Lm1;->m(II)V

    .line 38
    .line 39
    .line 40
    :cond_2
    if-eqz p0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Lq1;->p(Z)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1, p2}, Lm1;->i(I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {p1}, Lm1;->b()Lg92;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1, p0}, Lq1;->l(Lm1;Z)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_0
    invoke-interface {v3}, Lb0;->d()Lq1;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lq2;->y()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p2, :cond_6

    .line 66
    .line 67
    if-nez p0, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Lq1;->o()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    :cond_4
    or-int/lit8 v2, v2, 0x20

    .line 76
    .line 77
    :cond_5
    invoke-virtual {p1, v2, v1}, Lm1;->m(II)V

    .line 78
    .line 79
    .line 80
    :cond_6
    const/4 p2, 0x0

    .line 81
    if-eqz p0, :cond_7

    .line 82
    .line 83
    const/16 p0, 0x80

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Lm1;->f(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1, v4}, Lq1;->l(Lm1;Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lm1;->f(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lm1;->f(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_7
    invoke-virtual {v0, p1, p2}, Lq1;->l(Lm1;Z)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o()Z
    .locals 4

    .line 1
    iget v0, p0, Lbi0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lq2;->d:Lb0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lq2;->y()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    invoke-interface {v3}, Lb0;->d()Lq1;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lq1;->w()Lq1;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lq1;->o()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v1, v2

    .line 32
    :cond_1
    :goto_0
    return v1

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Lq2;->y()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_3

    .line 38
    .line 39
    invoke-interface {v3}, Lb0;->d()Lq1;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lq1;->o()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v1, v2

    .line 51
    :cond_3
    :goto_1
    return v1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Z)I
    .locals 4

    .line 1
    iget v0, p0, Lbi0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lq2;->c:I

    .line 5
    .line 6
    iget-object v3, p0, Lq2;->d:Lb0;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v3}, Lb0;->d()Lq1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lq1;->w()Lq1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lq2;->y()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {v0, p0}, Lq1;->p(Z)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-static {v0}, Lm1;->c(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    add-int/2addr v0, p0

    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-static {v2}, Lm1;->e(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :cond_1
    add-int/2addr v0, v1

    .line 41
    return v0

    .line 42
    :pswitch_0
    invoke-interface {v3}, Lb0;->d()Lq1;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lq2;->y()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {v0, p0}, Lq1;->p(Z)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x3

    .line 57
    .line 58
    :cond_2
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-static {v2}, Lm1;->e(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :cond_3
    add-int/2addr v0, v1

    .line 65
    return v0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public w()Lq1;
    .locals 1

    .line 1
    iget v0, p0, Lbi0;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lq2;->w()Lq1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :pswitch_0
    return-object p0

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
