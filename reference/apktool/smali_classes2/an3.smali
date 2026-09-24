.class public final Lan3;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final h(Lfh6;I)V
    .locals 5

    .line 1
    check-cast p1, Lzm3;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbn3;

    .line 8
    .line 9
    iget-object v0, p1, Lzm3;->y:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lbn3;->b:Z

    .line 15
    .line 16
    iget-object v2, p1, Lzm3;->w:Landroid/widget/ImageView;

    .line 17
    .line 18
    iget-boolean v3, p0, Lbn3;->d:Z

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const v4, 0x7f08014a

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v4, 0x7f0800c8

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p1, Lzm3;->x:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v4, p0, Lbn3;->k:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const-string v2, "Not supported"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    xor-int/lit8 v2, v1, 0x1

    .line 47
    .line 48
    invoke-static {v0, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v0}, Lsz8;->W(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object v0, p1, Lzm3;->u:Ltf2;

    .line 56
    .line 57
    iget-object v0, v0, Ltf2;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    .line 67
    .line 68
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p1, Lzm3;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object p1, p1, Lzm3;->z:Lan3;

    .line 76
    .line 77
    new-instance v1, Lti;

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    invoke-direct {v1, p1, p2, v2, p0}, Lti;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    const/4 p0, 0x0

    .line 88
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d00b2

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 9

    .line 1
    new-instance p2, Lzm3;

    .line 2
    .line 3
    const v0, 0x7f0a017a

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v4, v1

    .line 11
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    const v0, 0x7f0a02a2

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/ImageView;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const v0, 0x7f0a02b7

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v5, v1

    .line 34
    check-cast v5, Landroid/widget/ImageView;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    const v0, 0x7f0a05ad

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v6, v1

    .line 46
    check-cast v6, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    const v0, 0x7f0a05ba

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v7, v1

    .line 58
    check-cast v7, Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    new-instance v2, Ltf2;

    .line 63
    .line 64
    move-object v3, p1

    .line 65
    check-cast v3, Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const/4 v8, 0x1

    .line 68
    invoke-direct/range {v2 .. v8}, Ltf2;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0, v2}, Lzm3;-><init>(Lan3;Ltf2;)V

    .line 72
    .line 73
    .line 74
    return-object p2

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p1, "Missing required view with ID: "

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    return-object p0
.end method
