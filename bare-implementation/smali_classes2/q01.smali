.class public final Lq01;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lqt3;


# direct methods
.method public constructor <init>(Lqt3;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lq01;->l:Lqt3;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 8

    .line 1
    check-cast p1, Lp01;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lrz0;

    .line 8
    .line 9
    iget-object v0, p1, Lp01;->A:Lq01;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Lfh6;->a:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p1, Lp01;->v:Landroid/widget/ImageView;

    .line 21
    .line 22
    invoke-virtual {p0}, Lrz0;->isCloudItem()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const v3, 0x7f080114

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const v3, 0x7f080129

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-string v2, "app_locale"

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string v2, "prefs"

    .line 54
    .line 55
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    :goto_1
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-static {v3}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lis4;->a()Ljava/util/Locale;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    :goto_2
    invoke-static {}, Lxx3;->h()Lis4;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lis4;->a()Ljava/util/Locale;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :goto_3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lrz0;->getBackupTime()J

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    const/4 v6, 0x3

    .line 97
    const/4 v7, 0x2

    .line 98
    invoke-static {v7, v6, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Ljava/util/Date;

    .line 106
    .line 107
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lrz0;->getTotalCalls()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const v4, 0x7f1305c1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lrz0;->getBackupTime()J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    invoke-static {v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iget-object v4, p1, Lp01;->w:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p1, Lp01;->x:Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p1, Lp01;->y:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p1, Lp01;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 163
    .line 164
    new-instance v2, Lri;

    .line 165
    .line 166
    invoke-direct {v2, v0, p2, v7, p0}, Lri;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p1, Lp01;->z:Landroid/widget/ImageView;

    .line 173
    .line 174
    new-instance p2, Lfr;

    .line 175
    .line 176
    const/4 v1, 0x1

    .line 177
    invoke-direct {p2, v1, v0, p0}, Lfr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0178

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lp01;

    .line 2
    .line 3
    invoke-static {p1}, Lyz0;->a(Landroid/view/View;)Lyz0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p0, p1}, Lp01;-><init>(Lq01;Lyz0;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method
