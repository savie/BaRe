.class public final Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic Z:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public final R:Lgv7;

.field public final S:Lgv7;

.field public T:Lln3;

.field public final U:Lt9;

.field public V:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

.field public W:Z

.field public X:Z

.field public final Y:Lhl3;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgl0;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p0, v1}, Lgl0;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ll90;

    .line 11
    .line 12
    const-class v3, Ldm3;

    .line 13
    .line 14
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Luf;

    .line 19
    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    invoke-direct {v4, p0, v5}, Luf;-><init>(Lil0;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lvf;

    .line 26
    .line 27
    const/4 v6, 0x6

    .line 28
    invoke-direct {v5, p0, v6}, Lvf;-><init>(Lil0;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3, v4, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->P:Ll90;

    .line 35
    .line 36
    new-instance v0, Lcl3;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v0, p0, v2}, Lcl3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;I)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lgv7;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Lgv7;-><init>(Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object v3, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Q:Lgv7;

    .line 48
    .line 49
    new-instance v0, Ld76;

    .line 50
    .line 51
    const/16 v3, 0x18

    .line 52
    .line 53
    invoke-direct {v0, p0, v3}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Lgv7;

    .line 57
    .line 58
    invoke-direct {v3, v0}, Lgv7;-><init>(Lbt3;)V

    .line 59
    .line 60
    .line 61
    iput-object v3, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->R:Lgv7;

    .line 62
    .line 63
    new-instance v0, Lcl3;

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-direct {v0, p0, v3}, Lcl3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;I)V

    .line 67
    .line 68
    .line 69
    new-instance v4, Lgv7;

    .line 70
    .line 71
    invoke-direct {v4, v0}, Lgv7;-><init>(Lbt3;)V

    .line 72
    .line 73
    .line 74
    iput-object v4, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->S:Lgv7;

    .line 75
    .line 76
    new-instance v0, Lm9;

    .line 77
    .line 78
    invoke-direct {v0, v2}, Lm9;-><init>(I)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lhb;

    .line 82
    .line 83
    invoke-direct {v2, p0, v1}, Lhb;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2, v0}, Lio1;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lt9;

    .line 91
    .line 92
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->U:Lt9;

    .line 93
    .line 94
    iput-boolean v3, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X:Z

    .line 95
    .line 96
    new-instance v0, Lhl3;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lhl3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Y:Lhl3;

    .line 102
    .line 103
    return-void
.end method

