.class public Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d00fa

    .line 12
    iput p1, p0, Landroidx/preference/Preference;->X:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    .line 4
    .line 5
    const p1, 0x7f0d00fa

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroidx/preference/Preference;->X:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final l(Lk46;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->l(Lk46;)V

    .line 2
    .line 3
    .line 4
    const p0, 0x1020016

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lk46;->r(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/widget/TextView;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x64

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 20
    .line 21
    .line 22
    const p0, 0x1020010

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lk46;->r(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
