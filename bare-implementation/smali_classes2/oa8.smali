.class public final Loa8;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Lna8;

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
    check-cast p0, Lma8;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lna8;->r(Lma8;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0186

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 6

    .line 1
    const p0, 0x7f0a05ac

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    move-object v2, p2

    .line 9
    check-cast v2, Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const p0, 0x7f0a05ba

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    move-object v3, p2

    .line 21
    check-cast v3, Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const p0, 0x7f0a05c3

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    move-object v4, p2

    .line 33
    check-cast v4, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    new-instance v0, Luv0;

    .line 38
    .line 39
    move-object v1, p1

    .line 40
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    invoke-direct/range {v0 .. v5}, Luv0;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Lna8;

    .line 47
    .line 48
    invoke-direct {p0, v0, v3, v2, v4}, Lna8;-><init>(Ljk8;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "Missing required view with ID: "

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    return-object p0
.end method
