.class public final Lnu0;
.super Leu0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/Boolean;

.field public final b:Ltv8;

.field public c:Landroid/view/Window;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ltv8;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnu0;->b:Ltv8;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Lc95;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p2, Lc95;->b:La95;

    .line 15
    .line 16
    iget-object p2, p2, La95;->c:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    const/4 v1, 0x1

    .line 25
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Lxl1;->d(I)D

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    cmpl-double p1, p1, v2

    .line 40
    .line 41
    if-lez p1, :cond_1

    .line 42
    .line 43
    move v0, v1

    .line 44
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lnu0;->a:Ljava/lang/Boolean;

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Ldu;->d(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 p2, 0x0

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move-object p1, p2

    .line 72
    :goto_1
    if-eqz p1, :cond_5

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-static {p1}, Lxl1;->d(I)D

    .line 81
    .line 82
    .line 83
    move-result-wide p1

    .line 84
    cmpl-double p1, p1, v2

    .line 85
    .line 86
    if-lez p1, :cond_4

    .line 87
    .line 88
    move v0, v1

    .line 89
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lnu0;->a:Ljava/lang/Boolean;

    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    iput-object p2, p0, Lnu0;->a:Ljava/lang/Boolean;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnu0;->d(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnu0;->d(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnu0;->d(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lnu0;->b:Ltv8;

    .line 6
    .line 7
    invoke-virtual {v1}, Ltv8;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x1e

    .line 12
    .line 13
    const/16 v4, 0x23

    .line 14
    .line 15
    if-ge v0, v2, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lnu0;->c:Landroid/view/Window;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v2, p0, Lnu0;->a:Ljava/lang/Boolean;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget-boolean p0, p0, Lnu0;->d:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v5, Lge;

    .line 37
    .line 38
    invoke-direct {v5, v2}, Lge;-><init>(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    if-lt v2, v4, :cond_1

    .line 44
    .line 45
    new-instance v2, Lxv8;

    .line 46
    .line 47
    invoke-direct {v2, v0, v5}, Lvv8;-><init>(Landroid/view/Window;Lge;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-lt v2, v3, :cond_2

    .line 52
    .line 53
    new-instance v2, Lvv8;

    .line 54
    .line 55
    invoke-direct {v2, v0, v5}, Lvv8;-><init>(Landroid/view/Window;Lge;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v2, Luv8;

    .line 60
    .line 61
    invoke-direct {v2, v0, v5}, Luv8;-><init>(Landroid/view/Window;Lge;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v2, p0}, Ly13;->C(Z)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {v1}, Ltv8;->d()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    sub-int/2addr v0, v1

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    iget-object v0, p0, Lnu0;->c:Landroid/view/Window;

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    iget-boolean p0, p0, Lnu0;->d:Z

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-instance v2, Lge;

    .line 109
    .line 110
    invoke-direct {v2, v1}, Lge;-><init>(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .line 115
    if-lt v1, v4, :cond_5

    .line 116
    .line 117
    new-instance v1, Lxv8;

    .line 118
    .line 119
    invoke-direct {v1, v0, v2}, Lvv8;-><init>(Landroid/view/Window;Lge;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    if-lt v1, v3, :cond_6

    .line 124
    .line 125
    new-instance v1, Lvv8;

    .line 126
    .line 127
    invoke-direct {v1, v0, v2}, Lvv8;-><init>(Landroid/view/Window;Lge;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    new-instance v1, Luv8;

    .line 132
    .line 133
    invoke-direct {v1, v0, v2}, Luv8;-><init>(Landroid/view/Window;Lge;)V

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-virtual {v1, p0}, Ly13;->C(Z)V

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 153
    .line 154
    .line 155
    :cond_8
    return-void
.end method

.method public final e(Landroid/view/Window;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnu0;->c:Landroid/view/Window;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput-object p1, p0, Lnu0;->c:Landroid/view/Window;

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lge;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lge;-><init>(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x23

    .line 22
    .line 23
    if-lt v0, v2, :cond_1

    .line 24
    .line 25
    new-instance v0, Lxv8;

    .line 26
    .line 27
    invoke-direct {v0, p1, v1}, Lvv8;-><init>(Landroid/view/Window;Lge;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/16 v2, 0x1e

    .line 32
    .line 33
    if-lt v0, v2, :cond_2

    .line 34
    .line 35
    new-instance v0, Lvv8;

    .line 36
    .line 37
    invoke-direct {v0, p1, v1}, Lvv8;-><init>(Landroid/view/Window;Lge;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance v0, Luv8;

    .line 42
    .line 43
    invoke-direct {v0, p1, v1}, Luv8;-><init>(Landroid/view/Window;Lge;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0}, Ly13;->q()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput-boolean p1, p0, Lnu0;->d:Z

    .line 51
    .line 52
    :cond_3
    :goto_1
    return-void
.end method
