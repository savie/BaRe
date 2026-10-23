.class public final Lxc3;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Lsa1;

.field public final g:Lej;

.field public final h:Lfj;

.field public final i:I

.field public final j:I

.field public final k:I

.field public l:Lpf;


# direct methods
.method public constructor <init>(Lsa1;Ljava/util/ArrayList;Lej;Lfj;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lr35;-><init>(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lxc3;->f:Lsa1;

    .line 8
    .line 9
    iput-object p3, p0, Lxc3;->g:Lej;

    .line 10
    .line 11
    iput-object p4, p0, Lxc3;->h:Lfj;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lxc3;->i:I

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lxc3;->j:I

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    iput p1, p0, Lxc3;->k:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lr35;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Luc3;

    .line 8
    .line 9
    iget-boolean v0, p1, Luc3;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lxc3;->k:I

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    iget-object v0, p1, Luc3;->b:Lnd3;

    .line 17
    .line 18
    invoke-interface {v0}, Lnd3;->isDefault()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-boolean v0, p1, Luc3;->c:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_1
    iget-boolean p1, p1, Luc3;->c:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget p0, p0, Lxc3;->j:I

    .line 35
    .line 36
    return p0

    .line 37
    :cond_2
    iget p0, p0, Lxc3;->i:I

    .line 38
    .line 39
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 4

    .line 1
    check-cast p1, Lwc3;

    .line 2
    .line 3
    iget-object p0, p0, Lr35;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Luc3;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Luc3;->e:Ljava/lang/String;

    .line 15
    .line 16
    iget v1, p1, Lfh6;->f:I

    .line 17
    .line 18
    iget-object v2, p1, Lwc3;->u:Lxc3;

    .line 19
    .line 20
    iget v3, v2, Lxc3;->k:I

    .line 21
    .line 22
    iget-object p1, p1, Lfh6;->a:Landroid/view/View;

    .line 23
    .line 24
    if-ne v1, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    check-cast p1, Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    or-int/lit8 p2, p2, 0x8

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Li10;

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    invoke-direct {p2, v0, p0, v2}, Li10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lvc3;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v0, v2, p0, p2, v1}, Lvc3;-><init>(Lhg6;Ljava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final k(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const p0, 0x7f0d00a0

    .line 4
    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    iget v0, p0, Lxc3;->i:I

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const p0, 0x7f0d00a2

    .line 12
    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    iget p0, p0, Lxc3;->k:I

    .line 16
    .line 17
    if-ne p1, p0, :cond_2

    .line 18
    .line 19
    const p0, 0x7f0d00a1

    .line 20
    .line 21
    .line 22
    return p0

    .line 23
    :cond_2
    const p0, 0x7f0d00a3

    .line 24
    .line 25
    .line 26
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lwc3;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lwc3;-><init>(Lxc3;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public final n(Luc3;IZ)V
    .locals 4

    .line 1
    iget-object v0, p1, Luc3;->b:Lnd3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p3, :cond_2

    .line 5
    .line 6
    sget-object p3, Lce3;->NotSynced:Lce3;

    .line 7
    .line 8
    if-ne v0, p3, :cond_2

    .line 9
    .line 10
    iget-object p3, p0, Lxc3;->f:Lsa1;

    .line 11
    .line 12
    invoke-static {p3}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    sget-object v0, Ltb1;->a:Ltb1;

    .line 20
    .line 21
    invoke-static {}, Lqb1;->m()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2, v1}, Lxc3;->n(Luc3;IZ)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/4 p0, 0x3

    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-static {p3, p1, p1, p0}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    sget-object p3, Lwd3;->Selected:Lwd3;

    .line 38
    .line 39
    if-ne v0, p3, :cond_3

    .line 40
    .line 41
    iget-object p0, p0, Lxc3;->g:Lej;

    .line 42
    .line 43
    invoke-virtual {p0}, Lej;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iget-boolean p3, p1, Luc3;->c:Z

    .line 48
    .line 49
    if-eqz p3, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    const/4 p3, 0x1

    .line 53
    iput-boolean p3, p1, Luc3;->c:Z

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lhg6;->f(I)V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lxc3;->l:Lpf;

    .line 59
    .line 60
    if-eqz p3, :cond_5

    .line 61
    .line 62
    invoke-virtual {p3, p1}, Lpf;->d(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    iget-object p3, p0, Lr35;->d:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    move v0, v1

    .line 72
    :goto_0
    if-ge v0, p3, :cond_7

    .line 73
    .line 74
    iget-object v2, p0, Lr35;->d:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Luc3;

    .line 81
    .line 82
    iget-boolean v3, v2, Luc3;->c:Z

    .line 83
    .line 84
    if-eqz v3, :cond_6

    .line 85
    .line 86
    invoke-virtual {v2, p1}, Luc3;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_6

    .line 91
    .line 92
    iput-boolean v1, v2, Luc3;->c:Z

    .line 93
    .line 94
    invoke-virtual {p0, p2}, Lhg6;->f(I)V

    .line 95
    .line 96
    .line 97
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_7
    :goto_1
    return-void
.end method
