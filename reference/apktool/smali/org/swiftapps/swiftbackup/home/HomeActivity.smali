.class public final Lorg/swiftapps/swiftbackup/home/HomeActivity;
.super Ler6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b0:Ljava/util/Map;


# instance fields
.field public final X:Ll90;

.field public final Y:Lgv7;

.field public Z:I

.field public final a0:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const v0, 0x7f0a034c

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lpw5;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a034b

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v3, Lpw5;

    .line 31
    .line 32
    invoke-direct {v3, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0a034d

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x2

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v4, Lpw5;

    .line 48
    .line 49
    invoke-direct {v4, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0a034a

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v5, Lpw5;

    .line 65
    .line 66
    invoke-direct {v5, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    filled-new-array {v2, v3, v4, v5}, [Lpw5;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 78
    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ler6;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf20;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, p0, v1}, Lf20;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ll90;

    .line 11
    .line 12
    const-class v3, Lc64;

    .line 13
    .line 14
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lls;

    .line 19
    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    invoke-direct {v4, p0, v5}, Lls;-><init>(Lil0;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lms;

    .line 26
    .line 27
    const/16 v6, 0xb

    .line 28
    .line 29
    invoke-direct {v5, p0, v6}, Lms;-><init>(Lil0;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v4, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->X:Ll90;

    .line 36
    .line 37
    new-instance v0, Lmo3;

    .line 38
    .line 39
    invoke-direct {v0, p0, v1}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lgv7;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y:Lgv7;

    .line 48
    .line 49
    const v0, 0x7f0a034c

    .line 50
    .line 51
    .line 52
    iput v0, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z:I

    .line 53
    .line 54
    new-instance v0, Lgj;

    .line 55
    .line 56
    const/16 v1, 0x16

    .line 57
    .line 58
    invoke-direct {v0, p0, v1}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Lgv7;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->a0:Lgv7;

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->a0()Lc64;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final Y()Lol5;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lw44;->d:Landroid/view/View;

    .line 6
    .line 7
    check-cast p0, Lol5;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Z()Lw44;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lw44;

    .line 8
    .line 9
    return-object p0
.end method

.method public final a0()Lc64;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->X:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lc64;

    .line 8
    .line 9
    return-object p0
.end method

.method public final b0(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lw44;->f:Lorg/swiftapps/swiftbackup/views/NoSwipeViewPager;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    rsub-int/lit8 v2, v2, 0x0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    rsub-int/lit8 v3, v3, 0x0

    .line 30
    .line 31
    invoke-virtual {v0, v2, v3, v1}, Landroidx/core/widget/NestedScrollView;->u(IIZ)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    move-object v0, p1

    .line 40
    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    move v3, v1

    .line 51
    :goto_1
    if-ge v3, v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    instance-of v5, v4, Landroidx/core/widget/NestedScrollView;

    .line 58
    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    rsub-int/lit8 v0, v0, 0x0

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    rsub-int/lit8 v2, v2, 0x0

    .line 74
    .line 75
    invoke-virtual {v4, v0, v2, v1}, Landroidx/core/widget/NestedScrollView;->u(IIZ)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 83
    .line 84
    new-instance v0, Lu12;

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    invoke-direct {v0, p0, v1}, Lu12;-><init>(Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    :cond_4
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ler6;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p2, p3}, Lcr;->b(Lil0;IILandroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lw44;->a:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lil0;->K(Landroid/view/View;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v1, v1, Lw44;->c:Lx44;

    .line 29
    .line 30
    iget-object v1, v1, Lx44;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lnc8;->b0(Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v1, v1, Lw44;->c:Lx44;

    .line 51
    .line 52
    iget-object v1, v1, Lx44;->n:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Landroid/widget/TextView;

    .line 55
    .line 56
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 57
    .line 58
    const-string v3, "SWIFTBACKUP"

    .line 59
    .line 60
    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const v5, 0x7f04014a

    .line 71
    .line 72
    .line 73
    invoke-static {v4, v5}, Lsz8;->y(Landroid/content/Context;I)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 82
    .line 83
    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const-string v4, "Backup"

    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    const/4 v7, 0x2

    .line 90
    invoke-static {v3, v4, v0, v6, v7}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    invoke-static {v3, v4, v0, v6, v7}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/4 v4, 0x6

    .line 99
    add-int/2addr v3, v4

    .line 100
    const/16 v9, 0x21

    .line 101
    .line 102
    invoke-virtual {v2, v5, v8, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v1, v1, Lw44;->c:Lx44;

    .line 113
    .line 114
    iget-object v1, v1, Lx44;->k:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v1, Landroid/widget/TextView;

    .line 117
    .line 118
    const v2, 0x7f130414

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "5.1.0"

    .line 126
    .line 127
    const-string v5, "dev"

    .line 128
    .line 129
    invoke-static {v3, v5, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    const/4 v9, 0x0

    .line 134
    const-string v10, "rc"

    .line 135
    .line 136
    const-string v11, "beta"

    .line 137
    .line 138
    const-string v12, "alpha"

    .line 139
    .line 140
    if-nez v8, :cond_2

    .line 141
    .line 142
    invoke-static {v3, v12, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-nez v8, :cond_2

    .line 147
    .line 148
    invoke-static {v3, v11, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-nez v8, :cond_2

    .line 153
    .line 154
    invoke-static {v3, v10, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-nez v8, :cond_2

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    invoke-static {v3, v5, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-eqz v8, :cond_3

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_3
    invoke-static {v3, v12, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_4

    .line 173
    .line 174
    move-object v5, v12

    .line 175
    goto :goto_0

    .line 176
    :cond_4
    invoke-static {v3, v11, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_5

    .line 181
    .line 182
    move-object v5, v11

    .line 183
    goto :goto_0

    .line 184
    :cond_5
    invoke-static {v3, v10, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_6

    .line 189
    .line 190
    move-object v5, v10

    .line 191
    goto :goto_0

    .line 192
    :cond_6
    move-object v5, v9

    .line 193
    :goto_0
    if-eqz v5, :cond_7

    .line 194
    .line 195
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    :cond_7
    :goto_1
    filled-new-array {v2, v9}, [Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v2}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    const/4 v12, 0x0

    .line 216
    const/16 v13, 0x3e

    .line 217
    .line 218
    const-string v9, " | "

    .line 219
    .line 220
    const/4 v10, 0x0

    .line 221
    const/4 v11, 0x0

    .line 222
    invoke-static/range {v8 .. v13}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iget-object v1, v1, Lw44;->c:Lx44;

    .line 234
    .line 235
    iget-object v1, v1, Lx44;->c:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v1, Landroid/widget/ImageView;

    .line 238
    .line 239
    invoke-static {v1}, Lp15;->a(Landroid/widget/ImageView;)V

    .line 240
    .line 241
    .line 242
    new-instance v2, Lzf1;

    .line 243
    .line 244
    const/4 v3, 0x3

    .line 245
    invoke-direct {v2, p0, v3}, Lzf1;-><init>(Ljava/lang/Object;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget-object v1, v1, Lw44;->c:Lx44;

    .line 256
    .line 257
    iget-object v1, v1, Lx44;->d:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 260
    .line 261
    new-instance v2, Lh00;

    .line 262
    .line 263
    const/4 v5, 0x4

    .line 264
    invoke-direct {v2, p0, v5}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    iget-object v1, v1, Lw44;->a:Landroid/view/View;

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    new-instance v2, Lx7;

    .line 280
    .line 281
    invoke-direct {v2, v1, p0, v7}, Lx7;-><init>(Landroid/view/View;Ljava/lang/Object;I)V

    .line 282
    .line 283
    .line 284
    invoke-static {v1, v2}, Lyt5;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget-object v1, v1, Lw44;->c:Lx44;

    .line 292
    .line 293
    iget-object v1, v1, Lx44;->b:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v1, Landroid/widget/LinearLayout;

    .line 296
    .line 297
    new-instance v2, Li00;

    .line 298
    .line 299
    const/16 v5, 0x8

    .line 300
    .line 301
    invoke-direct {v2, p0, v5}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    .line 306
    .line 307
    new-instance v2, Ls44;

    .line 308
    .line 309
    invoke-direct {v2, p0}, Ls44;-><init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 313
    .line 314
    .line 315
    const v1, 0x7f0a034c

    .line 316
    .line 317
    .line 318
    if-eqz p1, :cond_8

    .line 319
    .line 320
    const-string v2, "saved_fragment"

    .line 321
    .line 322
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    iput v2, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z:I

    .line 327
    .line 328
    :cond_8
    new-instance v2, Lak;

    .line 329
    .line 330
    const/16 v7, 0x15

    .line 331
    .line 332
    invoke-direct {v2, p0, v7}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, v0, v2}, Lil0;->L(ZLbt3;)V

    .line 336
    .line 337
    .line 338
    invoke-static {}, Lb67;->a()Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-eqz v2, :cond_b

    .line 343
    .line 344
    invoke-virtual {p0}, Lk28;->v()Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-nez v2, :cond_9

    .line 349
    .line 350
    sget-object v2, Lvs7;->c:Lvs7;

    .line 351
    .line 352
    invoke-virtual {v2, p0}, Lvs7;->a(Landroid/content/Context;)I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    goto :goto_2

    .line 357
    :cond_9
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->k(Landroid/content/Context;)I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    :goto_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    invoke-virtual {v7, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    instance-of v7, v7, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 373
    .line 374
    if-eqz v7, :cond_b

    .line 375
    .line 376
    invoke-static {}, Lb67;->f()Z

    .line 377
    .line 378
    .line 379
    move-result v7

    .line 380
    if-eqz v7, :cond_a

    .line 381
    .line 382
    goto :goto_3

    .line 383
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    invoke-virtual {v7, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 388
    .line 389
    .line 390
    :cond_b
    :goto_3
    sget-object v2, Lc64;->l:Lix6;

    .line 391
    .line 392
    new-instance v7, Llm;

    .line 393
    .line 394
    const/16 v8, 0xb

    .line 395
    .line 396
    invoke-direct {v7, p0, v8}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 397
    .line 398
    .line 399
    new-instance v9, Le20;

    .line 400
    .line 401
    invoke-direct {v9, v6, v7}, Le20;-><init>(ILmt3;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2, p0, v9}, Lix6;->e(Lfu4;Les5;)V

    .line 405
    .line 406
    .line 407
    sget-object v2, Lc64;->m:Lix6;

    .line 408
    .line 409
    new-instance v7, Lzs;

    .line 410
    .line 411
    invoke-direct {v7, p0, v5}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 412
    .line 413
    .line 414
    new-instance v5, Le20;

    .line 415
    .line 416
    invoke-direct {v5, v6, v7}, Le20;-><init>(ILmt3;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2, p0, v5}, Lix6;->e(Lfu4;Les5;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    new-instance v5, Lfs;

    .line 427
    .line 428
    invoke-direct {v5, p0, v4}, Lfs;-><init>(Ljava/lang/Object;I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2, v5}, Lol5;->setOnItemSelectedListener(Lll5;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    new-instance v4, Ler1;

    .line 439
    .line 440
    invoke-direct {v4, p0}, Ler1;-><init>(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v4}, Lol5;->setOnItemReselectedListener(Lkl5;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    iget-object v2, v2, Lw44;->f:Lorg/swiftapps/swiftbackup/views/NoSwipeViewPager;

    .line 451
    .line 452
    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    iget-object v2, v2, Lw44;->f:Lorg/swiftapps/swiftbackup/views/NoSwipeViewPager;

    .line 460
    .line 461
    new-instance v3, Lt44;

    .line 462
    .line 463
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    invoke-direct {v3, v4}, Landroidx/fragment/app/b0;-><init>(Lur3;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Low5;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    iget-object v2, v2, Lw44;->f:Lorg/swiftapps/swiftbackup/views/NoSwipeViewPager;

    .line 481
    .line 482
    new-instance v3, Lu44;

    .line 483
    .line 484
    invoke-direct {v3, p0}, Lu44;-><init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->b(Lgm8;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    iget v3, p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z:I

    .line 495
    .line 496
    invoke-virtual {v2, v3}, Lol5;->setSelectedItemId(I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-virtual {v2}, Lol5;->getSelectedItemId()I

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-eq v2, v1, :cond_c

    .line 508
    .line 509
    move v0, v6

    .line 510
    :cond_c
    invoke-virtual {p0, v0}, Lil0;->A(Z)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    iget-object v0, v0, Lw44;->f:Lorg/swiftapps/swiftbackup/views/NoSwipeViewPager;

    .line 518
    .line 519
    new-instance v1, Lv44;

    .line 520
    .line 521
    invoke-direct {v1, p0}, Lv44;-><init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->b(Lgm8;)V

    .line 525
    .line 526
    .line 527
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 528
    .line 529
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/SwiftApp;->a:Lex6;

    .line 534
    .line 535
    new-instance v1, Lbz;

    .line 536
    .line 537
    const/4 v2, 0x5

    .line 538
    invoke-direct {v1, v2, p0, p1}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    new-instance p1, Le20;

    .line 542
    .line 543
    invoke-direct {p1, v6, v1}, Le20;-><init>(ILmt3;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, p0, p1}, Lzy4;->e(Lfu4;Les5;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->a0()Lc64;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    iget-object p1, p1, Lc64;->k:Lix6;

    .line 554
    .line 555
    new-instance v0, Lcz;

    .line 556
    .line 557
    invoke-direct {v0, p0, v8}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 558
    .line 559
    .line 560
    new-instance v1, Le20;

    .line 561
    .line 562
    invoke-direct {v1, v6, v0}, Le20;-><init>(ILmt3;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 566
    .line 567
    .line 568
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lsa1;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object p0, p0, Lw44;->f:Lorg/swiftapps/swiftbackup/views/NoSwipeViewPager;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lio1;->onNewIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "android.content.pm.extra.STATUS"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p0, p1}, Lcr;->c(Landroid/content/Context;Lil0;Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lol5;->getSelectedItemId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "saved_fragment"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1}, Lsa1;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final s()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
