.class public Landroidx/preference/SwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final k0:Lgu7;

.field public final l0:Ljava/lang/String;

.field public final m0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    const v0, 0x7f040584

    .line 2
    .line 3
    .line 4
    const v1, 0x101036d

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lx13;->q(Landroid/content/Context;II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lgu7;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lgu7;-><init>(Landroidx/preference/SwitchPreference;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Landroidx/preference/SwitchPreference;->k0:Lgu7;

    .line 21
    .line 22
    sget-object v2, Lde6;->l:[I

    .line 23
    .line 24
    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x7

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :cond_0
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->g0:Ljava/lang/CharSequence;

    .line 40
    .line 41
    iget-boolean p2, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()V

    .line 46
    .line 47
    .line 48
    :cond_1
    const/4 p2, 0x6

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    :cond_2
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->h0:Ljava/lang/CharSequence;

    .line 61
    .line 62
    iget-boolean p2, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 63
    .line 64
    if-nez p2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()V

    .line 67
    .line 68
    .line 69
    :cond_3
    const/16 p2, 0x9

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-nez p2, :cond_4

    .line 76
    .line 77
    const/4 p2, 0x3

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    :cond_4
    iput-object p2, p0, Landroidx/preference/SwitchPreference;->l0:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()V

    .line 85
    .line 86
    .line 87
    const/16 p2, 0x8

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-nez p2, :cond_5

    .line 94
    .line 95
    const/4 p2, 0x4

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    :cond_5
    iput-object p2, p0, Landroidx/preference/SwitchPreference;->m0:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()V

    .line 103
    .line 104
    .line 105
    const/4 p2, 0x2

    .line 106
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    const/4 v0, 0x5

    .line 111
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    iput-boolean p2, p0, Landroidx/preference/TwoStatePreference;->j0:Z

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public final I(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/Switch;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Landroid/widget/Switch;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    check-cast v1, Landroid/widget/Checkable;

    .line 18
    .line 19
    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 20
    .line 21
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eqz v0, :cond_2

    .line 25
    .line 26
    check-cast p1, Landroid/widget/Switch;

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->l0:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->m0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Landroidx/preference/SwitchPreference;->k0:Lgu7;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final l(Lk46;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->l(Lk46;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x1020040

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lk46;->r(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/preference/SwitchPreference;->I(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x1020010

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lk46;->r(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->H(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final w(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->w(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "accessibility"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const v0, 0x1020040

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Landroidx/preference/SwitchPreference;->I(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x1020010

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->H(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
