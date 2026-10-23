.class public final Lqo5;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Z

.field public final m:Z

.field public n:Lmt3;

.field public o:Lnu;

.field public final p:Lbp0;


# direct methods
.method public constructor <init>(Lk28;ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-boolean p2, p0, Lqo5;->l:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Lqo5;->m:Z

    .line 8
    .line 9
    new-instance p2, Lf75;

    .line 10
    .line 11
    const/16 p3, 0x3c

    .line 12
    .line 13
    invoke-direct {p2, p1, p3}, Lf75;-><init>(Lk28;I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p2, Lf75;->e:Lbp0;

    .line 17
    .line 18
    iput-object p1, p0, Lqo5;->p:Lbp0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 3

    .line 1
    check-cast p1, Lpo5;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p1, Lpo5;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 13
    .line 14
    invoke-static {p2}, Lsz8;->c0(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p1, Lpo5;->v:Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object v0, p1, Lpo5;->A:Lqo5;

    .line 20
    .line 21
    iget-boolean v1, v0, Lqo5;->l:Z

    .line 22
    .line 23
    invoke-static {p2, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p1, Lpo5;->w:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->getTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p1, Lpo5;->x:Landroid/widget/TextView;

    .line 36
    .line 37
    iget-object v1, v0, Lqo5;->p:Lbp0;

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->getSubtitle()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lbp0;->e(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p1, Lpo5;->y:Lcom/google/android/material/button/MaterialButton;

    .line 55
    .line 56
    new-instance v1, Li10;

    .line 57
    .line 58
    const/4 v2, 0x7

    .line 59
    invoke-direct {v1, v2, v0, p0}, Li10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lpo5;->z:Landroid/widget/ImageView;

    .line 66
    .line 67
    iget-boolean p2, v0, Lqo5;->m:Z

    .line 68
    .line 69
    invoke-static {p1, p2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Lrf4;

    .line 73
    .line 74
    const/4 v1, 0x2

    .line 75
    invoke-direct {p2, v1, v0, p0}, Lrf4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d012e

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 10

    .line 1
    new-instance p2, Lpo5;

    .line 2
    .line 3
    const v0, 0x7f0a00fe

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
    check-cast v4, Landroid/widget/ImageView;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    const v0, 0x7f0a010e

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v5, v1

    .line 23
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    move-object v3, p1

    .line 28
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 29
    .line 30
    const v0, 0x7f0a0524

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v7, v1

    .line 38
    check-cast v7, Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    const v0, 0x7f0a05ac

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v8, v1

    .line 50
    check-cast v8, Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    const v0, 0x7f0a05ba

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v9, v1

    .line 62
    check-cast v9, Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v9, :cond_0

    .line 65
    .line 66
    new-instance v2, Lya4;

    .line 67
    .line 68
    move-object v6, v3

    .line 69
    invoke-direct/range {v2 .. v9}, Lya4;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, p0, v2}, Lpo5;-><init>(Lqo5;Lya4;)V

    .line 73
    .line 74
    .line 75
    return-object p2

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string p1, "Missing required view with ID: "

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    return-object p0
.end method
