.class public final Len3;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Len3;->l:Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 5

    .line 1
    check-cast p1, Ldn3;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfn3;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-boolean p2, p0, Lfn3;->b:Z

    .line 13
    .line 14
    iget-object v0, p1, Ldn3;->u:Lvq;

    .line 15
    .line 16
    iget-object v1, v0, Lvq;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v2, p1, Ldn3;->v:Len3;

    .line 21
    .line 22
    iget-object v3, p0, Lfn3;->f:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-lez v4, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-eqz v3, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v3, p0, Lfn3;->e:Ljava/lang/String;

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v2, Len3;->l:Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-static {v3}, Lsz8;->x(Landroid/content/Context;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-static {v3}, Lsz8;->A(Landroid/content/Context;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    const/high16 p2, 0x3f800000    # 1.0f

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const p2, 0x3f4ccccd    # 0.8f

    .line 64
    .line 65
    .line 66
    :goto_3
    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    iget-object p2, v0, Lvq;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p2, Landroid/widget/LinearLayout;

    .line 72
    .line 73
    new-instance v0, Lcn3;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-direct {v0, v1, v2, p0, p1}, Lcn3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d00b3

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 3

    .line 1
    new-instance p2, Ldn3;

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Landroid/widget/LinearLayout;

    .line 5
    .line 6
    const v1, 0x7f0a01b4

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const v1, 0x7f0a02a2

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/widget/ImageView;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const v1, 0x7f0a0538

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const v1, 0x7f0a05ba

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    new-instance p1, Lvq;

    .line 51
    .line 52
    const/4 v1, 0x6

    .line 53
    invoke-direct {p1, v1, v0, v0, v2}, Lvq;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, p0, p1}, Ldn3;-><init>(Len3;Lvq;)V

    .line 57
    .line 58
    .line 59
    return-object p2

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "Missing required view with ID: "

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method
