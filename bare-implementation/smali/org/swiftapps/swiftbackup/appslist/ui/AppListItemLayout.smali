.class public final Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;
.super Lcom/google/android/material/listitem/ListItemLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/listitem/ListItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const p3, 0x7f0403b2

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/appslist/ui/AppListItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const/4 v6, 0x0

    .line 6
    move v2, v6

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    instance-of v4, v3, Lcx4;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    :goto_1
    move-object v1, v3

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v3, 0x0

    .line 23
    goto :goto_1

    .line 24
    :goto_2
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    const/4 v3, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v0, p0

    .line 33
    move v2, p1

    .line 34
    move v4, p2

    .line 35
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    add-int/2addr v4, v3

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    add-int/2addr v3, v4

    .line 61
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 62
    .line 63
    add-int/2addr v3, v4

    .line 64
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 65
    .line 66
    add-int/2addr v3, v4

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    add-int/2addr v5, v4

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    add-int/2addr v4, v5

    .line 81
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 82
    .line 83
    add-int/2addr v4, v5

    .line 84
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 85
    .line 86
    add-int/2addr v4, v2

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ge v3, v2, :cond_3

    .line 92
    .line 93
    move v3, v2

    .line 94
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-static {v3, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-ge v4, v3, :cond_4

    .line 107
    .line 108
    move v4, v3

    .line 109
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    shl-int/lit8 v1, v1, 0x10

    .line 114
    .line 115
    invoke-static {v4, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    const/high16 v2, 0x40000000    # 2.0f

    .line 127
    .line 128
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    :goto_3
    if-ge v6, v7, :cond_6

    .line 137
    .line 138
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    instance-of v2, v1, Lix4;

    .line 143
    .line 144
    if-eqz v2, :cond_5

    .line 145
    .line 146
    move-object v2, v1

    .line 147
    check-cast v2, Lix4;

    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    const/16 v3, 0x8

    .line 154
    .line 155
    if-eq v2, v3, :cond_5

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    const/4 v5, 0x0

    .line 159
    move-object v0, p0

    .line 160
    move v2, p1

    .line 161
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 162
    .line 163
    .line 164
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    return-void
.end method
