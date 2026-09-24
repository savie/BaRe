.class public final Lbp3;
.super Lkx4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Landroid/widget/TextView;

.field public final B:Lorg/swiftapps/swiftbackup/views/MCheckBox;

.field public final C:Landroid/widget/ImageView;

.field public final D:Landroid/view/View;

.field public final E:I

.field public final synthetic F:Lcp3;

.field public final v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

.field public final w:Landroid/view/View;

.field public final x:Landroid/widget/TextView;

.field public final y:Landroid/widget/TextView;

.field public final z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcp3;Lop3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lbp3;->F:Lcp3;

    .line 2
    .line 3
    iget-object p1, p2, Lop3;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/material/listitem/ListItemLayout;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lkx4;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p2, Lop3;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 13
    .line 14
    iput-object v0, p0, Lbp3;->v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 15
    .line 16
    iget-object v0, p2, Lop3;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/view/View;

    .line 19
    .line 20
    iput-object v0, p0, Lbp3;->w:Landroid/view/View;

    .line 21
    .line 22
    iget-object v0, p2, Lop3;->k:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v0, p0, Lbp3;->x:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v0, p2, Lop3;->q:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lbp3;->y:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v0, p2, Lop3;->n:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p0, Lbp3;->z:Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object v0, p2, Lop3;->p:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p0, Lbp3;->A:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object v0, p2, Lop3;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 49
    .line 50
    iput-object v0, p0, Lbp3;->B:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 51
    .line 52
    iget-object v0, p2, Lop3;->f:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .line 56
    iput-object v0, p0, Lbp3;->C:Landroid/widget/ImageView;

    .line 57
    .line 58
    iget-object p2, p2, Lop3;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p2, Landroid/view/View;

    .line 61
    .line 62
    iput-object p2, p0, Lbp3;->D:Landroid/view/View;

    .line 63
    .line 64
    sget-object p2, Ltr;->n0:Lqr;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lqr;->c(Landroid/content/Context;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lbp3;->E:I

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final s(Lzk3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbp3;->F:Lcp3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgm7;->q(Ljl0;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-boolean v0, v0, Lcp3;->l:Z

    .line 8
    .line 9
    iget-object v1, p0, Lbp3;->v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setCheckable(Z)V

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lbp3;->B:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 25
    .line 26
    invoke-static {p0, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eq v0, p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method
