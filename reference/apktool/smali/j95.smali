.class public final Lj95;
.super Landroidx/fragment/app/h;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final I:Ljava/util/LinkedHashSet;

.field public final J:Ljava/util/LinkedHashSet;

.field public final K:Ljava/util/LinkedHashSet;

.field public final L:Ljava/util/LinkedHashSet;

.field public M:Lcom/google/android/material/timepicker/TimePickerView;

.field public N:Landroid/view/ViewStub;

.field public O:Lm38;

.field public P:Lv38;

.field public Q:Ln38;

.field public R:I

.field public S:I

.field public T:I

.field public U:Ljava/lang/CharSequence;

.field public V:I

.field public W:Ljava/lang/CharSequence;

.field public X:I

.field public Y:Ljava/lang/CharSequence;

.field public Z:Lcom/google/android/material/button/MaterialButton;

.field public a0:Landroid/widget/Button;

.field public b0:Landroid/widget/Button;

.field public c0:I

.field public d0:Lj38;

.field public e0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/h;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lj95;->I:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lj95;->J:Ljava/util/LinkedHashSet;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lj95;->K:Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lj95;->L:Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lj95;->T:I

    .line 34
    .line 35
    iput v0, p0, Lj95;->V:I

    .line 36
    .line 37
    iput v0, p0, Lj95;->X:I

    .line 38
    .line 39
    iput v0, p0, Lj95;->c0:I

    .line 40
    .line 41
    iput v0, p0, Lj95;->e0:I

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final j()Landroid/app/Dialog;
    .locals 8

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lj95;->e0:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const v4, 0x7f04041b

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2, v4}, Ljm1;->P(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    move v2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 33
    .line 34
    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lc95;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    const v5, 0x7f04041a

    .line 45
    .line 46
    .line 47
    const v6, 0x7f140698

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v1, v4, v5, v6}, Lc95;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    .line 52
    .line 53
    sget-object v7, Ltd6;->I:[I

    .line 54
    .line 55
    invoke-virtual {v1, v4, v7, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    iput v6, p0, Lj95;->S:I

    .line 65
    .line 66
    const/4 v6, 0x2

    .line 67
    invoke-virtual {v4, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iput v6, p0, Lj95;->R:I

    .line 72
    .line 73
    invoke-virtual {v4, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Lc95;->p(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v2, p0}, Lc95;->t(Landroid/content/res/ColorStateList;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 98
    .line 99
    .line 100
    const/4 v1, -0x2

    .line 101
    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    invoke-virtual {v2, p0}, Lc95;->s(F)V

    .line 113
    .line 114
    .line 115
    return-object v0
.end method

.method public final l(Lcom/google/android/material/button/MaterialButton;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    iget-object v0, p0, Lj95;->M:Lcom/google/android/material/timepicker/TimePickerView;

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-object v0, p0, Lj95;->N:Landroid/view/ViewStub;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lj95;->Q:Ln38;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ln38;->c()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget v0, p0, Lj95;->c0:I

    .line 21
    .line 22
    iget-object v1, p0, Lj95;->M:Lcom/google/android/material/timepicker/TimePickerView;

    .line 23
    .line 24
    iget-object v2, p0, Lj95;->N:Landroid/view/ViewStub;

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lj95;->O:Lm38;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    new-instance v0, Lm38;

    .line 33
    .line 34
    iget-object v2, p0, Lj95;->d0:Lj38;

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Lm38;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Lj38;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iput-object v0, p0, Lj95;->O:Lm38;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget-object v0, p0, Lj95;->P:Lv38;

    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/LinearLayout;

    .line 51
    .line 52
    new-instance v1, Lv38;

    .line 53
    .line 54
    iget-object v2, p0, Lj95;->d0:Lj38;

    .line 55
    .line 56
    invoke-direct {v1, v0, v2}, Lv38;-><init>(Landroid/widget/LinearLayout;Lj38;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lj95;->P:Lv38;

    .line 60
    .line 61
    :cond_4
    iget-object v0, p0, Lj95;->P:Lv38;

    .line 62
    .line 63
    invoke-virtual {v0}, Lv38;->e()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lv38;->d()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lj95;->P:Lv38;

    .line 70
    .line 71
    iget-object v1, v0, Lv38;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lv38;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lj95;->P:Lv38;

    .line 83
    .line 84
    :goto_0
    iput-object v0, p0, Lj95;->Q:Ln38;

    .line 85
    .line 86
    invoke-interface {v0}, Ln38;->b()V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lj95;->Q:Ln38;

    .line 90
    .line 91
    invoke-interface {v0}, Ln38;->invalidate()V

    .line 92
    .line 93
    .line 94
    iget v0, p0, Lj95;->c0:I

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    if-ne v0, v1, :cond_5

    .line 100
    .line 101
    new-instance v0, Li95;

    .line 102
    .line 103
    iget v1, p0, Lj95;->S:I

    .line 104
    .line 105
    const v2, 0x7f130334

    .line 106
    .line 107
    .line 108
    const v3, 0x7f130335

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1, v2, v3}, Li95;-><init>(III)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    const-string p0, "no button data for mode: "

    .line 116
    .line 117
    invoke-static {v0, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_6
    new-instance v0, Li95;

    .line 126
    .line 127
    iget v1, p0, Lj95;->R:I

    .line 128
    .line 129
    const v2, 0x7f13033d

    .line 130
    .line 131
    .line 132
    const v3, 0x7f13033e

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, v1, v2, v3}, Li95;-><init>(III)V

    .line 136
    .line 137
    .line 138
    :goto_1
    iget v1, v0, Li95;->a:I

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget v2, v0, Li95;->b:I

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    iget v0, v0, Li95;->c:I

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {p1, p0}, Ls88;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    const/4 p0, 0x4

    .line 170
    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_2
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lj95;->K:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/h;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const-string v0, "TIME_PICKER_TIME_MODEL"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lj38;

    .line 20
    .line 21
    iput-object v0, p0, Lj95;->d0:Lj38;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Lj38;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lj38;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lj95;->d0:Lj38;

    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v2, 0x7f050005

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Lj95;->d0:Lj38;

    .line 48
    .line 49
    iget v0, v0, Lj38;->a:I

    .line 50
    .line 51
    if-ne v0, v2, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move v2, v1

    .line 55
    :cond_4
    :goto_0
    const-string v0, "TIME_PICKER_INPUT_MODE"

    .line 56
    .line 57
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lj95;->c0:I

    .line 62
    .line 63
    const-string v0, "TIME_PICKER_TITLE_RES"

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lj95;->T:I

    .line 70
    .line 71
    const-string v0, "TIME_PICKER_TITLE_TEXT"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lj95;->U:Ljava/lang/CharSequence;

    .line 78
    .line 79
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p0, Lj95;->V:I

    .line 86
    .line 87
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lj95;->W:Ljava/lang/CharSequence;

    .line 94
    .line 95
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    .line 96
    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Lj95;->X:I

    .line 102
    .line 103
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lj95;->Y:Ljava/lang/CharSequence;

    .line 110
    .line 111
    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    .line 112
    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iput p1, p0, Lj95;->e0:I

    .line 118
    .line 119
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p3, 0x7f0d00ff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    .line 10
    const p2, 0x7f0a031c

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lcom/google/android/material/timepicker/TimePickerView;

    .line 18
    .line 19
    iput-object p2, p0, Lj95;->M:Lcom/google/android/material/timepicker/TimePickerView;

    .line 20
    .line 21
    iput-object p0, p2, Lcom/google/android/material/timepicker/TimePickerView;->P:Lj95;

    .line 22
    .line 23
    const p2, 0x7f0a0317

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/view/ViewStub;

    .line 31
    .line 32
    iput-object p2, p0, Lj95;->N:Landroid/view/ViewStub;

    .line 33
    .line 34
    const p2, 0x7f0a031a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 42
    .line 43
    iput-object p2, p0, Lj95;->Z:Lcom/google/android/material/button/MaterialButton;

    .line 44
    .line 45
    const p2, 0x7f0a031b

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Landroid/widget/Button;

    .line 53
    .line 54
    iput-object p2, p0, Lj95;->a0:Landroid/widget/Button;

    .line 55
    .line 56
    const p2, 0x7f0a0318

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Landroid/widget/Button;

    .line 64
    .line 65
    iput-object p2, p0, Lj95;->b0:Landroid/widget/Button;

    .line 66
    .line 67
    const p2, 0x7f0a0257

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Landroid/widget/TextView;

    .line 75
    .line 76
    iget p3, p0, Lj95;->T:I

    .line 77
    .line 78
    if-eqz p3, :cond_0

    .line 79
    .line 80
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    iget-object p3, p0, Lj95;->U:Ljava/lang/CharSequence;

    .line 85
    .line 86
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    if-nez p3, :cond_1

    .line 91
    .line 92
    iget-object p3, p0, Lj95;->U:Ljava/lang/CharSequence;

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    iget-object p2, p0, Lj95;->Z:Lcom/google/android/material/button/MaterialButton;

    .line 98
    .line 99
    invoke-virtual {p0, p2}, Lj95;->l(Lcom/google/android/material/button/MaterialButton;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lj95;->a0:Landroid/widget/Button;

    .line 103
    .line 104
    new-instance p3, Li10;

    .line 105
    .line 106
    const/4 v0, 0x6

    .line 107
    invoke-direct {p3, v0, p0, p1}, Li10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget p2, p0, Lj95;->V:I

    .line 114
    .line 115
    if-eqz p2, :cond_2

    .line 116
    .line 117
    iget-object p3, p0, Lj95;->a0:Landroid/widget/Button;

    .line 118
    .line 119
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    iget-object p2, p0, Lj95;->W:Ljava/lang/CharSequence;

    .line 124
    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-nez p2, :cond_3

    .line 130
    .line 131
    iget-object p2, p0, Lj95;->a0:Landroid/widget/Button;

    .line 132
    .line 133
    iget-object p3, p0, Lj95;->W:Ljava/lang/CharSequence;

    .line 134
    .line 135
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_1
    iget-object p2, p0, Lj95;->b0:Landroid/widget/Button;

    .line 139
    .line 140
    new-instance p3, Les;

    .line 141
    .line 142
    const/16 v0, 0xa

    .line 143
    .line 144
    invoke-direct {p3, p0, v0}, Les;-><init>(Ljava/lang/Object;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    iget p2, p0, Lj95;->X:I

    .line 151
    .line 152
    if-eqz p2, :cond_4

    .line 153
    .line 154
    iget-object p3, p0, Lj95;->b0:Landroid/widget/Button;

    .line 155
    .line 156
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    iget-object p2, p0, Lj95;->Y:Ljava/lang/CharSequence;

    .line 161
    .line 162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-nez p2, :cond_5

    .line 167
    .line 168
    iget-object p2, p0, Lj95;->b0:Landroid/widget/Button;

    .line 169
    .line 170
    iget-object p3, p0, Lj95;->Y:Ljava/lang/CharSequence;

    .line 171
    .line 172
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    :cond_5
    :goto_2
    iget-object p2, p0, Lj95;->b0:Landroid/widget/Button;

    .line 176
    .line 177
    const/16 p3, 0x8

    .line 178
    .line 179
    if-eqz p2, :cond_7

    .line 180
    .line 181
    iget-boolean v0, p0, Landroidx/fragment/app/h;->k:Z

    .line 182
    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    const/4 v0, 0x0

    .line 186
    goto :goto_3

    .line 187
    :cond_6
    move v0, p3

    .line 188
    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    :cond_7
    iget-object p2, p0, Lj95;->Z:Lcom/google/android/material/button/MaterialButton;

    .line 192
    .line 193
    new-instance v0, Lxd1;

    .line 194
    .line 195
    invoke-direct {v0, p0, p3}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/h;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lj95;->Q:Ln38;

    .line 6
    .line 7
    iput-object v0, p0, Lj95;->O:Lm38;

    .line 8
    .line 9
    iput-object v0, p0, Lj95;->P:Lv38;

    .line 10
    .line 11
    iget-object v1, p0, Lj95;->M:Lcom/google/android/material/timepicker/TimePickerView;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iput-object v0, v1, Lcom/google/android/material/timepicker/TimePickerView;->P:Lj95;

    .line 16
    .line 17
    iput-object v0, p0, Lj95;->M:Lcom/google/android/material/timepicker/TimePickerView;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj95;->L:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/h;->onDismiss(Landroid/content/DialogInterface;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "TIME_PICKER_TIME_MODEL"

    .line 5
    .line 6
    iget-object v1, p0, Lj95;->d0:Lj38;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "TIME_PICKER_INPUT_MODE"

    .line 12
    .line 13
    iget v1, p0, Lj95;->c0:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "TIME_PICKER_TITLE_RES"

    .line 19
    .line 20
    iget v1, p0, Lj95;->T:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v0, "TIME_PICKER_TITLE_TEXT"

    .line 26
    .line 27
    iget-object v1, p0, Lj95;->U:Ljava/lang/CharSequence;

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES"

    .line 33
    .line 34
    iget v1, p0, Lj95;->V:I

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string v0, "TIME_PICKER_POSITIVE_BUTTON_TEXT"

    .line 40
    .line 41
    iget-object v1, p0, Lj95;->W:Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES"

    .line 47
    .line 48
    iget v1, p0, Lj95;->X:I

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const-string v0, "TIME_PICKER_NEGATIVE_BUTTON_TEXT"

    .line 54
    .line 55
    iget-object v1, p0, Lj95;->Y:Ljava/lang/CharSequence;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "TIME_PICKER_OVERRIDE_THEME_RES_ID"

    .line 61
    .line 62
    iget p0, p0, Lj95;->e0:I

    .line 63
    .line 64
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lj95;->Q:Ln38;

    .line 2
    .line 3
    instance-of p2, p2, Lv38;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    new-instance p2, Lyc;

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-direct {p2, p0, v0}, Lyc;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v0, 0x64

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
