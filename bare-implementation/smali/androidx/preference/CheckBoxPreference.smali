.class public Landroidx/preference/CheckBoxPreference;
.super Landroidx/preference/TwoStatePreference;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final k0:Lt51;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0400d2

    const v1, 0x101008f

    .line 76
    invoke-static {p1, v0, v1}, Lx13;->q(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt51;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lt51;-><init>(Landroidx/preference/CheckBoxPreference;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/preference/CheckBoxPreference;->k0:Lt51;

    .line 10
    .line 11
    sget-object v0, Lde6;->b:[I

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x5

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 p3, 0x0

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_0
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->g0:Ljava/lang/CharSequence;

    .line 30
    .line 31
    iget-boolean p2, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 p2, 0x4

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :cond_2
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->h0:Ljava/lang/CharSequence;

    .line 51
    .line 52
    iget-boolean p2, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 53
    .line 54
    if-nez p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()V

    .line 57
    .line 58
    .line 59
    :cond_3
    const/4 p2, 0x2

    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    const/4 p3, 0x3

    .line 65
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iput-boolean p2, p0, Landroidx/preference/TwoStatePreference;->j0:Z

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final I(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Landroid/widget/CompoundButton;

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
    check-cast p1, Landroid/widget/CompoundButton;

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/preference/CheckBoxPreference;->k0:Lt51;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 31
    .line 32
    .line 33
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
    const v0, 0x1020001

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lk46;->r(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/preference/CheckBoxPreference;->I(Landroid/view/View;)V

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
    const v0, 0x1020001

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Landroidx/preference/CheckBoxPreference;->I(Landroid/view/View;)V

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
