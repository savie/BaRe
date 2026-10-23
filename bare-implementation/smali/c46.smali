.class public abstract Lc46;
.super Landroidx/fragment/app/o;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lb46;

.field public b:Lh46;

.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Z

.field public e:Z

.field public f:I

.field public final k:La46;

.field public final n:Lbo0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/o;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb46;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lb46;-><init>(Lc46;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc46;->a:Lb46;

    .line 10
    .line 11
    const v0, 0x7f0d0142

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lc46;->f:I

    .line 15
    .line 16
    new-instance v0, La46;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, p0, v1}, La46;-><init>(Lc46;Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lc46;->k:La46;

    .line 26
    .line 27
    new-instance v0, Lbo0;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-direct {v0, p0, v1}, Lbo0;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lc46;->n:Lbo0;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final i(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc46;->b:Lh46;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lc46;->b:Lh46;

    .line 10
    .line 11
    iget-object v2, v2, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    iput-boolean v3, v0, Lh46;->e:Z

    .line 15
    .line 16
    new-instance v4, Lg46;

    .line 17
    .line 18
    invoke-direct {v4, v1, v0}, Lg46;-><init>(Landroid/content/Context;Lh46;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :try_start_0
    invoke-virtual {v4, p1, v2}, Lg46;->c(Lorg/xmlpull/v1/XmlPullParser;Landroidx/preference/PreferenceGroup;)Landroidx/preference/PreferenceGroup;

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 34
    .line 35
    .line 36
    check-cast v1, Landroidx/preference/PreferenceScreen;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->k(Lh46;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lh46;->d:Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, v0, Lh46;->e:Z

    .line 50
    .line 51
    iget-object p1, p0, Lc46;->b:Lh46;

    .line 52
    .line 53
    iget-object v0, p1, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 54
    .line 55
    if-eq v1, v0, :cond_3

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->p()V

    .line 60
    .line 61
    .line 62
    :cond_1
    iput-object v1, p1, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 63
    .line 64
    iput-boolean v3, p0, Lc46;->d:Z

    .line 65
    .line 66
    iget-boolean p1, p0, Lc46;->e:Z

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget-object p0, p0, Lc46;->k:La46;

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_0
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_4
    const-string p0, "This should be called after super.onCreate."

    .line 93
    .line 94
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final j(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    .line 1
    iget-object p0, p0, Lc46;->b:Lh46;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object p0, p0, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 8
    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->G(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public k(Landroidx/preference/PreferenceScreen;)Lhg6;
    .locals 0

    .line 1
    new-instance p0, Lf46;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lf46;-><init>(Landroidx/preference/PreferenceScreen;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public abstract l()V
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/TypedValue;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0404c1

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const p1, 0x7f1401e1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lh46;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p1, v0}, Lh46;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lc46;->b:Lh46;

    .line 53
    .line 54
    iput-object p0, p1, Lh46;->j:Lc46;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getArguments()Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getArguments()Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Lc46;->l()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x0

    .line 6
    sget-object v1, Lde6;->h:[I

    .line 7
    .line 8
    const v2, 0x7f0404bb

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget v1, p0, Lc46;->f:I

    .line 17
    .line 18
    invoke-virtual {p3, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lc46;->f:I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, -0x1

    .line 31
    invoke-virtual {p3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v6, 0x3

    .line 36
    invoke-virtual {p3, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p3, p0, Lc46;->f:I

    .line 52
    .line 53
    invoke-virtual {p1, p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const p3, 0x102003f

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    instance-of v6, p3, Landroid/view/ViewGroup;

    .line 65
    .line 66
    if-eqz v6, :cond_8

    .line 67
    .line 68
    check-cast p3, Landroid/view/ViewGroup;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v6, "android.hardware.type.automotive"

    .line 79
    .line 80
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    const v0, 0x7f0a03bf

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const v0, 0x7f0d0144

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    move-object v0, p1

    .line 106
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-direct {p1, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 118
    .line 119
    .line 120
    new-instance p1, Lj46;

    .line 121
    .line 122
    invoke-direct {p1, v0}, Lj46;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lhh6;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    iput-object v0, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    .line 130
    iget-object p1, p0, Lc46;->a:Lb46;

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->h(Log6;)V

    .line 133
    .line 134
    .line 135
    if-eqz v2, :cond_1

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iput v0, p1, Lb46;->b:I

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_1
    iput v3, p1, Lb46;->b:I

    .line 148
    .line 149
    :goto_1
    iput-object v2, p1, Lb46;->a:Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    iget-object v0, p1, Lb46;->d:Lc46;

    .line 152
    .line 153
    iget-object v0, v0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    .line 155
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    const-string v3, "Cannot invalidate item decorations during a scroll or layout"

    .line 162
    .line 163
    if-nez v2, :cond_2

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_2
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 167
    .line 168
    if-eqz v2, :cond_3

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/a;->m(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->Q()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 177
    .line 178
    .line 179
    :goto_2
    if-eq v4, v5, :cond_6

    .line 180
    .line 181
    iput v4, p1, Lb46;->b:I

    .line 182
    .line 183
    iget-object v0, p1, Lb46;->d:Lc46;

    .line 184
    .line 185
    iget-object v0, v0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    .line 187
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_4

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_4
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 197
    .line 198
    if-eqz v2, :cond_5

    .line 199
    .line 200
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/a;->m(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->Q()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 207
    .line 208
    .line 209
    :cond_6
    :goto_3
    iput-boolean v1, p1, Lb46;->c:Z

    .line 210
    .line 211
    iget-object p1, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-nez p1, :cond_7

    .line 218
    .line 219
    iget-object p1, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 220
    .line 221
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    .line 223
    .line 224
    :cond_7
    iget-object p1, p0, Lc46;->k:La46;

    .line 225
    .line 226
    iget-object p0, p0, Lc46;->n:Lbo0;

    .line 227
    .line 228
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    .line 230
    .line 231
    return-object p2

    .line 232
    :cond_8
    const-string p0, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    .line 233
    .line 234
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc46;->n:Lbo0;

    .line 2
    .line 3
    iget-object v1, p0, Lc46;->k:La46;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lc46;->d:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lc46;->b:Lh46;

    .line 23
    .line 24
    iget-object v0, v0, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->p()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iput-object v1, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    invoke-super {p0}, Landroidx/fragment/app/o;->onDestroyView()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lc46;->b:Lh46;

    .line 2
    .line 3
    iget-object p0, p0, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->c(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    const-string p0, "android:preferences"

    .line 16
    .line 17
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc46;->b:Lh46;

    .line 5
    .line 6
    iput-object p0, v0, Lh46;->h:Lc46;

    .line 7
    .line 8
    iput-object p0, v0, Lh46;->i:Lc46;

    .line 9
    .line 10
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lc46;->b:Lh46;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lh46;->h:Lc46;

    .line 8
    .line 9
    iput-object v0, p0, Lh46;->i:Lc46;

    .line 10
    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string p1, "android:preferences"

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lc46;->b:Lh46;

    .line 12
    .line 13
    iget-object p2, p2, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->b(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-boolean p1, p0, Lc46;->d:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lc46;->b:Lh46;

    .line 25
    .line 26
    iget-object p1, p1, Lh46;->g:Landroidx/preference/PreferenceScreen;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p2, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lc46;->k(Landroidx/preference/PreferenceScreen;)Lhg6;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->j()V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lc46;->e:Z

    .line 44
    .line 45
    return-void
.end method
