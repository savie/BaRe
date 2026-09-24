.class public final Le54;
.super Lg54;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Lxp3;

.field public final synthetic v:Lh54;


# direct methods
.method public constructor <init>(Lh54;Lxp3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le54;->v:Lh54;

    .line 2
    .line 3
    iget-object p1, p2, Lxp3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Le54;->u:Lxp3;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final r(Ls54;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Ltr;->n0:Lqr;

    .line 5
    .line 6
    iget-object v0, p0, Le54;->u:Lxp3;

    .line 7
    .line 8
    iget-object v1, v0, Lxp3;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lqr;->c(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, v0, Lxp3;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Landroid/widget/ImageView;

    .line 26
    .line 27
    iget-object p0, p0, Le54;->v:Lh54;

    .line 28
    .line 29
    invoke-static {p0, v2, p1}, Lh54;->y(Lh54;Landroid/widget/ImageView;Ls54;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lxp3;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p1, Ls54;->p:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v3, p1, Ls54;->d:Ljava/lang/String;

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    const-string v3, ""

    .line 55
    .line 56
    :cond_1
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, v0, Lxp3;->f:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v1, p1, Ls54;->c:Ljava/lang/String;

    .line 73
    .line 74
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lxp3;->c:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    .line 81
    new-instance v1, Ld54;

    .line 82
    .line 83
    invoke-direct {v1, p0, p1, p2}, Ld54;-><init>(Lh54;Ls54;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
