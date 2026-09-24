.class public final Ll20;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lp53;


# instance fields
.field public final l:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

.field public final m:Z

.field public final n:Landroid/widget/TextView;

.field public final o:Lzs;

.field public final p:Llm;

.field public final q:Ljava/lang/String;

.field public final r:Z


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;ZLandroid/widget/TextView;Lzs;Llm;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Ll20;->l:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 6
    .line 7
    iput-boolean p2, p0, Ll20;->m:Z

    .line 8
    .line 9
    iput-object p3, p0, Ll20;->n:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object p4, p0, Ll20;->o:Lzs;

    .line 12
    .line 13
    iput-object p5, p0, Ll20;->p:Llm;

    .line 14
    .line 15
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 16
    .line 17
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const p2, 0x7f1302ea

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const p2, 0x7f1302e7

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Ll20;->q:Ljava/lang/String;

    .line 38
    .line 39
    sget-object p1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput-boolean p1, p0, Ll20;->r:Z

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lgm7;->k:Z

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Lji;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-object p0, v0

    .line 10
    :goto_0
    const-string p1, "---"

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    sget-object v1, Liy;->a:Liy;

    .line 16
    .line 17
    invoke-static {}, Liy;->b()Lsx;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lk20;->b:[I

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    aget v1, v2, v1

    .line 28
    .line 29
    packed-switch v1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lq;->j()V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_0
    sget-object v1, Liy;->e:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Ljava/lang/Long;

    .line 47
    .line 48
    if-eqz p0, :cond_6

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :pswitch_1
    sget-object v1, Liy;->d:Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Ljava/lang/Long;

    .line 71
    .line 72
    if-eqz p0, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    const-wide/16 v3, 0x0

    .line 79
    .line 80
    cmp-long v1, v1, v3

    .line 81
    .line 82
    if-lez v1, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move-object p0, v0

    .line 86
    :goto_1
    if-eqz p0, :cond_6

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    sget-object p0, Lp93;->a:Lp93;

    .line 93
    .line 94
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :pswitch_2
    invoke-virtual {p0}, Lji;->getSizeInfo()Lqx;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-eqz p0, :cond_6

    .line 109
    .line 110
    invoke-virtual {p0}, Lqx;->getTotalSizeString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :pswitch_3
    invoke-virtual {p0}, Lji;->getDateBackup()Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-eqz p0, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_5

    .line 131
    :pswitch_4
    invoke-virtual {p0}, Lji;->getDateUpdated()Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    if-eqz p0, :cond_6

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto :goto_5

    .line 146
    :pswitch_5
    invoke-virtual {p0}, Lji;->getDateInstalled()Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-eqz p0, :cond_6

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 153
    .line 154
    .line 155
    move-result-wide v0

    .line 156
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_5

    .line 161
    :pswitch_6
    invoke-virtual {p0}, Lji;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {p0}, Lnq7;->c0(Ljava/lang/String;)Ljava/lang/Character;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    if-nez p0, :cond_2

    .line 170
    .line 171
    const-string p0, "?"

    .line 172
    .line 173
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    const-string v1, "app_locale"

    .line 178
    .line 179
    :try_start_1
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 180
    .line 181
    if-eqz v2, :cond_3

    .line 182
    .line 183
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    goto :goto_2

    .line 188
    :cond_3
    const-string v1, "prefs"

    .line 189
    .line 190
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :catch_1
    :goto_2
    if-eqz v0, :cond_5

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_4

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_4
    invoke-static {v0}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    goto :goto_4

    .line 212
    :cond_5
    :goto_3
    invoke-static {}, Lxx3;->h()Lis4;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    :cond_6
    :goto_5
    if-eqz v0, :cond_7

    .line 228
    .line 229
    move-object p1, v0

    .line 230
    :cond_7
    return-object p1

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lfh6;I)V
    .locals 1

    .line 1
    check-cast p1, Ltr;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lji;

    .line 8
    .line 9
    sget-object p2, Liy;->a:Liy;

    .line 10
    .line 11
    invoke-static {}, Liy;->b()Lsx;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p0, p2, v0}, Ltr;->s(Lji;Lsx;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d002b

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 14

    .line 1
    new-instance v0, Ltr;

    .line 2
    .line 3
    sget-object v1, Ltr;->n0:Lqr;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lqr;->c(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    new-instance v6, Lh20;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v6, p0, v1}, Lh20;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    new-instance v7, Lps;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v7, p0, v1}, Lps;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Ll20;->l:Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 29
    .line 30
    invoke-virtual {v1}, Lk28;->v()Z

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    const/16 v13, 0x1300

    .line 35
    .line 36
    iget-boolean v3, p0, Ll20;->m:Z

    .line 37
    .line 38
    iget-object v4, p0, Ll20;->q:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v8, p0, Ll20;->r:Z

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v10, 0x0

    .line 44
    const/4 v11, 0x1

    .line 45
    move-object v2, p0

    .line 46
    move-object v1, p1

    .line 47
    invoke-direct/range {v0 .. v13}, Ltr;-><init>(Landroid/view/View;Lgm7;ZLjava/lang/String;ILqt3;Lqt3;ZLrs;Lss;ZZI)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public final y()V
    .locals 6

    .line 1
    iget-object v0, p0, Ll20;->n:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lgm7;->k()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Lgm7;->b()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const v3, 0x7f1304e7

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v3, "app_locale"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v3, "prefs"

    .line 38
    .line 39
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    :goto_0
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v4}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, "/"

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p0, " "

    .line 93
    .line 94
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
