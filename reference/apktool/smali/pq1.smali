.class public final Lpq1;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Z

.field public m:Le7;

.field public n:Lzs;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-boolean p1, p0, Lpq1;->l:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 8

    .line 1
    check-cast p1, Loq1;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p1, Lfh6;->a:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p1, Loq1;->v:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lfh6;->b()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    add-int/2addr v1, v2

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Loq1;->w:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v1, p1, Loq1;->A:Lpq1;

    .line 36
    .line 37
    invoke-virtual {p1}, Lfh6;->b()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    if-lez v3, :cond_0

    .line 43
    .line 44
    move v3, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v3, v4

    .line 47
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/high16 v6, 0x3f800000    # 1.0f

    .line 55
    .line 56
    const v7, 0x3f19999a    # 0.6f

    .line 57
    .line 58
    .line 59
    if-nez v5, :cond_1

    .line 60
    .line 61
    move v5, v7

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v5, v6

    .line 64
    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Llq1;

    .line 68
    .line 69
    invoke-direct {v5, v3, v1, p0}, Llq1;-><init>(ZLpq1;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p1, Loq1;->x:Landroid/widget/ImageView;

    .line 76
    .line 77
    invoke-virtual {p1}, Lfh6;->b()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v1}, Lgm7;->b()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    sub-int/2addr v5, v2

    .line 86
    if-eq v3, v5, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move v2, v4

    .line 90
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_3

    .line 98
    .line 99
    move v6, v7

    .line 100
    :cond_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lmq1;

    .line 104
    .line 105
    invoke-direct {v3, v2, v1, p0}, Lmq1;-><init>(ZLpq1;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Ltq1;

    .line 112
    .line 113
    iget-object v2, p1, Loq1;->u:Lyf1;

    .line 114
    .line 115
    iget-object v2, v2, Lyf1;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v2, Lny1;

    .line 118
    .line 119
    iget-boolean v3, v1, Lpq1;->l:Z

    .line 120
    .line 121
    invoke-direct {v0, v2, v3}, Ltq1;-><init>(Lny1;Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getApplyData()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v2}, Ltq1;->a(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p1, Loq1;->y:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->toDisplayString(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object p2, p1, Loq1;->z:Lcom/google/android/material/card/MaterialCardView;

    .line 144
    .line 145
    new-instance v0, Lnq1;

    .line 146
    .line 147
    invoke-direct {v0, v4, v1, p0, p1}, Lnq1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d005c

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Loq1;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Loq1;-><init>(Lpq1;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