.method public static final U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(C)Ljava/lang/Appendable;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, ": "

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static V(J)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "app_locale"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :goto_0
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {v1}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_2
    const/4 v1, 0x0

    .line 46
    const/4 v2, 0x3

    .line 47
    invoke-static {v1, v2, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    return-object p0
.end method

.method public static final Y(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lil3;->e:Lnl3;

    .line 6
    .line 7
    iget-object v0, v0, Lnl3;->n:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 13
    .line 14
    const/high16 v1, 0x3f000000    # 0.5f

    .line 15
    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v1, 0x1f4

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v1, 0x14

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 33
    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p0, p0, Lil3;->e:Lnl3;

    .line 44
    .line 45
    iget-object p0, p0, Lnl3;->n:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    move v2, v1

    .line 49
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ge v2, v3, :cond_0

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move v3, v1

    .line 58
    :goto_1
    if-eqz v3, :cond_3

    .line 59
    .line 60
    add-int/lit8 v3, v2, 0x1

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 75
    .line 76
    .line 77
    :goto_2
    move v2, v3

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Ll0;->a()V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public static Z(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Landroid/view/View;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;I)V
    .locals 6

    .line 1
    and-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p2, v1

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v1

    .line 12
    :cond_1
    const/4 p4, 0x0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-nez p2, :cond_2

    .line 15
    .line 16
    move v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    move v1, p4

    .line 19
    :goto_0
    if-nez p3, :cond_3

    .line 20
    .line 21
    move v2, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_3
    move v2, p4

    .line 24
    :goto_1
    xor-int/2addr v1, v2

    .line 25
    if-eqz v1, :cond_9

    .line 26
    .line 27
    new-instance v1, Lu45;

    .line 28
    .line 29
    const/16 v2, 0xc

    .line 30
    .line 31
    invoke-direct {v1, p0, p1, v2}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    const p1, 0x7f0f0013

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ll90;->f(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, v1, Ll90;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lfc5;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move v2, p4

    .line 48
    :goto_2
    iget-object v3, p1, Lfc5;->f:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ge v2, v3, :cond_8

    .line 55
    .line 56
    add-int/lit8 v3, v2, 0x1

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lfc5;->getItem(I)Landroid/view/MenuItem;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_7

    .line 63
    .line 64
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const v5, 0x7f0a008c

    .line 69
    .line 70
    .line 71
    if-ne v4, v5, :cond_5

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    move v4, v0

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    move v4, p4

    .line 78
    :goto_3
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 79
    .line 80
    .line 81
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_6

    .line 86
    .line 87
    sget-object v4, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 88
    .line 89
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_6

    .line 94
    .line 95
    const v4, 0x7f080148

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const v5, 0x7f0604a5

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    invoke-static {p0, v5}, Lio4;->c(Landroid/content/Context;I)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    const v5, 0x7f0a0054

    .line 131
    .line 132
    .line 133
    if-ne v4, v5, :cond_6

    .line 134
    .line 135
    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_4
    move v2, v3

    .line 160
    goto :goto_2

    .line 161
    :cond_7
    invoke-static {}, Ll0;->a()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_8
    new-instance p1, Ldl3;

    .line 166
    .line 167
    invoke-direct {p1, p0, p2, p3}, Ldl3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V

    .line 168
    .line 169
    .line 170
    iput-object p1, v1, Ll90;->e:Ljava/lang/Object;

    .line 171
    .line 172
    invoke-virtual {v1}, Lu45;->j()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_9
    const-string p0, "Exactly one of localBackup or cloudBackup must be non-null"

    .line 177
    .line 178
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public static a0(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;I)V
    .locals 10

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    const/4 p3, 0x1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    move v1, p3

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    move v1, v0

    .line 19
    :goto_0
    if-nez p2, :cond_3

    .line 20
    .line 21
    move v0, p3

    .line 22
    :cond_3
    xor-int/2addr v0, v1

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    new-instance v0, Lln3;

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lae1;

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x5

    .line 43
    const/4 v3, 0x1

    .line 44
    const-class v5, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 45
    .line 46
    const-string v6, "openCustomRestoreFolderPicker"

    .line 47
    .line 48
    const-string v7, "openCustomRestoreFolderPicker(Ljava/lang/String;)V"

    .line 49
    .line 50
    move-object v4, p0

    .line 51
    invoke-direct/range {v2 .. v9}, Lae1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v4, v1, p3, v2}, Lln3;-><init>(Lil0;Ljava/lang/String;ZLmt3;)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Lel3;

    .line 58
    .line 59
    invoke-direct {p0, v4, v0}, Lel3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Lln3;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, v4, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->T:Lln3;

    .line 66
    .line 67
    new-instance p0, Lfl3;

    .line 68
    .line 69
    invoke-direct {p0, v4, p1, p2}, Lfl3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V

    .line 70
    .line 71
    .line 72
    iput-object p0, v0, Lln3;->a0:Lqt3;

    .line 73
    .line 74
    invoke-virtual {v0}, Lln3;->l()V

    .line 75
    .line 76
    .line 77
    iget-object p0, v0, Lln3;->X:Lgv7;

    .line 78
    .line 79
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 84
    .line 85
    new-instance p1, Lh7;

    .line 86
    .line 87
    const/16 p2, 0xa

    .line 88
    .line 89
    invoke-direct {p1, v0, p2}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lu35;->show()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    const-string p0, "Exactly one of localBackup or cloudBackup must be non-null"

    .line 100
    .line 101
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final W()Lil3;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lil3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final X()Ldm3;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ldm3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lsa1;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x137c

    .line 5
    .line 6
    if-ne p1, v0, :cond_3

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-eqz p3, :cond_1

    .line 13
    .line 14
    const-string p1, "extra_folder_item"

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_0
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object p2, Lzn4;->a:Lzn4;

    .line 32
    .line 33
    new-instance p2, Ly2;

    .line 34
    .line 35
    const/16 p3, 0xd

    .line 36
    .line 37
    invoke-direct {p2, p3, p1, p0}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super/range {p0 .. p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Lil3;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "extra_folder_info"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v0, v3

    .line 37
    :goto_0
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 38
    .line 39
    :goto_1
    if-nez v0, :cond_2

    .line 40
    .line 41
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 42
    .line 43
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const/4 v8, 0x4

    .line 48
    const/4 v9, 0x0

    .line 49
    const-string v6, "Couldn\'t get parcelable extra for FolderMetadata"

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->V:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 60
    .line 61
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const-string v1, "folderItem"

    .line 66
    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 70
    .line 71
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->V:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v3, "Invalid metadata: "

    .line 82
    .line 83
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    const/4 v8, 0x4

    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v3

    .line 107
    :cond_4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->V:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 112
    .line 113
    if-eqz v4, :cond_6

    .line 114
    .line 115
    new-instance v1, Lo20;

    .line 116
    .line 117
    const/16 v3, 0x8

    .line 118
    .line 119
    invoke-direct {v1, v3, v0, v4}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v0, v0, Lil3;->b:Lw00;

    .line 130
    .line 131
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, Lix0;

    .line 134
    .line 135
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const/4 v8, 0x1

    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    invoke-virtual {v0, v8}, Lnc8;->Z(Z)V

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v0, v0, Lil3;->f:Landroidx/core/widget/NestedScrollView;

    .line 157
    .line 158
    const/4 v1, 0x7

    .line 159
    invoke-static {v0, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v0, v0, Lil3;->e:Lnl3;

    .line 167
    .line 168
    iget-object v0, v0, Lnl3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 169
    .line 170
    new-instance v1, Lg7;

    .line 171
    .line 172
    const/16 v3, 0xb

    .line 173
    .line 174
    invoke-direct {v1, p0, v3}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v0, v0, Lil3;->e:Lnl3;

    .line 185
    .line 186
    iget-object v0, v0, Lnl3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 187
    .line 188
    new-instance v1, Lh7;

    .line 189
    .line 190
    const/16 v3, 0x9

    .line 191
    .line 192
    invoke-direct {v1, p0, v3}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v0, v0, Lil3;->e:Lnl3;

    .line 203
    .line 204
    iget-object v0, v0, Lnl3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 205
    .line 206
    new-instance v1, Lof;

    .line 207
    .line 208
    const/4 v3, 0x4

    .line 209
    invoke-direct {v1, p0, v3}, Lof;-><init>(Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iget-object v9, v0, Ldm3;->f:Lex6;

    .line 220
    .line 221
    new-instance v0, Lk00;

    .line 222
    .line 223
    const/4 v6, 0x0

    .line 224
    const/4 v7, 0x1

    .line 225
    const/4 v1, 0x1

    .line 226
    const-class v3, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 227
    .line 228
    const-string v4, "onFolderItemUpdate"

    .line 229
    .line 230
    const-string v5, "onFolderItemUpdate(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)V"

    .line 231
    .line 232
    move-object v2, p0

    .line 233
    invoke-direct/range {v0 .. v7}, Lk00;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 234
    .line 235
    .line 236
    new-instance v1, Lur0;

    .line 237
    .line 238
    invoke-direct {v1, v8, v0}, Lur0;-><init>(ILmt3;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v9, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget-object v9, v0, Ldm3;->g:Lex6;

    .line 249
    .line 250
    new-instance v0, Lxf;

    .line 251
    .line 252
    const/4 v7, 0x4

    .line 253
    const/4 v1, 0x1

    .line 254
    const-class v3, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 255
    .line 256
    const-string v4, "onFolderInfo"

    .line 257
    .line 258
    const-string v5, "onFolderInfo(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailStates$FolderInfoState;)V"

    .line 259
    .line 260
    invoke-direct/range {v0 .. v7}, Lxf;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 261
    .line 262
    .line 263
    new-instance v1, Lur0;

    .line 264
    .line 265
    invoke-direct {v1, v8, v0}, Lur0;-><init>(ILmt3;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v9, v0, Ldm3;->h:Lex6;

    .line 276
    .line 277
    new-instance v0, Lcj2;

    .line 278
    .line 279
    const/4 v7, 0x1

    .line 280
    const/4 v1, 0x1

    .line 281
    const-class v3, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 282
    .line 283
    const-string v4, "onLocalBackupInfo"

    .line 284
    .line 285
    const-string v5, "onLocalBackupInfo(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailStates$DeviceBackupState;)V"

    .line 286
    .line 287
    invoke-direct/range {v0 .. v7}, Lcj2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 288
    .line 289
    .line 290
    new-instance v1, Lur0;

    .line 291
    .line 292
    invoke-direct {v1, v8, v0}, Lur0;-><init>(ILmt3;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    iget-object v9, v0, Ldm3;->i:Lex6;

    .line 303
    .line 304
    new-instance v0, Ly63;

    .line 305
    .line 306
    const/4 v1, 0x1

    .line 307
    const-class v3, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 308
    .line 309
    const-string v4, "onCloudBackupInfo"

    .line 310
    .line 311
    const-string v5, "onCloudBackupInfo(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailStates$CloudBackupState;)V"

    .line 312
    .line 313
    invoke-direct/range {v0 .. v7}, Ly63;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 314
    .line 315
    .line 316
    new-instance v1, Lur0;

    .line 317
    .line 318
    invoke-direct {v1, v8, v0}, Lur0;-><init>(ILmt3;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v0, v0, Ldm3;->j:Lex6;

    .line 329
    .line 330
    new-instance v1, Le7;

    .line 331
    .line 332
    const/16 v3, 0xd

    .line 333
    .line 334
    invoke-direct {v1, p0, v3}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 335
    .line 336
    .line 337
    new-instance v3, Lur0;

    .line 338
    .line 339
    invoke-direct {v3, v8, v1}, Lur0;-><init>(ILmt3;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, p0, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Y:Lhl3;

    .line 346
    .line 347
    invoke-virtual {p0, v0}, Lio1;->addMenuProvider(Lxc5;)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_6
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v3
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, v0, Ldm3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "extra_folder_info"

    .line 13
    .line 14
    invoke-virtual {v0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1}, Lsa1;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lil0;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lek;

    .line 17
    .line 18
    const/16 v1, 0x1b

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
