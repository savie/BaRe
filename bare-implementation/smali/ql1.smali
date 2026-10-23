.class public final Lql1;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Z

.field public g:Lsl1;

.field public h:Le7;


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lr35;-><init>(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-boolean p2, p0, Lql1;->f:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 9

    .line 1
    check-cast p1, Lpl1;

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
    check-cast p0, Lsl1;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p2, p1, Lpl1;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 15
    .line 16
    invoke-virtual {p0}, Lsl1;->a()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p2, v0}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lpl1;->v:Landroid/widget/ImageView;

    .line 24
    .line 25
    iget-object p1, p1, Lpl1;->w:Lql1;

    .line 26
    .line 27
    iget-object v1, p1, Lql1;->g:Lsl1;

    .line 28
    .line 29
    invoke-static {v1, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lsz8;->I(Landroid/view/View;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    sget-object v1, Lsl1;->e:Lgv7;

    .line 43
    .line 44
    iget-object v1, p1, Lql1;->g:Lsl1;

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    sget-object v1, Lsl1;->e:Lgv7;

    .line 49
    .line 50
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lsl1;

    .line 55
    .line 56
    :cond_0
    invoke-virtual {v1}, Lsl1;->a()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-boolean v2, p1, Lql1;->f:Z

    .line 61
    .line 62
    const/high16 v3, -0x1000000

    .line 63
    .line 64
    invoke-static {v3, v1}, Lxl1;->c(II)D

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    const/4 v6, -0x1

    .line 69
    invoke-static {v6, v1}, Lxl1;->c(II)D

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 76
    .line 77
    cmpl-double v1, v4, v1

    .line 78
    .line 79
    if-lez v1, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 83
    .line 84
    cmpl-double v1, v7, v1

    .line 85
    .line 86
    if-lez v1, :cond_3

    .line 87
    .line 88
    :cond_2
    move v3, v6

    .line 89
    :cond_3
    :goto_0
    invoke-static {v3}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    new-instance v0, Lfr;

    .line 97
    .line 98
    const/4 v1, 0x4

    .line 99
    invoke-direct {v0, v1, p1, p0}, Lfr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final k(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d00da

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lpl1;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lpl1;-><init>(Lql1;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
