.class public final Lh71;
.super Lhg6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lhz4;

.field public g:Lqt3;

.field public h:Z


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/wifi/WifiActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhg6;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh71;->d:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lh71;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance p1, Lhz4;

    .line 9
    .line 10
    invoke-direct {p1}, Lhz4;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lh71;->f:Lhz4;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lh71;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 8

    .line 1
    check-cast p1, Lg71;

    .line 2
    .line 3
    iget-object p0, p0, Lh71;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ld71;

    .line 10
    .line 11
    iget-object v0, p1, Lg71;->y:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v1, p1, Lg71;->x:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v2, p1, Lg71;->w:Landroid/widget/ImageView;

    .line 16
    .line 17
    iget-object v3, p1, Lg71;->v:Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-object v4, p1, Lg71;->z:Lh71;

    .line 20
    .line 21
    iget-object v5, v4, Lh71;->d:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget v6, p0, Ld71;->d:I

    .line 27
    .line 28
    if-lez v6, :cond_0

    .line 29
    .line 30
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget v6, p0, Ld71;->c:I

    .line 48
    .line 49
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Ld71;->b:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v6, 0x0

    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    move v7, v6

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/16 v7, 0x8

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object p0, v4, Lh71;->g:Lqt3;

    .line 78
    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    iget-object p0, p1, Lg71;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    .line 83
    new-instance p1, Lf71;

    .line 84
    .line 85
    invoke-direct {p1, v4, p2}, Lf71;-><init>(Lh71;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object p0, v4, Lh71;->f:Lhz4;

    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    new-array p1, p1, [Landroid/view/View;

    .line 95
    .line 96
    aput-object v3, p1, v6

    .line 97
    .line 98
    iget-object p2, p0, Lhz4;->a:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 101
    .line 102
    .line 103
    invoke-static {p2, p1}, Lel1;->L0(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    const p1, 0x1010031

    .line 107
    .line 108
    .line 109
    invoke-static {v5, p1}, Lsz8;->q(Landroid/content/Context;I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lhz4;->d:Ljava/lang/Integer;

    .line 118
    .line 119
    new-instance p1, Lw18;

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    invoke-direct {p1, v1, p2}, Lw18;-><init>(Landroid/widget/TextView;I)V

    .line 126
    .line 127
    .line 128
    filled-new-array {p1}, [Lw18;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p2, p0, Lhz4;->b:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    invoke-static {p2, p1}, Lel1;->L0(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-boolean p1, v4, Lh71;->h:Z

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lhz4;->a(Z)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Lfh6;
    .locals 7

    .line 1
    iget-object p2, p0, Lh71;->d:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d004e

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lg71;

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    const v0, 0x7f0a026f

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Landroid/widget/ImageView;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const v0, 0x7f0a0270

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    move-object v4, v2

    .line 40
    check-cast v4, Landroid/widget/ImageView;

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    const v0, 0x7f0a05ad

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v5, v2

    .line 52
    check-cast v5, Landroid/widget/TextView;

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    const v0, 0x7f0a05ba

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    move-object v6, v2

    .line 64
    check-cast v6, Landroid/widget/TextView;

    .line 65
    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    new-instance v0, Le71;

    .line 69
    .line 70
    move-object v2, v1

    .line 71
    invoke-direct/range {v0 .. v6}, Le71;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, p0, v0}, Lg71;-><init>(Lh71;Le71;)V

    .line 75
    .line 76
    .line 77
    return-object p2

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string p1, "Missing required view with ID: "

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    return-object p0
.end method
