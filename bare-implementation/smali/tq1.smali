.class public final Ltq1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Z

.field public final b:Landroid/widget/TextView;

.field public final c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;


# direct methods
.method public constructor <init>(Lny1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Ltq1;->a:Z

    .line 5
    .line 6
    iget-object p2, p1, Lny1;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object p2, p0, Ltq1;->b:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object p1, p1, Lny1;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 15
    .line 16
    iput-object p1, p0, Ltq1;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;)V
    .locals 9

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iget-object v1, p0, Ltq1;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 4
    .line 5
    iget-object v2, p0, Ltq1;->b:Landroid/widget/TextView;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-static {p1, v3, v4, v5}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->isValid$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;ZILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->getLabels()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    :cond_1
    move v3, v4

    .line 35
    :cond_2
    xor-int/lit8 p1, v3, 0x1

    .line 36
    .line 37
    invoke-static {v1, p1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 38
    .line 39
    .line 40
    if-eqz v5, :cond_5

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    sget-object p1, Ltr;->n0:Lqr;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    const/16 v8, 0xfe2

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    iget-boolean v3, p0, Ltq1;->a:Z

    .line 56
    .line 57
    const/high16 v4, 0x3f800000    # 1.0f

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    invoke-static/range {v1 .. v8}, Lqr;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    new-instance p0, Landroid/text/SpannableStringBuilder;

    .line 68
    .line 69
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const v5, 0x7f06009e

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 84
    .line 85
    invoke-direct {v5, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const v7, 0x7f1304df

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {p0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    const/16 v7, 0x11

    .line 111
    .line 112
    invoke-virtual {p0, v5, p1, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    new-array p0, v4, [Landroid/view/View;

    .line 119
    .line 120
    aput-object v1, p0, v3

    .line 121
    .line 122
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, [Landroid/view/View;

    .line 127
    .line 128
    array-length p1, p0

    .line 129
    :goto_1
    if-ge v3, p1, :cond_5

    .line 130
    .line 131
    aget-object v1, p0, v3

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    :goto_2
    return-void
.end method
