.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldw1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;
    }
.end annotation


# static fields
.field public static final B0:Lu03;

.field public static final C0:Lv03;

.field public static final D0:Lw03;

.field public static final E0:Lbm0;


# instance fields
.field public A0:I

.field public l0:I

.field public m0:Z

.field public final n0:Lx03;

.field public final o0:Lx03;

.field public final p0:Lz03;

.field public final q0:Ly03;

.field public r0:I

.field public s0:I

.field public t0:I

.field public final u0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

.field public v0:Z

.field public w0:Z

.field public x0:Z

.field public y0:Landroid/content/res/ColorStateList;

.field public z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lu03;

    .line 2
    .line 3
    const-string v1, "width"

    .line 4
    .line 5
    const-class v2, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B0:Lu03;

    .line 11
    .line 12
    new-instance v0, Lv03;

    .line 13
    .line 14
    const-string v1, "height"

    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C0:Lv03;

    .line 20
    .line 21
    new-instance v0, Lw03;

    .line 22
    .line 23
    const-string v1, "paddingStart"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v0, v2, v1, v3}, Lw03;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D0:Lw03;

    .line 30
    .line 31
    new-instance v0, Lbm0;

    .line 32
    .line 33
    const-string v1, "paddingEnd"

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v0, v2, v1, v3}, Lbm0;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E0:Lbm0;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04023f

    .line 209
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    const v7, 0x7f14065a

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    invoke-static {v1, v2, v4, v7}, Lzm5;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    iput v8, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l0:I

    .line 21
    .line 22
    const/4 v9, 0x1

    .line 23
    iput-boolean v9, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->m0:Z

    .line 24
    .line 25
    new-instance v1, Ltr9;

    .line 26
    .line 27
    invoke-direct {v1, v9, v8}, Ltr9;-><init>(IZ)V

    .line 28
    .line 29
    .line 30
    new-instance v10, Lz03;

    .line 31
    .line 32
    invoke-direct {v10, v0, v1}, Lz03;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ltr9;)V

    .line 33
    .line 34
    .line 35
    iput-object v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p0:Lz03;

    .line 36
    .line 37
    new-instance v11, Ly03;

    .line 38
    .line 39
    invoke-direct {v11, v0, v1}, Ly03;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ltr9;)V

    .line 40
    .line 41
    .line 42
    iput-object v11, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q0:Ly03;

    .line 43
    .line 44
    iput-boolean v9, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v0:Z

    .line 45
    .line 46
    iput-boolean v8, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w0:Z

    .line 47
    .line 48
    iput-boolean v8, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x0:Z

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    .line 55
    .line 56
    invoke-direct {v3, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    .line 58
    .line 59
    iput-object v3, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    .line 60
    .line 61
    const v5, 0x7f14065a

    .line 62
    .line 63
    .line 64
    new-array v6, v8, [I

    .line 65
    .line 66
    sget-object v3, Ltd6;->l:[I

    .line 67
    .line 68
    invoke-static/range {v1 .. v6}, Ljd4;->B(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v5, 0x5

    .line 73
    invoke-static {v1, v3, v5}, Lph5;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lph5;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const/4 v12, 0x4

    .line 78
    invoke-static {v1, v3, v12}, Lph5;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lph5;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    const/4 v13, 0x2

    .line 83
    invoke-static {v1, v3, v13}, Lph5;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lph5;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    const/4 v15, 0x6

    .line 88
    invoke-static {v1, v3, v15}, Lph5;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lph5;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    const/4 v13, -0x1

    .line 93
    invoke-virtual {v3, v8, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    iput v13, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->r0:I

    .line 98
    .line 99
    const/4 v13, 0x3

    .line 100
    invoke-virtual {v3, v13, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    iput v5, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s0:I

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    iput v5, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t0:I

    .line 115
    .line 116
    new-instance v5, Ltr9;

    .line 117
    .line 118
    invoke-direct {v5, v9, v8}, Ltr9;-><init>(IZ)V

    .line 119
    .line 120
    .line 121
    new-instance v9, Lx03;

    .line 122
    .line 123
    new-instance v8, Lnh;

    .line 124
    .line 125
    invoke-direct {v8, v0, v15}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    new-instance v15, Lro;

    .line 129
    .line 130
    move-object/from16 v16, v1

    .line 131
    .line 132
    move-object/from16 v17, v3

    .line 133
    .line 134
    const/4 v1, 0x5

    .line 135
    const/4 v3, 0x0

    .line 136
    invoke-direct {v15, v0, v8, v1, v3}, Lro;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 137
    .line 138
    .line 139
    new-instance v1, Lgd;

    .line 140
    .line 141
    invoke-direct {v1, v0, v15, v8}, Lgd;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lro;Lnh;)V

    .line 142
    .line 143
    .line 144
    const/4 v3, 0x1

    .line 145
    if-eq v13, v3, :cond_1

    .line 146
    .line 147
    const/4 v3, 0x2

    .line 148
    if-eq v13, v3, :cond_0

    .line 149
    .line 150
    move-object v8, v1

    .line 151
    :goto_0
    const/4 v3, 0x1

    .line 152
    goto :goto_1

    .line 153
    :cond_0
    move-object v8, v15

    .line 154
    goto :goto_0

    .line 155
    :cond_1
    :goto_1
    invoke-direct {v9, v0, v5, v8, v3}, Lx03;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ltr9;La13;Z)V

    .line 156
    .line 157
    .line 158
    iput-object v9, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o0:Lx03;

    .line 159
    .line 160
    new-instance v1, Lx03;

    .line 161
    .line 162
    new-instance v3, Lkm8;

    .line 163
    .line 164
    invoke-direct {v3, v0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    const/4 v8, 0x0

    .line 168
    invoke-direct {v1, v0, v5, v3, v8}, Lx03;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ltr9;La13;Z)V

    .line 169
    .line 170
    .line 171
    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n0:Lx03;

    .line 172
    .line 173
    iput-object v6, v10, Lcm0;->f:Lph5;

    .line 174
    .line 175
    iput-object v12, v11, Lcm0;->f:Lph5;

    .line 176
    .line 177
    iput-object v14, v9, Lcm0;->f:Lph5;

    .line 178
    .line 179
    iput-object v7, v1, Lcm0;->f:Lph5;

    .line 180
    .line 181
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    .line 183
    .line 184
    sget-object v1, Ltb7;->m:Lvi6;

    .line 185
    .line 186
    move-object/from16 v3, v16

    .line 187
    .line 188
    const v5, 0x7f14065a

    .line 189
    .line 190
    .line 191
    invoke-static {v3, v2, v4, v5, v1}, Ltb7;->i(Landroid/content/Context;Landroid/util/AttributeSet;IILlx1;)Lsb7;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lsb7;->a()Ltb7;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Ltb7;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y0:Landroid/content/res/ColorStateList;

    .line 207
    .line 208
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getTooltipText()Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-string p0, "com.google.android.material.floatingactionbutton.FloatingActionButton"

    .line 2
    .line 3
    return-object p0
.end method

.method public getBehavior()Lew1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lew1;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCollapsedPadding()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sub-int/2addr v0, p0

    .line 10
    div-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    return v0
.end method

.method public getCollapsedSize()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->r0:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    mul-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    add-int/2addr p0, v0

    .line 24
    return p0

    .line 25
    :cond_0
    return v0
.end method

.method public getCurrentOriginalTextColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public getExtendMotionSpec()Lph5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o0:Lx03;

    .line 2
    .line 3
    iget-object p0, p0, Lcm0;->f:Lph5;

    .line 4
    .line 5
    return-object p0
.end method

.method public getHideMotionSpec()Lph5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q0:Ly03;

    .line 2
    .line 3
    iget-object p0, p0, Lcm0;->f:Lph5;

    .line 4
    .line 5
    return-object p0
.end method

.method public getOriginalTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getShowMotionSpec()Lph5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p0:Lz03;

    .line 2
    .line 3
    iget-object p0, p0, Lcm0;->f:Lph5;

    .line 4
    .line 5
    return-object p0
.end method

.method public getShrinkMotionSpec()Lph5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n0:Lx03;

    .line 2
    .line 3
    iget-object p0, p0, Lcm0;->f:Lph5;

    .line 4
    .line 5
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v0:Z

    .line 26
    .line 27
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n0:Lx03;

    .line 28
    .line 29
    invoke-virtual {p0}, Lx03;->g()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setAnimateShowBeforeLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->m0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setCollapsedSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->r0:I

    .line 2
    .line 3
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setExtendMotionSpec(Lph5;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o0:Lx03;

    .line 2
    .line 3
    iput-object p1, p0, Lcm0;->f:Lph5;

    .line 4
    .line 5
    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lph5;->b(Landroid/content/Context;I)Lph5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Lph5;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setExtended(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v0:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o0:Lx03;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n0:Lx03;

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0}, Lx03;->h()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    :goto_1
    return-void

    .line 20
    :cond_2
    invoke-virtual {p0}, Lx03;->g()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setHideMotionSpec(Lph5;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q0:Ly03;

    .line 2
    .line 3
    iput-object p1, p0, Lcm0;->f:Lph5;

    .line 4
    .line 5
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lph5;->b(Landroid/content/Context;I)Lph5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Lph5;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v0:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w0:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s0:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t0:I

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v0:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w0:Z

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s0:I

    .line 13
    .line 14
    iput p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t0:I

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Lph5;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p0:Lz03;

    .line 2
    .line 3
    iput-object p1, p0, Lcm0;->f:Lph5;

    .line 4
    .line 5
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lph5;->b(Landroid/content/Context;I)Lph5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Lph5;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setShrinkMotionSpec(Lph5;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n0:Lx03;

    .line 2
    .line 3
    iput-object p1, p0, Lcm0;->f:Lph5;

    .line 4
    .line 5
    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lph5;->b(Landroid/content/Context;I)Lph5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Lph5;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y0:Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y0:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public final y(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    if-eq p1, v1, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne p1, v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o0:Lx03;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "Unknown strategy type: "

    .line 16
    .line 17
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n0:Lx03;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q0:Ly03;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p0:Lz03;

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v2}, Lcm0;->h()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    return-void

    .line 40
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->m0:Z

    .line 41
    .line 42
    if-eqz v3, :cond_b

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_7

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget v4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l0:I

    .line 55
    .line 56
    if-eqz v3, :cond_5

    .line 57
    .line 58
    if-ne v4, v1, :cond_6

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    if-eq v4, v0, :cond_6

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_6
    iget-boolean v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x0:Z

    .line 65
    .line 66
    if-eqz v3, :cond_b

    .line 67
    .line 68
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_b

    .line 73
    .line 74
    if-ne p1, v1, :cond_9

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_8

    .line 81
    .line 82
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    .line 84
    iput v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z0:I

    .line 85
    .line 86
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    .line 88
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A0:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z0:I

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A0:I

    .line 102
    .line 103
    :cond_9
    :goto_1
    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->measure(II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Lcm0;->a()Landroid/animation/AnimatorSet;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance p1, Lwn0;

    .line 112
    .line 113
    invoke-direct {p1, v2, v0}, Lwn0;-><init>(Ljava/lang/Object;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, v2, Lcm0;->c:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_a

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_a
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_b
    :goto_3
    invoke-virtual {v2}, Lcm0;->g()V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final z(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
