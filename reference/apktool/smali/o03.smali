.class public abstract Lo03;
.super Lw5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final n:Landroid/graphics/Rect;

.field public static final o:Lge;

.field public static final p:Lfo8;


# instance fields
.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:[I

.field public final h:Landroid/view/accessibility/AccessibilityManager;

.field public final i:Landroid/view/View;

.field public j:Ln03;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/high16 v2, -0x80000000

    .line 7
    .line 8
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lo03;->n:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance v0, Lge;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lo03;->o:Lge;

    .line 19
    .line 20
    new-instance v0, Lfo8;

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lfo8;-><init>(I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lo03;->p:Lfo8;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lw5;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo03;->d:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lo03;->e:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lo03;->f:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    iput-object v0, p0, Lo03;->g:[I

    .line 29
    .line 30
    const/high16 v0, -0x80000000

    .line 31
    .line 32
    iput v0, p0, Lo03;->k:I

    .line 33
    .line 34
    iput v0, p0, Lo03;->l:I

    .line 35
    .line 36
    iput v0, p0, Lo03;->m:I

    .line 37
    .line 38
    iput-object p1, p0, Lo03;->i:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "accessibility"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 51
    .line 52
    iput-object v0, p0, Lo03;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Lzq8;
    .locals 0

    .line 1
    iget-object p1, p0, Lo03;->j:Ln03;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ln03;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Ln03;-><init>(Lo03;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lo03;->j:Ln03;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lo03;->j:Ln03;

    .line 13
    .line 14
    return-object p0
.end method

.method public final d(Landroid/view/View;Lm6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw5;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    .line 3
    iget-object v1, p2, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lo03;->s(Lm6;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lo03;->l:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/high16 v0, -0x80000000

    .line 8
    .line 9
    iput v0, p0, Lo03;->l:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v1}, Lo03;->u(IZ)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Lo03;->w(II)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public final k(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Lo03;->i:Landroid/view/View;

    .line 3
    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p1}, Lo03;->q(I)Lm6;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lm6;->f()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-string p0, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    .line 80
    .line 81
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x0

    .line 85
    return-object p0

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    return-object p2

    .line 108
    :cond_2
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v1, p0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 113
    .line 114
    .line 115
    return-object p0
.end method

.method public final l(I)Lm6;
    .locals 10

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lm6;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lm6;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 15
    .line 16
    .line 17
    const-string v3, "android.view.View"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lm6;->i(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lo03;->n:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Lm6;->h(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lo03;->i:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v1}, Lo03;->t(ILm6;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lm6;->f()Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/4 v6, 0x0

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string p0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    .line 53
    .line 54
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v6

    .line 58
    :cond_1
    :goto_0
    iget-object v5, p0, Lo03;->e:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 61
    .line 62
    .line 63
    iget-object v7, p0, Lo03;->d:Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_3

    .line 73
    .line 74
    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-nez v8, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const-string p0, "Callbacks must set parent bounds or screen bounds in populateNodeForVirtualViewId()"

    .line 82
    .line 83
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v6

    .line 87
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    and-int/lit8 v9, v8, 0x40

    .line 92
    .line 93
    if-nez v9, :cond_f

    .line 94
    .line 95
    const/16 v9, 0x80

    .line 96
    .line 97
    and-int/2addr v8, v9

    .line 98
    if-nez v8, :cond_e

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iput p1, v1, Lm6;->b:I

    .line 112
    .line 113
    invoke-virtual {v0, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 114
    .line 115
    .line 116
    iget v6, p0, Lo03;->k:I

    .line 117
    .line 118
    const/4 v8, 0x0

    .line 119
    if-ne v6, p1, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v9}, Lm6;->a(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {v0, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 129
    .line 130
    .line 131
    const/16 v6, 0x40

    .line 132
    .line 133
    invoke-virtual {v1, v6}, Lm6;->a(I)V

    .line 134
    .line 135
    .line 136
    :goto_2
    iget v6, p0, Lo03;->l:I

    .line 137
    .line 138
    if-ne v6, p1, :cond_5

    .line 139
    .line 140
    move p1, v2

    .line 141
    goto :goto_3

    .line 142
    :cond_5
    move p1, v8

    .line 143
    :goto_3
    if-eqz p1, :cond_6

    .line 144
    .line 145
    const/4 v6, 0x2

    .line 146
    invoke-virtual {v1, v6}, Lm6;->a(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_7

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lm6;->a(I)V

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_4
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lo03;->g:[I

    .line 163
    .line 164
    invoke-virtual {v4, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_8

    .line 172
    .line 173
    invoke-virtual {v1, v5}, Lm6;->h(Landroid/graphics/Rect;)V

    .line 174
    .line 175
    .line 176
    new-instance v3, Landroid/graphics/Rect;

    .line 177
    .line 178
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 185
    .line 186
    .line 187
    aget v5, p1, v8

    .line 188
    .line 189
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    sub-int/2addr v5, v6

    .line 194
    aget v6, p1, v2

    .line 195
    .line 196
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    sub-int/2addr v6, v9

    .line 201
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    iget-object p0, p0, Lo03;->f:Landroid/graphics/Rect;

    .line 211
    .line 212
    invoke-virtual {v4, p0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_d

    .line 217
    .line 218
    aget v3, p1, v8

    .line 219
    .line 220
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    sub-int/2addr v3, v5

    .line 225
    aget p1, p1, v2

    .line 226
    .line 227
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    sub-int/2addr p1, v5

    .line 232
    invoke-virtual {p0, v3, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    if-eqz p0, :cond_d

    .line 240
    .line 241
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    if-eqz p0, :cond_9

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-eqz p0, :cond_a

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    :goto_5
    instance-of p1, p0, Landroid/view/View;

    .line 263
    .line 264
    if-eqz p1, :cond_c

    .line 265
    .line 266
    check-cast p0, Landroid/view/View;

    .line 267
    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    const/4 v0, 0x0

    .line 273
    cmpg-float p1, p1, v0

    .line 274
    .line 275
    if-lez p1, :cond_d

    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_b

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    goto :goto_5

    .line 289
    :cond_c
    if-eqz p0, :cond_d

    .line 290
    .line 291
    iget-object p0, v1, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 292
    .line 293
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 294
    .line 295
    .line 296
    :cond_d
    :goto_6
    return-object v1

    .line 297
    :cond_e
    const-string p0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 298
    .line 299
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-object v6

    .line 303
    :cond_f
    const-string p0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 304
    .line 305
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    return-object v6
.end method

.method public final m(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lo03;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x7

    .line 21
    const/16 v2, 0x100

    .line 22
    .line 23
    const/16 v3, 0x80

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    const/high16 v5, -0x80000000

    .line 27
    .line 28
    if-eq v0, v1, :cond_3

    .line 29
    .line 30
    const/16 v1, 0x9

    .line 31
    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    const/16 p1, 0xa

    .line 35
    .line 36
    if-eq v0, p1, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget p1, p0, Lo03;->m:I

    .line 40
    .line 41
    if-eq p1, v5, :cond_5

    .line 42
    .line 43
    if-ne p1, v5, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iput v5, p0, Lo03;->m:I

    .line 47
    .line 48
    invoke-virtual {p0, v5, v3}, Lo03;->w(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, v2}, Lo03;->w(II)V

    .line 52
    .line 53
    .line 54
    return v4

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {p0, v0, p1}, Lo03;->n(FF)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget v0, p0, Lo03;->m:I

    .line 68
    .line 69
    if-ne v0, p1, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iput p1, p0, Lo03;->m:I

    .line 73
    .line 74
    invoke-virtual {p0, p1, v3}, Lo03;->w(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0, v2}, Lo03;->w(II)V

    .line 78
    .line 79
    .line 80
    :goto_0
    if-eq p1, v5, :cond_5

    .line 81
    .line 82
    :goto_1
    return v4

    .line 83
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 84
    return p0
.end method

.method public abstract n(FF)I
.end method

.method public abstract o(Ljava/util/ArrayList;)V
.end method

.method public final p(ILandroid/graphics/Rect;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lo03;->o(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lyj7;

    .line 16
    .line 17
    invoke-direct {v4}, Lyj7;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    move v6, v5

    .line 22
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-ge v6, v7, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-virtual {v0, v7}, Lo03;->l(I)Lm6;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual {v4, v8, v7}, Lyj7;->b(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget v3, v0, Lo03;->l:I

    .line 59
    .line 60
    const/high16 v7, -0x80000000

    .line 61
    .line 62
    if-ne v3, v7, :cond_1

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v4, v3}, Lyj7;->a(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lm6;

    .line 71
    .line 72
    :goto_1
    sget-object v8, Lo03;->o:Lge;

    .line 73
    .line 74
    sget-object v9, Lo03;->p:Lfo8;

    .line 75
    .line 76
    iget-object v10, v0, Lo03;->i:Landroid/view/View;

    .line 77
    .line 78
    const/4 v11, 0x2

    .line 79
    const/4 v12, -0x1

    .line 80
    const/4 v13, 0x1

    .line 81
    if-eq v1, v13, :cond_15

    .line 82
    .line 83
    if-eq v1, v11, :cond_15

    .line 84
    .line 85
    const/16 v11, 0x82

    .line 86
    .line 87
    const/16 v14, 0x42

    .line 88
    .line 89
    const/16 v15, 0x21

    .line 90
    .line 91
    const/16 v6, 0x11

    .line 92
    .line 93
    if-eq v1, v6, :cond_2

    .line 94
    .line 95
    if-eq v1, v15, :cond_2

    .line 96
    .line 97
    if-eq v1, v14, :cond_2

    .line 98
    .line 99
    if-ne v1, v11, :cond_3

    .line 100
    .line 101
    :cond_2
    move/from16 v17, v13

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    const-string v0, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 105
    .line 106
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return v5

    .line 110
    :goto_2
    new-instance v13, Landroid/graphics/Rect;

    .line 111
    .line 112
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .line 114
    .line 115
    iget v5, v0, Lo03;->l:I

    .line 116
    .line 117
    const-string v19, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 118
    .line 119
    if-eq v5, v7, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0, v5}, Lo03;->q(I)Lm6;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v2, v2, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 126
    .line 127
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    if-eqz v2, :cond_5

    .line 132
    .line 133
    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eq v1, v6, :cond_9

    .line 146
    .line 147
    if-eq v1, v15, :cond_8

    .line 148
    .line 149
    if-eq v1, v14, :cond_7

    .line 150
    .line 151
    if-ne v1, v11, :cond_6

    .line 152
    .line 153
    const/4 v10, 0x0

    .line 154
    invoke-virtual {v13, v10, v12, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    const/4 v10, 0x0

    .line 159
    invoke-static/range {v19 .. v19}, Lc6;->f(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return v10

    .line 163
    :cond_7
    const/4 v10, 0x0

    .line 164
    invoke-virtual {v13, v12, v10, v12, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_8
    const/4 v10, 0x0

    .line 169
    invoke-virtual {v13, v10, v5, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_9
    const/4 v10, 0x0

    .line 174
    invoke-virtual {v13, v2, v10, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    .line 176
    .line 177
    :goto_3
    new-instance v2, Landroid/graphics/Rect;

    .line 178
    .line 179
    invoke-direct {v2, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 180
    .line 181
    .line 182
    if-eq v1, v6, :cond_d

    .line 183
    .line 184
    if-eq v1, v15, :cond_c

    .line 185
    .line 186
    if-eq v1, v14, :cond_b

    .line 187
    .line 188
    if-ne v1, v11, :cond_a

    .line 189
    .line 190
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    neg-int v5, v5

    .line 197
    const/4 v10, 0x0

    .line 198
    invoke-virtual {v2, v10, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_a
    const/4 v10, 0x0

    .line 203
    invoke-static/range {v19 .. v19}, Lc6;->f(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return v10

    .line 207
    :cond_b
    const/4 v10, 0x0

    .line 208
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    add-int/lit8 v5, v5, 0x1

    .line 213
    .line 214
    neg-int v5, v5

    .line 215
    invoke-virtual {v2, v5, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_c
    const/4 v10, 0x0

    .line 220
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    add-int/lit8 v5, v5, 0x1

    .line 225
    .line 226
    invoke-virtual {v2, v10, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_d
    const/4 v10, 0x0

    .line 231
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 236
    .line 237
    invoke-virtual {v2, v5, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 238
    .line 239
    .line 240
    :goto_4
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget v5, v4, Lyj7;->c:I

    .line 244
    .line 245
    new-instance v6, Landroid/graphics/Rect;

    .line 246
    .line 247
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 248
    .line 249
    .line 250
    const/4 v10, 0x0

    .line 251
    const/16 v16, 0x0

    .line 252
    .line 253
    :goto_5
    if-ge v10, v5, :cond_14

    .line 254
    .line 255
    invoke-virtual {v4, v10}, Lyj7;->c(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    check-cast v9, Lm6;

    .line 260
    .line 261
    if-ne v9, v3, :cond_e

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    iget-object v11, v9, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 268
    .line 269
    invoke-virtual {v11, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v1, v13, v6}, Lvm4;->t(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    if-nez v11, :cond_f

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_f
    invoke-static {v1, v13, v2}, Lvm4;->t(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 280
    .line 281
    .line 282
    move-result v11

    .line 283
    if-nez v11, :cond_10

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_10
    invoke-static {v1, v13, v6, v2}, Lvm4;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 287
    .line 288
    .line 289
    move-result v11

    .line 290
    if-eqz v11, :cond_11

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_11
    invoke-static {v1, v13, v2, v6}, Lvm4;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 294
    .line 295
    .line 296
    move-result v11

    .line 297
    if-eqz v11, :cond_12

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_12
    invoke-static {v1, v13, v6}, Lvm4;->w(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    invoke-static {v1, v13, v6}, Lvm4;->x(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 305
    .line 306
    .line 307
    move-result v14

    .line 308
    mul-int/lit8 v15, v11, 0xd

    .line 309
    .line 310
    mul-int/2addr v15, v11

    .line 311
    mul-int/2addr v14, v14

    .line 312
    add-int/2addr v14, v15

    .line 313
    invoke-static {v1, v13, v2}, Lvm4;->w(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 314
    .line 315
    .line 316
    move-result v11

    .line 317
    invoke-static {v1, v13, v2}, Lvm4;->x(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 318
    .line 319
    .line 320
    move-result v15

    .line 321
    mul-int/lit8 v17, v11, 0xd

    .line 322
    .line 323
    mul-int v17, v17, v11

    .line 324
    .line 325
    mul-int/2addr v15, v15

    .line 326
    add-int v15, v15, v17

    .line 327
    .line 328
    if-ge v14, v15, :cond_13

    .line 329
    .line 330
    :goto_6
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v16, v9

    .line 334
    .line 335
    :cond_13
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_14
    const/16 v18, 0x0

    .line 339
    .line 340
    :goto_8
    move-object/from16 v1, v16

    .line 341
    .line 342
    goto/16 :goto_10

    .line 343
    .line 344
    :cond_15
    move/from16 v17, v13

    .line 345
    .line 346
    invoke-virtual {v10}, Landroid/view/View;->getLayoutDirection()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    move/from16 v5, v17

    .line 351
    .line 352
    if-ne v2, v5, :cond_16

    .line 353
    .line 354
    const/4 v2, 0x1

    .line 355
    goto :goto_9

    .line 356
    :cond_16
    const/4 v2, 0x0

    .line 357
    :goto_9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    iget v5, v4, Lyj7;->c:I

    .line 361
    .line 362
    new-instance v6, Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .line 366
    .line 367
    const/4 v10, 0x0

    .line 368
    :goto_a
    if-ge v10, v5, :cond_17

    .line 369
    .line 370
    invoke-virtual {v4, v10}, Lyj7;->c(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    check-cast v9, Lm6;

    .line 375
    .line 376
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    add-int/lit8 v10, v10, 0x1

    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_17
    new-instance v5, Lgj3;

    .line 383
    .line 384
    invoke-direct {v5, v2, v8}, Lgj3;-><init>(ZLge;)V

    .line 385
    .line 386
    .line 387
    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 388
    .line 389
    .line 390
    const/4 v5, 0x1

    .line 391
    if-eq v1, v5, :cond_1b

    .line 392
    .line 393
    if-ne v1, v11, :cond_1a

    .line 394
    .line 395
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-nez v3, :cond_18

    .line 400
    .line 401
    move v2, v12

    .line 402
    goto :goto_b

    .line 403
    :cond_18
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    :goto_b
    add-int/2addr v2, v5

    .line 408
    if-ge v2, v1, :cond_19

    .line 409
    .line 410
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    :goto_c
    const/16 v18, 0x0

    .line 415
    .line 416
    goto :goto_f

    .line 417
    :cond_19
    const/4 v6, 0x0

    .line 418
    goto :goto_c

    .line 419
    :cond_1a
    const-string v0, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 420
    .line 421
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    const/16 v18, 0x0

    .line 425
    .line 426
    return v18

    .line 427
    :cond_1b
    const/16 v18, 0x0

    .line 428
    .line 429
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-nez v3, :cond_1c

    .line 434
    .line 435
    :goto_d
    const/16 v17, 0x1

    .line 436
    .line 437
    goto :goto_e

    .line 438
    :cond_1c
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    goto :goto_d

    .line 443
    :goto_e
    add-int/lit8 v1, v1, -0x1

    .line 444
    .line 445
    if-ltz v1, :cond_1d

    .line 446
    .line 447
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    goto :goto_f

    .line 452
    :cond_1d
    const/4 v6, 0x0

    .line 453
    :goto_f
    move-object/from16 v16, v6

    .line 454
    .line 455
    check-cast v16, Lm6;

    .line 456
    .line 457
    goto :goto_8

    .line 458
    :goto_10
    if-nez v1, :cond_1e

    .line 459
    .line 460
    goto :goto_13

    .line 461
    :cond_1e
    iget v2, v4, Lyj7;->c:I

    .line 462
    .line 463
    move/from16 v5, v18

    .line 464
    .line 465
    :goto_11
    if-ge v5, v2, :cond_20

    .line 466
    .line 467
    iget-object v3, v4, Lyj7;->b:[Ljava/lang/Object;

    .line 468
    .line 469
    aget-object v3, v3, v5

    .line 470
    .line 471
    if-ne v3, v1, :cond_1f

    .line 472
    .line 473
    move v12, v5

    .line 474
    goto :goto_12

    .line 475
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    .line 476
    .line 477
    goto :goto_11

    .line 478
    :cond_20
    :goto_12
    iget-object v1, v4, Lyj7;->a:[I

    .line 479
    .line 480
    aget v7, v1, v12

    .line 481
    .line 482
    :goto_13
    invoke-virtual {v0, v7}, Lo03;->v(I)Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    return v0
.end method

.method public final q(I)Lm6;
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    .line 4
    iget-object p1, p0, Lo03;->i:Landroid/view/View;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lm6;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lm6;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lo03;->o(Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-lez p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-gtz p0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "Views cannot have both real and virtual children"

    .line 42
    .line 43
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_1
    if-ge v0, p0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iget-object v4, v1, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 66
    .line 67
    invoke-virtual {v4, p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    return-object v1

    .line 74
    :cond_3
    invoke-virtual {p0, p1}, Lo03;->l(I)Lm6;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public abstract r(IILandroid/os/Bundle;)Z
.end method

.method public s(Lm6;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract t(ILm6;)V
.end method

.method public u(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final v(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo03;->i:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Lo03;->l:I

    .line 17
    .line 18
    if-ne v0, p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/high16 v1, -0x80000000

    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lo03;->j(I)Z

    .line 26
    .line 27
    .line 28
    :cond_2
    if-ne p1, v1, :cond_3

    .line 29
    .line 30
    :goto_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_3
    iput p1, p0, Lo03;->l:I

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, p1, v0}, Lo03;->u(IZ)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-virtual {p0, p1, v1}, Lo03;->w(II)V

    .line 41
    .line 42
    .line 43
    return v0
.end method

.method public final w(II)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lo03;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lo03;->i:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, p1, p2}, Lo03;->k(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {v1, v0, p0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method
