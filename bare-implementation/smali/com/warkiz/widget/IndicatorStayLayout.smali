.class public Lcom/warkiz/widget/IndicatorStayLayout;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorStayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lcom/warkiz/widget/IndicatorStayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/warkiz/widget/IndicatorStayLayout;->setOrientation(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    instance-of v3, v2, Lcom/warkiz/widget/IndicatorSeekBar;

    .line 14
    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    check-cast v2, Lcom/warkiz/widget/IndicatorSeekBar;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->setIndicatorStayAlways(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorContentView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    instance-of v4, v3, Lcom/warkiz/widget/IndicatorSeekBar;

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    const/4 v5, -0x2

    .line 35
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    .line 40
    invoke-direct {v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 44
    .line 45
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 46
    .line 47
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    const/high16 v9, 0x40000000    # 2.0f

    .line 54
    .line 55
    invoke-static {v8, v9}, Ltu0;->j(Landroid/content/Context;F)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    sub-int/2addr v8, v9

    .line 64
    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v3, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v2, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 71
    .line 72
    const/4 v4, 0x4

    .line 73
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    new-instance v3, Lhu0;

    .line 77
    .line 78
    invoke-direct {v3, v2, v1}, Lhu0;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v4, 0x12c

    .line 82
    .line 83
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    const-string p0, "IndicatorSeekBar can not be a contentView for Indicator in case this inflating loop."

    .line 88
    .line 89
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_1
    const-string p0, "Can not find any indicator in the IndicatorSeekBar, please make sure you have called the attr: SHOW_INDICATOR_TYPE for IndicatorSeekBar and the value is not IndicatorType.NONE."

    .line 94
    .line 95
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "IndicatorStayLayout is always vertical and does not support horizontal orientation"

    .line 9
    .line 10
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
