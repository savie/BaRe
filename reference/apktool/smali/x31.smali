.class public final Lx31;
.super Ly31;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Lcom/google/android/material/card/MaterialCardView;

.field public final v:Lcom/google/android/material/button/MaterialButton;

.field public final w:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lf41;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lf41;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lfh6;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lf41;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 11
    .line 12
    iput-object v0, p0, Lx31;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 13
    .line 14
    iget-object v0, p1, Lf41;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 17
    .line 18
    iput-object v0, p0, Lx31;->v:Lcom/google/android/material/button/MaterialButton;

    .line 19
    .line 20
    iget-object p1, p1, Lf41;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lx31;->w:Landroid/widget/TextView;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final r(Ld41;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Ld41;->e:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p1, p1, Ld41;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "alpha"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {p1, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v3, p0, Lfh6;->a:Landroid/view/View;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "beta"

    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lsz8;->x(Landroid/content/Context;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const v4, 0x7f060023

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const v4, 0x7f04015b

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const v4, 0x3da3d70a    # 0.08f

    .line 72
    .line 73
    .line 74
    invoke-static {v4, v3, v1}, Lxl1;->b(FII)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iget-object v4, p0, Lx31;->u:Lcom/google/android/material/card/MaterialCardView;

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lx31;->v:Lcom/google/android/material/button/MaterialButton;

    .line 84
    .line 85
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    const/16 p1, 0x14

    .line 89
    .line 90
    invoke-static {v1, p1}, Lsz8;->U(II)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-static {p1}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v3, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lx31;->w:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    const/4 p1, 0x0

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    :goto_1
    move p1, v2

    .line 121
    :goto_2
    xor-int/2addr p1, v2

    .line 122
    invoke-static {p0, p1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
