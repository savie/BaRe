.class public final Lorg/swiftapps/swiftbackup/detail/DetailActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic b0:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public R:Z

.field public final S:Lgv7;

.field public final T:Lgv7;

.field public final U:Lgv7;

.field public final V:Lgv7;

.field public final W:Lgv7;

.field public X:Z

.field public final Y:Lgv7;

.field public Z:Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;

.field public final a0:Lfu;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Luf;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, p0, v1}, Luf;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lmk2;

    .line 13
    .line 14
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lvf;

    .line 19
    .line 20
    const/4 v4, 0x4

    .line 21
    invoke-direct {v3, p0, v4}, Lvf;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Lwf;

    .line 25
    .line 26
    invoke-direct {v5, p0, v4}, Lwf;-><init>(Lil0;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->P:Ll90;

    .line 33
    .line 34
    new-instance v0, Lak;

    .line 35
    .line 36
    const/16 v1, 0xc

    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lgv7;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Q:Lgv7;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->R:Z

    .line 50
    .line 51
    new-instance v1, Lxi2;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {v1, p0, v2}, Lxi2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;I)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lgv7;

    .line 58
    .line 59
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->S:Lgv7;

    .line 63
    .line 64
    new-instance v1, Ld76;

    .line 65
    .line 66
    const/16 v2, 0x14

    .line 67
    .line 68
    invoke-direct {v1, p0, v2}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Lgv7;

    .line 72
    .line 73
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->T:Lgv7;

    .line 77
    .line 78
    new-instance v1, Lkf;

    .line 79
    .line 80
    const/16 v2, 0x16

    .line 81
    .line 82
    invoke-direct {v1, p0, v2}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lgv7;

    .line 86
    .line 87
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 88
    .line 89
    .line 90
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U:Lgv7;

    .line 91
    .line 92
    new-instance v1, Llf;

    .line 93
    .line 94
    const/16 v2, 0x12

    .line 95
    .line 96
    invoke-direct {v1, p0, v2}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Lgv7;

    .line 100
    .line 101
    invoke-direct {v3, v1}, Lgv7;-><init>(Lbt3;)V

    .line 102
    .line 103
    .line 104
    iput-object v3, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->V:Lgv7;

    .line 105
    .line 106
    new-instance v1, Lej;

    .line 107
    .line 108
    invoke-direct {v1, p0, v2}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Lgv7;

    .line 112
    .line 113
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 114
    .line 115
    .line 116
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->W:Lgv7;

    .line 117
    .line 118
    new-instance v1, Lxi2;

    .line 119
    .line 120
    invoke-direct {v1, p0, v0}, Lxi2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;I)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Lgv7;

    .line 124
    .line 125
    invoke-direct {v0, v1}, Lgv7;-><init>(Lbt3;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y:Lgv7;

    .line 129
    .line 130
    new-instance v0, Lfu;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lfu;-><init>(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->a0:Lfu;

    .line 136
    .line 137
    return-void
.end method

.method public static final U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V
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
    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static W(J)Ljava/lang/String;
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

.method public static Z(Ld65;Lhk0;J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2}, Ld65;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static a0(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)Ltj2;
    .locals 4

    .line 1
    new-instance v0, Ltj2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgm7;-><init>(Lfm7;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-direct {v1, v2, v3}, Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lng6;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcf2;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, v1, Lcf2;->g:Z

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final X()Ldj2;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ldj2;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Y()Lmk2;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmk2;

    .line 8
    .line 9
    return-object p0
.end method

.method public final b0(Landroid/view/View;Lq05;Liz4;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_1

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p0, "Both localBackup and cloudBackup are null"

    .line 10
    .line 11
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :goto_0
    new-instance v0, Lu45;

    .line 16
    .line 17
    const/16 v1, 0xc

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    const p1, 0x7f0f0010

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ll90;->f(I)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lzi2;->b:[I

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    aget v1, p1, v1

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    if-eq v1, v4, :cond_4

    .line 40
    .line 41
    if-ne v1, v2, :cond_3

    .line 42
    .line 43
    if-eqz p4, :cond_2

    .line 44
    .line 45
    invoke-virtual/range {p4 .. p4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isProtectedBackup()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ne v1, v4, :cond_2

    .line 56
    .line 57
    :goto_1
    move v9, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v9, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    if-eqz p3, :cond_2

    .line 66
    .line 67
    invoke-virtual {p3}, Liz4;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ne v1, v4, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    aget p1, p1, v1

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    if-eq p1, v4, :cond_7

    .line 88
    .line 89
    if-ne p1, v2, :cond_6

    .line 90
    .line 91
    if-eqz p4, :cond_5

    .line 92
    .line 93
    invoke-virtual/range {p4 .. p4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getNote()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :cond_5
    :goto_3
    move-object v10, v1

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_7
    if-eqz p3, :cond_5

    .line 110
    .line 111
    invoke-virtual {p3}, Liz4;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getNote()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    goto :goto_3

    .line 122
    :goto_4
    iget-object p1, v0, Ll90;->c:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Lfc5;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object v1, p1, Lfc5;->f:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    move v2, v3

    .line 136
    :goto_5
    if-ge v2, v1, :cond_12

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Lfc5;->getItem(I)Landroid/view/MenuItem;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    const v7, 0x7f0a0078

    .line 147
    .line 148
    .line 149
    if-ne v6, v7, :cond_a

    .line 150
    .line 151
    if-eqz v9, :cond_8

    .line 152
    .line 153
    const v6, 0x7f130583

    .line 154
    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    const v6, 0x7f130430

    .line 158
    .line 159
    .line 160
    :goto_6
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 161
    .line 162
    .line 163
    if-eqz v9, :cond_9

    .line 164
    .line 165
    const v6, 0x7f0801a1

    .line 166
    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_9
    const v6, 0x7f0801a2

    .line 170
    .line 171
    .line 172
    :goto_7
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 173
    .line 174
    .line 175
    goto/16 :goto_b

    .line 176
    .line 177
    :cond_a
    const v7, 0x7f0a008f

    .line 178
    .line 179
    .line 180
    if-ne v6, v7, :cond_d

    .line 181
    .line 182
    if-eqz v10, :cond_c

    .line 183
    .line 184
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-nez v6, :cond_b

    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_b
    move v6, v3

    .line 192
    goto :goto_9

    .line 193
    :cond_c
    :goto_8
    move v6, v4

    .line 194
    :goto_9
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    .line 196
    .line 197
    goto/16 :goto_b

    .line 198
    .line 199
    :cond_d
    const v7, 0x7f0a008c

    .line 200
    .line 201
    .line 202
    if-ne v6, v7, :cond_f

    .line 203
    .line 204
    invoke-virtual {p2}, Lq05;->isDevice()Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-eqz v6, :cond_e

    .line 209
    .line 210
    if-eqz p3, :cond_e

    .line 211
    .line 212
    move v6, v4

    .line 213
    goto :goto_a

    .line 214
    :cond_e
    move v6, v3

    .line 215
    :goto_a
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 216
    .line 217
    .line 218
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_11

    .line 223
    .line 224
    sget-object v6, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 225
    .line 226
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-nez v6, :cond_11

    .line 231
    .line 232
    const v6, 0x7f080148

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    const v7, 0x7f0604a5

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v7}, Landroid/content/Context;->getColor(I)I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    invoke-static {p0, v7}, Lio4;->c(Landroid/content/Context;I)I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 264
    .line 265
    .line 266
    goto :goto_b

    .line 267
    :cond_f
    const v7, 0x7f0a0054

    .line 268
    .line 269
    .line 270
    if-ne v6, v7, :cond_10

    .line 271
    .line 272
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 294
    .line 295
    .line 296
    const v6, 0x7f1301e5

    .line 297
    .line 298
    .line 299
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 300
    .line 301
    .line 302
    goto :goto_b

    .line 303
    :cond_10
    const v7, 0x7f0a0070

    .line 304
    .line 305
    .line 306
    if-ne v6, v7, :cond_11

    .line 307
    .line 308
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 309
    .line 310
    .line 311
    :cond_11
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 312
    .line 313
    goto/16 :goto_5

    .line 314
    .line 315
    :cond_12
    new-instance v5, Lti2;

    .line 316
    .line 317
    move-object v6, p0

    .line 318
    move-object v11, p2

    .line 319
    move-object v7, p3

    .line 320
    move-object/from16 v8, p4

    .line 321
    .line 322
    invoke-direct/range {v5 .. v11}, Lti2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Liz4;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;ZLjava/lang/String;Lq05;)V

    .line 323
    .line 324
    .line 325
    iput-object v5, v0, Ll90;->e:Ljava/lang/Object;

    .line 326
    .line 327
    invoke-virtual {v0}, Lu45;->j()V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public final c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-nez p3, :cond_1

    .line 8
    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "Both localBackup and cloudBackup are null"

    .line 13
    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    :goto_0
    new-instance v0, Lu45;

    .line 19
    .line 20
    const/16 v1, 0xc

    .line 21
    .line 22
    invoke-direct {v0, p0, p1, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 23
    .line 24
    .line 25
    const p1, 0x7f0f0011

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ll90;->f(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lmk2;->k()Lji;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Lji;->isInstalled()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v1, v0, Ll90;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lfc5;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    move v3, v2

    .line 52
    :goto_1
    iget-object v4, v1, Lfc5;->f:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ge v3, v4, :cond_f

    .line 59
    .line 60
    add-int/lit8 v4, v3, 0x1

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Lfc5;->getItem(I)Landroid/view/MenuItem;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_e

    .line 67
    .line 68
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const v7, 0x7f0a007b

    .line 73
    .line 74
    .line 75
    const/4 v8, 0x1

    .line 76
    if-ne v5, v7, :cond_4

    .line 77
    .line 78
    sget-object v5, Lzi2;->a:[I

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    aget v5, v5, v7

    .line 85
    .line 86
    if-ne v5, v8, :cond_2

    .line 87
    .line 88
    invoke-virtual {p2}, Liu;->getBackupReq()Lsk0;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lsk0;->isPossible()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    if-eqz p1, :cond_3

    .line 98
    .line 99
    invoke-virtual {p2}, Liu;->getBackupReq()Lsk0;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5}, Lsk0;->isPossible()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_3

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    move v8, v2

    .line 111
    :goto_2
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    .line 113
    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :cond_4
    const v7, 0x7f0a0083

    .line 117
    .line 118
    .line 119
    if-ne v5, v7, :cond_7

    .line 120
    .line 121
    sget-object v5, Liu;->APP:Liu;

    .line 122
    .line 123
    if-ne p2, v5, :cond_6

    .line 124
    .line 125
    if-eqz p3, :cond_5

    .line 126
    .line 127
    invoke-virtual {p3}, Lhk;->c()Lq63;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    if-eqz v5, :cond_5

    .line 132
    .line 133
    invoke-virtual {v5}, Lq63;->j()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-ne v5, v8, :cond_5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    if-eqz p4, :cond_6

    .line 141
    .line 142
    invoke-virtual/range {p4 .. p4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    if-eqz v5, :cond_6

    .line 147
    .line 148
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-ne v5, v8, :cond_6

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    move v8, v2

    .line 156
    :goto_3
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    .line 158
    .line 159
    goto/16 :goto_6

    .line 160
    .line 161
    :cond_7
    const v9, 0x7f0a008c

    .line 162
    .line 163
    .line 164
    if-ne v5, v9, :cond_9

    .line 165
    .line 166
    if-eqz p3, :cond_8

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_8
    move v8, v2

    .line 170
    :goto_4
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 171
    .line 172
    .line 173
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_d

    .line 178
    .line 179
    sget-object v5, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 180
    .line 181
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-nez v5, :cond_d

    .line 186
    .line 187
    const v5, 0x7f080148

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    const v8, 0x7f0604a5

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v8}, Landroid/content/Context;->getColor(I)I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    invoke-static {p0, v8}, Lio4;->c(Landroid/content/Context;I)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 219
    .line 220
    .line 221
    goto/16 :goto_6

    .line 222
    .line 223
    :cond_9
    const v9, 0x7f0a0054

    .line 224
    .line 225
    .line 226
    if-ne v5, v9, :cond_a

    .line 227
    .line 228
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 250
    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_a
    const v9, 0x7f0a0060

    .line 254
    .line 255
    .line 256
    if-ne v5, v9, :cond_d

    .line 257
    .line 258
    if-eqz p5, :cond_c

    .line 259
    .line 260
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-nez v5, :cond_b

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_b
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    .line 269
    .line 270
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 271
    .line 272
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    .line 276
    .line 277
    const v9, 0x3f99999a    # 1.2f

    .line 278
    .line 279
    .line 280
    invoke-direct {v8, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    const-string v10, "\ud83d\udd12"

    .line 288
    .line 289
    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    const/16 v11, 0x11

    .line 297
    .line 298
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 299
    .line 300
    .line 301
    const v8, 0x7f13021d

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    new-instance v9, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v10, "     "

    .line 311
    .line 312
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 323
    .line 324
    .line 325
    new-instance v8, Landroid/text/SpannedString;

    .line 326
    .line 327
    invoke-direct {v8, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 328
    .line 329
    .line 330
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 331
    .line 332
    .line 333
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 334
    .line 335
    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 339
    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_c
    :goto_5
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 343
    .line 344
    .line 345
    :cond_d
    :goto_6
    move v3, v4

    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_e
    invoke-static {}, Ll0;->a()V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :cond_f
    new-instance v1, Lsi2;

    .line 353
    .line 354
    move-object v3, p0

    .line 355
    move-object v4, p2

    .line 356
    move-object v5, p3

    .line 357
    move-object/from16 v2, p4

    .line 358
    .line 359
    move-object/from16 v7, p5

    .line 360
    .line 361
    invoke-direct/range {v1 .. v7}, Lsi2;-><init>(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Lorg/swiftapps/swiftbackup/detail/DetailActivity;Liu;Lhk;Lji;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iput-object v1, v0, Ll90;->e:Ljava/lang/Object;

    .line 365
    .line 366
    invoke-virtual {v0}, Lu45;->j()V

    .line 367
    .line 368
    .line 369
    return-void
.end method

.method public final d0(Landroid/view/View;Liu;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lu45;

    .line 8
    .line 9
    const/16 v1, 0xc

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0f0012

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ll90;->f(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lmk2;->k()Lji;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v1, v0, Ll90;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lfc5;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move v3, v2

    .line 37
    :goto_0
    iget-object v4, v1, Lfc5;->f:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ge v3, v4, :cond_7

    .line 44
    .line 45
    add-int/lit8 v4, v3, 0x1

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lfc5;->getItem(I)Landroid/view/MenuItem;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_6

    .line 52
    .line 53
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const v6, 0x7f0a003a

    .line 58
    .line 59
    .line 60
    if-eq v5, v6, :cond_4

    .line 61
    .line 62
    const v6, 0x7f0a003d

    .line 63
    .line 64
    .line 65
    if-ne v5, v6, :cond_0

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_0
    const v6, 0x7f0a0054

    .line 69
    .line 70
    .line 71
    const/4 v7, 0x1

    .line 72
    if-ne v5, v6, :cond_2

    .line 73
    .line 74
    sget-object v5, Liu;->APP:Liu;

    .line 75
    .line 76
    if-eq p2, v5, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v7, v2

    .line 80
    :goto_1
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 81
    .line 82
    .line 83
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_5

    .line 88
    .line 89
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_2
    const v6, 0x7f0a0083

    .line 115
    .line 116
    .line 117
    if-ne v5, v6, :cond_5

    .line 118
    .line 119
    sget-object v5, Liu;->APP:Liu;

    .line 120
    .line 121
    if-ne p2, v5, :cond_3

    .line 122
    .line 123
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    move v7, v2

    .line 131
    :goto_2
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_4
    :goto_3
    sget-object v5, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 136
    .line 137
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_5

    .line 142
    .line 143
    const v5, 0x7f080148

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    const v6, 0x7f0604a5

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-static {p0, v6}, Lio4;->c(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 175
    .line 176
    .line 177
    :cond_5
    :goto_4
    move v3, v4

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_6
    invoke-static {}, Ll0;->a()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_7
    new-instance v1, Ltj;

    .line 185
    .line 186
    invoke-direct {v1, p0, p2, p1}, Ltj;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iput-object v1, v0, Ll90;->e:Ljava/lang/Object;

    .line 190
    .line 191
    invoke-virtual {v0}, Lu45;->j()V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->X()Ldj2;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Ldj2;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->X()Ldj2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Ldj2;->b:Lw00;

    .line 18
    .line 19
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lix0;

    .line 22
    .line 23
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lnc8;->Z(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->X()Ldj2;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Ldj2;->f:Landroidx/core/widget/NestedScrollView;

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    invoke-static {v0, v2}, Lsz8;->b(Landroid/view/View;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v2, "detail_launched_from_shortcut"

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 80
    .line 81
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string p1, "Fetching details for "

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const/4 v6, 0x4

    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sget-object v2, Lzn4;->a:Lzn4;

    .line 102
    .line 103
    new-instance v2, Lyq;

    .line 104
    .line 105
    const/4 v3, 0x4

    .line 106
    invoke-direct {v2, v3, p1, v0}, Lyq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const-string v0, "APP_PARCEL"

    .line 114
    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lji;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    goto :goto_0

    .line 135
    :cond_4
    const/4 v0, 0x0

    .line 136
    :goto_0
    check-cast v0, Lji;

    .line 137
    .line 138
    :goto_1
    if-nez v0, :cond_5

    .line 139
    .line 140
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 141
    .line 142
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    const/4 v6, 0x4

    .line 147
    const/4 v7, 0x0

    .line 148
    const-string v4, "Couldn\'t get parcelable extra for App"

    .line 149
    .line 150
    const/4 v5, 0x0

    .line 151
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_5
    if-nez p1, :cond_6

    .line 159
    .line 160
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 161
    .line 162
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-virtual {v0}, Lji;->asString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string v2, "Opened app details for "

    .line 171
    .line 172
    invoke-static {v2, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    const/4 v12, 0x4

    .line 177
    const/4 v13, 0x0

    .line 178
    const/4 v11, 0x0

    .line 179
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    new-instance v2, Llx;

    .line 187
    .line 188
    invoke-direct {v2, p1, v0}, Llx;-><init>(Lmk2;Lji;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 192
    .line 193
    .line 194
    :goto_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object p1, p1, Lmk2;->i:Lex6;

    .line 199
    .line 200
    new-instance v0, Lk3;

    .line 201
    .line 202
    const/16 v2, 0xb

    .line 203
    .line 204
    invoke-direct {v0, p0, v2}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 205
    .line 206
    .line 207
    new-instance v2, Ltf;

    .line 208
    .line 209
    invoke-direct {v2, v1, v0}, Ltf;-><init>(ILmt3;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, p0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iget-object p1, p1, Lmk2;->j:Lex6;

    .line 220
    .line 221
    new-instance v0, Lhj;

    .line 222
    .line 223
    const/16 v2, 0xe

    .line 224
    .line 225
    invoke-direct {v0, p0, v2}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    new-instance v2, Ltf;

    .line 229
    .line 230
    invoke-direct {v2, v1, v0}, Ltf;-><init>(ILmt3;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, p0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    iget-object p1, p1, Lmk2;->k:Lex6;

    .line 241
    .line 242
    new-instance v2, Lxf;

    .line 243
    .line 244
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->V:Lgv7;

    .line 245
    .line 246
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    move-object v4, v0

    .line 251
    check-cast v4, Lqj2;

    .line 252
    .line 253
    const/4 v8, 0x0

    .line 254
    const/4 v9, 0x3

    .line 255
    const/4 v3, 0x1

    .line 256
    const-class v5, Lqj2;

    .line 257
    .line 258
    const-string v6, "setState"

    .line 259
    .line 260
    const-string v7, "setState(Lorg/swiftapps/swiftbackup/detail/DetailModels$DeviceBackupStates;)V"

    .line 261
    .line 262
    invoke-direct/range {v2 .. v9}, Lxf;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 263
    .line 264
    .line 265
    new-instance v0, Ltf;

    .line 266
    .line 267
    invoke-direct {v0, v1, v2}, Ltf;-><init>(ILmt3;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p0, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iget-object p1, p1, Lmk2;->l:Lex6;

    .line 278
    .line 279
    new-instance v2, Lcj2;

    .line 280
    .line 281
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->W:Lgv7;

    .line 282
    .line 283
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    move-object v4, v0

    .line 288
    check-cast v4, Lpj2;

    .line 289
    .line 290
    const/4 v9, 0x0

    .line 291
    const-class v5, Lpj2;

    .line 292
    .line 293
    const-string v6, "setStates"

    .line 294
    .line 295
    const-string v7, "setStates(Lorg/swiftapps/swiftbackup/detail/DetailModels$CloudBackupStates;)V"

    .line 296
    .line 297
    invoke-direct/range {v2 .. v9}, Lcj2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 298
    .line 299
    .line 300
    new-instance v0, Ltf;

    .line 301
    .line 302
    invoke-direct {v0, v1, v2}, Ltf;-><init>(ILmt3;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, p0, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 306
    .line 307
    .line 308
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Z:Lorg/swiftapps/swiftbackup/detail/ShortcutPinnedReceiver;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->S(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lsa1;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lio1;->onNewIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "onNewIntent: "

    .line 18
    .line 19
    invoke-static {v3, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v7, "detail_launched_from_shortcut"

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v3, p1, La55;->b:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v4, Lkf;

    .line 54
    .line 55
    const/16 v5, 0x18

    .line 56
    .line 57
    invoke-direct {v4, p1, v5}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    const/16 v6, 0xe

    .line 62
    .line 63
    invoke-static {v3, p1, v2, v4, v6}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lji;

    .line 68
    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v3}, Lji;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move-object v3, p1

    .line 77
    :goto_0
    invoke-static {v3, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    move v3, v2

    .line 84
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget-object v8, v4, La55;->b:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v9, Lkf;

    .line 95
    .line 96
    invoke-direct {v9, v4, v5}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v8, p1, v3, v9, v6}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lji;

    .line 104
    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    invoke-virtual {v3}, Lji;->getPackageName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :cond_2
    const-string v3, "Currently showing package "

    .line 112
    .line 113
    const-string v4, ", Restarting for new package."

    .line 114
    .line 115
    invoke-static {v3, p1, v4}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const/4 v5, 0x4

    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 126
    .line 127
    .line 128
    new-instance p1, Landroid/content/Intent;

    .line 129
    .line 130
    const-class v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 131
    .line 132
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .line 134
    .line 135
    const/4 v1, 0x1

    .line 136
    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lmk2;->e:Lji;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "APP_PARCEL"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Lsa1;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lil0;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->R:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->R:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lek;

    .line 17
    .line 18
    const/16 v1, 0x16

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
