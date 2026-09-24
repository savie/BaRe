.class public final Lpb7;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:Z

.field public g:Ljava/lang/String;

.field public h:Lgj;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr35;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lpb7;->f:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 9

    .line 1
    check-cast p1, Lob7;

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
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iget-object v0, p1, Lob7;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p1, Lob7;->v:Landroid/widget/ImageView;

    .line 24
    .line 25
    iget-object p1, p1, Lob7;->w:Lpb7;

    .line 26
    .line 27
    iget-object v2, p1, Lpb7;->g:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    sget-object v2, Lsl1;->e:Lgv7;

    .line 43
    .line 44
    iget-boolean v2, p1, Lpb7;->f:Z

    .line 45
    .line 46
    const/high16 v3, -0x1000000

    .line 47
    .line 48
    invoke-static {v3, p2}, Lxl1;->c(II)D

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    const/4 v6, -0x1

    .line 53
    invoke-static {v6, p2}, Lxl1;->c(II)D

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 60
    .line 61
    cmpl-double p2, v4, v7

    .line 62
    .line 63
    if-lez p2, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 67
    .line 68
    cmpl-double p2, v7, v4

    .line 69
    .line 70
    if-lez p2, :cond_2

    .line 71
    .line 72
    :cond_1
    move v3, v6

    .line 73
    :cond_2
    :goto_0
    invoke-static {v3}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    new-instance p2, Lgr;

    .line 81
    .line 82
    const/4 v1, 0x4

    .line 83
    invoke-direct {p2, v1, p1, p0}, Lgr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
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
    new-instance p2, Lob7;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lob7;-><init>(Lpb7;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
