.class public final Lba2;
.super Lhg6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Ljava/util/List;

.field public final e:Z

.field public f:Lqt3;


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lhg6;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lba2;->d:Ljava/util/List;

    .line 8
    .line 9
    iput-boolean p2, p0, Lba2;->e:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lba2;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 5

    .line 1
    check-cast p1, Laa2;

    .line 2
    .line 3
    iget-object p0, p0, Lba2;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ld71;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lfh6;->a:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Laa2;->u:Lba2;

    .line 20
    .line 21
    new-instance v1, Lz92;

    .line 22
    .line 23
    invoke-direct {v1, p1, p2}, Lz92;-><init>(Lba2;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget p2, p0, Ld71;->d:I

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-static {p1, p2}, Lio4;->c(Landroid/content/Context;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const p2, 0x7f0a00dd

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 51
    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-static {p1, v3}, Lsz8;->U(II)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 58
    .line 59
    .line 60
    const/16 v4, 0x14

    .line 61
    .line 62
    invoke-static {p1, v4}, Lsz8;->U(II)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 71
    .line 72
    .line 73
    iget v2, p0, Ld71;->c:I

    .line 74
    .line 75
    iget-object p0, p0, Ld71;->b:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v4, Lw01;

    .line 78
    .line 79
    invoke-direct {v4, v3, v1, v0}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const v1, 0x7f0a0270

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/widget/ImageView;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 102
    .line 103
    .line 104
    const/16 v2, 0x4b

    .line 105
    .line 106
    invoke-static {p1, v2}, Lxl1;->g(II)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 122
    .line 123
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    const/16 p0, 0x4d

    .line 127
    .line 128
    invoke-static {p1, p0}, Lxl1;->g(II)I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p0}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 140
    .line 141
    .line 142
    new-instance p0, Lg7;

    .line 143
    .line 144
    const/16 p1, 0x10

    .line 145
    .line 146
    invoke-direct {p0, v4, p1}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Lfh6;
    .locals 2

    .line 1
    iget-boolean p2, p0, Lba2;->e:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const p2, 0x7f0d0076

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const p2, 0x7f0d0077

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Laa2;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p0, p1}, Laa2;-><init>(Lba2;Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    return-object p2
.end method
