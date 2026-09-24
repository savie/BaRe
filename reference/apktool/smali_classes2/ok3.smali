.class public final Lok3;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic l:Lqk3;


# direct methods
.method public constructor <init>(Lqk3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lok3;->l:Lqk3;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lgm7;-><init>(Lfm7;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 9

    .line 1
    check-cast p1, Lnk3;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Llk3;

    .line 8
    .line 9
    iget-object v0, p1, Lfh6;->a:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Llk3;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Llk3;->c:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p1, Lnk3;->v:Lok3;

    .line 19
    .line 20
    iget-object v4, v3, Lok3;->l:Lqk3;

    .line 21
    .line 22
    iget-object v5, v4, Lqk3;->Q:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 23
    .line 24
    invoke-static {v5}, Lsz8;->A(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iget-object v4, v4, Lqk3;->Q:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 29
    .line 30
    invoke-static {v4}, Lsz8;->r(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object p1, p1, Lnk3;->u:Lcy6;

    .line 35
    .line 36
    iget-object v6, p1, Lcy6;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v6, Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {p0}, Llk3;->c()Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    sget-object v7, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 47
    .line 48
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-nez v7, :cond_0

    .line 53
    .line 54
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const v5, 0x7f0604a5

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-static {v4, v5}, Lio4;->c(Landroid/content/Context;I)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const v5, 0x7f080146

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget v7, p0, Llk3;->d:I

    .line 77
    .line 78
    const-string v8, "Delete backups"

    .line 79
    .line 80
    invoke-static {v1, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_1

    .line 85
    .line 86
    move v5, v4

    .line 87
    :cond_1
    move v4, v5

    .line 88
    move v5, v7

    .line 89
    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 97
    .line 98
    .line 99
    iget-object v4, p1, Lcy6;->f:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v4, Landroid/widget/TextView;

    .line 102
    .line 103
    iget v5, p0, Llk3;->b:I

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 106
    .line 107
    .line 108
    iget-object v4, p1, Lcy6;->e:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v4, Landroid/widget/TextView;

    .line 111
    .line 112
    const/4 v5, 0x1

    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-nez v6, :cond_2

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    const/4 v6, 0x0

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    :goto_1
    move v6, v5

    .line 125
    :goto_2
    xor-int/2addr v5, v6

    .line 126
    invoke-static {v4, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p1, Lcy6;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Landroid/view/View;

    .line 135
    .line 136
    const/16 v2, 0x8

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    const-string p1, "New folder setup"

    .line 142
    .line 143
    invoke-static {v1, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_5

    .line 148
    .line 149
    iget p1, p0, Llk3;->e:I

    .line 150
    .line 151
    if-lez p1, :cond_4

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    const/high16 p1, 0x3f000000    # 0.5f

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_5
    :goto_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 158
    .line 159
    :goto_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 160
    .line 161
    .line 162
    new-instance p1, Lmk3;

    .line 163
    .line 164
    invoke-direct {p1, v3, p0, p2}, Lmk3;-><init>(Lok3;Llk3;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d00ab

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lnk3;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lnk3;-><init>(Lok3;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
