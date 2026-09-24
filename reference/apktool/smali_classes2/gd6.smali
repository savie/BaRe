.class public final Lgd6;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final h(Lfh6;I)V
    .locals 4

    .line 1
    check-cast p1, Lfd6;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhd6;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p1, Lfd6;->u:Lkc;

    .line 13
    .line 14
    iget-object v0, p2, Lkc;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object v1, p0, Lhd6;->a:Lzc6;

    .line 19
    .line 20
    iget v2, v1, Lzc6;->c:I

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p2, Lkc;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iget v1, v1, Lzc6;->d:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p2, Lkc;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 37
    .line 38
    iget-object v1, p1, Lfd6;->v:Lgd6;

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Lgm7;->q(Ljl0;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eq v3, v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p2, p2, Lkc;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    new-instance v0, Led6;

    .line 58
    .line 59
    invoke-direct {v0, v1, p0, p1}, Led6;-><init>(Lgd6;Lhd6;Lfd6;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0158

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lfd6;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lfd6;-><init>(Lgd6;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
