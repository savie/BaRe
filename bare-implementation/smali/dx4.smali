.class public final synthetic Ldx4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/material/listitem/ListItemLayout;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldx4;->a:Lcom/google/android/material/listitem/ListItemLayout;

    .line 5
    .line 6
    iput-boolean p2, p0, Ldx4;->b:Z

    .line 7
    .line 8
    iput p3, p0, Ldx4;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ldx4;->a:Lcom/google/android/material/listitem/ListItemLayout;

    .line 2
    .line 3
    iget-boolean v1, p0, Ldx4;->b:Z

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    iget p0, p0, Ldx4;->c:I

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v3, v1, Lgl8;->r:Landroid/widget/OverScroller;

    .line 15
    .line 16
    invoke-virtual {v1}, Lgl8;->a()V

    .line 17
    .line 18
    .line 19
    iget v4, v1, Lgl8;->a:I

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-ne v4, v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v5, v1, Lgl8;->s:Lly8;

    .line 42
    .line 43
    iget-object v6, v1, Lgl8;->t:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v5, v6, v4, v3}, Lly8;->I(Landroid/view/View;II)V

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object v3, Lgl8;->y:Lel8;

    .line 49
    .line 50
    iput-object v3, v1, Lgl8;->w:Landroid/view/animation/Interpolator;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1, v3}, Lgl8;->o(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v0, v2, p0}, Lcom/google/android/material/listitem/ListItemLayout;->c(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v3, v0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    sub-int v4, v1, v4

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/material/listitem/ListItemLayout;->n(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2, p0}, Lcom/google/android/material/listitem/ListItemLayout;->i(II)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    iget-object v1, v0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/material/listitem/ListItemLayout;->j(Lcx4;II)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
