.class public final Lz31;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final f:I

.field public final g:I

.field public final h:Lgv7;

.field public final i:Lbp0;


# direct methods
.method public constructor <init>(Lsa1;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lr35;-><init>(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    iput p2, p0, Lz31;->f:I

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    iput p2, p0, Lz31;->g:I

    .line 12
    .line 13
    new-instance p2, Lu31;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p2, p1, v0}, Lu31;-><init>(Lsa1;I)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lgv7;

    .line 20
    .line 21
    invoke-direct {v0, p2}, Lgv7;-><init>(Lbt3;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lz31;->h:Lgv7;

    .line 25
    .line 26
    new-instance p2, Lf75;

    .line 27
    .line 28
    const/16 v0, 0x38

    .line 29
    .line 30
    invoke-direct {p2, p1, v0}, Lf75;-><init>(Lk28;I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p2, Lf75;->e:Lbp0;

    .line 34
    .line 35
    iput-object p1, p0, Lz31;->i:Lbp0;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lr35;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ld41;

    .line 8
    .line 9
    iget-boolean v0, p1, Ld41;->c:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    iget-boolean p1, p1, Ld41;->b:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget p0, p0, Lz31;->f:I

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    iget p0, p0, Lz31;->g:I

    .line 23
    .line 24
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Ly31;

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
    check-cast p0, Ld41;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ly31;->r(Ld41;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k(I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const p0, 0x7f0d004b

    .line 4
    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    iget p0, p0, Lz31;->f:I

    .line 8
    .line 9
    if-ne p1, p0, :cond_1

    .line 10
    .line 11
    const p0, 0x7f0d0049

    .line 12
    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    const p0, 0x7f0d004a

    .line 16
    .line 17
    .line 18
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Missing required view with ID: "

    .line 3
    .line 4
    const v2, 0x7f0a05ba

    .line 5
    .line 6
    .line 7
    if-nez p2, :cond_2

    .line 8
    .line 9
    new-instance p0, Lx31;

    .line 10
    .line 11
    const p2, 0x7f0a03c0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const p2, 0x7f0a057f

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-static {p1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    new-instance v0, Lf41;

    .line 42
    .line 43
    check-cast p1, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, v0, Lf41;->a:Ljava/lang/Object;

    .line 49
    .line 50
    iput-object v3, v0, Lf41;->b:Ljava/lang/Object;

    .line 51
    .line 52
    iput-object v4, v0, Lf41;->c:Ljava/lang/Object;

    .line 53
    .line 54
    iput-object p2, v0, Lf41;->d:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-direct {p0, v0}, Lx31;-><init>(Lf41;)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_0
    move v2, p2

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_2
    iget v3, p0, Lz31;->f:I

    .line 78
    .line 79
    if-ne p2, v3, :cond_4

    .line 80
    .line 81
    new-instance p2, Lw31;

    .line 82
    .line 83
    move-object v3, p1

    .line 84
    check-cast v3, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    invoke-static {p1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/widget/TextView;

    .line 91
    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    new-instance p1, Lcd;

    .line 95
    .line 96
    const/4 v0, 0x3

    .line 97
    invoke-direct {p1, v0, v3, v4}, Lcd;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p2, p0, p1}, Lw31;-><init>(Lz31;Lcd;)V

    .line 101
    .line 102
    .line 103
    return-object p2

    .line 104
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_4
    new-instance p2, Lv31;

    .line 121
    .line 122
    move-object v3, p1

    .line 123
    check-cast v3, Landroid/widget/LinearLayout;

    .line 124
    .line 125
    const v4, 0x7f0a0523

    .line 126
    .line 127
    .line 128
    invoke-static {p1, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Landroid/widget/TextView;

    .line 133
    .line 134
    if-eqz v5, :cond_5

    .line 135
    .line 136
    invoke-static {p1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Landroid/widget/TextView;

    .line 141
    .line 142
    if-eqz v4, :cond_6

    .line 143
    .line 144
    new-instance p1, Le41;

    .line 145
    .line 146
    const/4 v0, 0x0

    .line 147
    invoke-direct {p1, v0, v3, v5, v4}, Le41;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p2, p0, p1}, Lv31;-><init>(Lz31;Le41;)V

    .line 151
    .line 152
    .line 153
    return-object p2

    .line 154
    :cond_5
    move v2, v4

    .line 155
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-object v0
.end method
