.class public abstract Lfm0;
.super Lc46;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc46;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static m(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->g0:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->H(I)Landroidx/preference/Preference;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-boolean v4, v3, Landroidx/preference/Preference;->T:Z

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    iput-boolean v1, v3, Landroidx/preference/Preference;->T:Z

    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/preference/Preference;->h()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v4, 0x1

    .line 28
    iput-boolean v4, v3, Landroidx/preference/Preference;->R:Z

    .line 29
    .line 30
    iput-boolean v1, v3, Landroidx/preference/Preference;->S:Z

    .line 31
    .line 32
    instance-of v4, v3, Landroidx/preference/PreferenceCategory;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    const v4, 0x7f0d013b

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const v4, 0x7f0d0145

    .line 41
    .line 42
    .line 43
    :goto_1
    iput v4, v3, Landroidx/preference/Preference;->W:I

    .line 44
    .line 45
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 50
    .line 51
    invoke-static {v3}, Lfm0;->m(Landroidx/preference/PreferenceGroup;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    return-void
.end method

.method public static o(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->g0:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->H(I)Landroidx/preference/Preference;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 27
    .line 28
    invoke-static {v3}, Lfm0;->o(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final k(Landroidx/preference/PreferenceScreen;)Lhg6;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lfm0;->m(Landroidx/preference/PreferenceGroup;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Llt7;

    .line 8
    .line 9
    invoke-virtual {p0}, Lfm0;->p()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-direct {v0, p1, p0}, Llt7;-><init>(Landroidx/preference/PreferenceScreen;Z)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final n()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lc46;->b:Lh46;

    .line 7
    .line 8
    iget-object v1, v1, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, v1, Landroidx/preference/PreferenceGroup;->g0:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lc46;->b:Lh46;

    .line 23
    .line 24
    iget-object v3, v3, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->H(I)Landroidx/preference/Preference;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 41
    .line 42
    invoke-static {v3}, Lfm0;->o(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lc46;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    instance-of v0, p2, Lk28;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p2, Lk28;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p2, v1

    .line 20
    :goto_0
    if-eqz p2, :cond_3

    .line 21
    .line 22
    invoke-virtual {p2}, Lk28;->p()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Landroid/view/ViewGroup;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object p1, v1

    .line 34
    :goto_1
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object p1, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    const/4 p2, 0x7

    .line 51
    invoke-static {p1, p2}, Lsz8;->b(Landroid/view/View;I)V

    .line 52
    .line 53
    .line 54
    :cond_4
    const/4 p1, 0x0

    .line 55
    iget-object p0, p0, Lc46;->a:Lb46;

    .line 56
    .line 57
    iput p1, p0, Lb46;->b:I

    .line 58
    .line 59
    iput-object v1, p0, Lb46;->a:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    iget-object p0, p0, Lb46;->d:Lc46;

    .line 62
    .line 63
    iget-object p0, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_5

    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    const-string p2, "Cannot invalidate item decorations during a scroll or layout"

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/a;->m(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Q()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public p()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
