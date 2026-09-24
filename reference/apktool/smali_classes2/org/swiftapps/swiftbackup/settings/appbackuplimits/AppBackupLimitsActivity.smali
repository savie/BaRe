.class public final Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic M:I


# instance fields
.field public final K:Lgv7;

.field public final L:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ldk;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lgv7;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->K:Lgv7;

    .line 16
    .line 17
    new-instance v0, Lek;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, v1}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->L:Lgv7;

    .line 29
    .line 30
    return-void
.end method

.method public static final N(Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->O()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-class v2, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;

    .line 13
    .line 14
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "extra_limits"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final O()Ljava/util/ArrayList;
    .locals 9

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->L:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Liu;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lqk;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, v1, Lqk;->A:Ljava/lang/Long;

    .line 57
    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    cmp-long v7, v7, v4

    .line 68
    .line 69
    if-lez v7, :cond_0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    move-object v3, v6

    .line 73
    :goto_1
    iget-object v1, v1, Lqk;->B:Ljava/lang/Long;

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    cmp-long v4, v7, v4

    .line 82
    .line 83
    if-lez v4, :cond_1

    .line 84
    .line 85
    move-object v6, v1

    .line 86
    :cond_1
    new-instance v1, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 87
    .line 88
    invoke-direct {v1, v2, v3, v6}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    return-object v0
.end method

.method public final P()Lvk;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->K:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvk;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->O()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-class v2, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;

    .line 13
    .line 14
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "extra_limits"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    invoke-super {p0}, Lio1;->onBackPressed()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->P()Lvk;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lvk;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lk28;->p()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->P()Lvk;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v1, v1, Lvk;->n:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->P()Lvk;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lvk;->k:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->P()Lvk;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lvk;->f:Landroidx/core/widget/NestedScrollView;

    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    invoke-static {v0, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 43
    .line 44
    .line 45
    const-string v0, "extra_limits"

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object p1, v1

    .line 56
    :goto_0
    if-eqz p1, :cond_1

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-object p1, v1

    .line 71
    :goto_1
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move-object p1, v1

    .line 79
    :goto_2
    if-nez p1, :cond_4

    .line 80
    .line 81
    sget-object p1, Lov2;->a:Lov2;

    .line 82
    .line 83
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 90
    .line 91
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/4 v6, 0x4

    .line 96
    const/4 v7, 0x0

    .line 97
    const-string v4, "Empty initial data!"

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    sget-object v0, Lzn4;->a:Lzn4;

    .line 111
    .line 112
    new-instance v0, Lcv;

    .line 113
    .line 114
    const/16 v1, 0xe

    .line 115
    .line 116
    invoke-direct {v0, v1, p1, v4}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_5
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v3, "initialData="

    .line 133
    .line 134
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->L:Lgv7;

    .line 148
    .line 149
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Ljava/util/Map;

    .line 154
    .line 155
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_f

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Ljava/util/Map$Entry;

    .line 174
    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Liu;

    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Lqk;

    .line 186
    .line 187
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_8

    .line 196
    .line 197
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    move-object v6, v5

    .line 202
    check-cast v6, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 203
    .line 204
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getAppPart()Liu;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    if-ne v6, v3, :cond_7

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_8
    move-object v5, v1

    .line 212
    :goto_5
    check-cast v5, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 213
    .line 214
    iget-object v3, v2, Lfh6;->a:Landroid/view/View;

    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    const/4 v4, 0x0

    .line 220
    const/4 v6, 0x1

    .line 221
    if-eqz v5, :cond_9

    .line 222
    .line 223
    move v7, v6

    .line 224
    goto :goto_6

    .line 225
    :cond_9
    move v7, v4

    .line 226
    :goto_6
    invoke-static {v3, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 227
    .line 228
    .line 229
    if-eqz v5, :cond_6

    .line 230
    .line 231
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v8, "binding item = "

    .line 238
    .line 239
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    iget-object v3, v2, Lqk;->x:Lcom/google/android/material/textfield/TextInputLayout;

    .line 253
    .line 254
    iget-object v7, v2, Lfh6;->a:Landroid/view/View;

    .line 255
    .line 256
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    iget-object v8, v2, Lqk;->v:Landroid/widget/TextView;

    .line 261
    .line 262
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getAppPart()Liu;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-static {v9, v4, v6, v1}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    iget-object v4, v2, Lqk;->w:Lcom/google/android/material/textfield/TextInputLayout;

    .line 274
    .line 275
    const v8, 0x7f1302f9

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    invoke-virtual {v4, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    const-string v8, "MB"

    .line 286
    .line 287
    invoke-virtual {v4, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixTextView()Landroid/widget/TextView;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    const v10, 0x7f090004

    .line 295
    .line 296
    .line 297
    invoke-static {v7, v10}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 298
    .line 299
    .line 300
    move-result-object v11

    .line 301
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    const v11, 0x7f090005

    .line 309
    .line 310
    .line 311
    if-eqz v9, :cond_a

    .line 312
    .line 313
    invoke-static {v7, v11}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    .line 319
    .line 320
    :cond_a
    const v9, 0x7f080126

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 327
    .line 328
    .line 329
    new-instance v12, Lg7;

    .line 330
    .line 331
    const/4 v13, 0x2

    .line 332
    invoke-direct {v12, v4, v13}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    .line 337
    .line 338
    const v12, 0x7f130108

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v12

    .line 345
    invoke-virtual {v3, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixTextView()Landroid/widget/TextView;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    invoke-static {v7, v10}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    if-eqz v8, :cond_b

    .line 367
    .line 368
    invoke-static {v7, v11}, Lfm6;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 369
    .line 370
    .line 371
    move-result-object v10

    .line 372
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 373
    .line 374
    .line 375
    :cond_b
    invoke-virtual {v3, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 379
    .line 380
    .line 381
    new-instance v6, Lh7;

    .line 382
    .line 383
    invoke-direct {v6, v3, v13}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    .line 388
    .line 389
    filled-new-array {v4, v3}, [Lcom/google/android/material/textfield/TextInputLayout;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-eqz v4, :cond_c

    .line 406
    .line 407
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 412
    .line 413
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    new-instance v8, Lpk;

    .line 421
    .line 422
    invoke-direct {v8, v6, v4, v2, v7}, Lpk;-><init>(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lqk;Landroid/content/Context;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 426
    .line 427
    .line 428
    goto :goto_7

    .line 429
    :cond_c
    iget-object v3, v2, Lqk;->y:Lcom/google/android/material/textfield/TextInputEditText;

    .line 430
    .line 431
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getLocalLimitMBs()Ljava/lang/Long;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    if-eqz v4, :cond_d

    .line 436
    .line 437
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 438
    .line 439
    .line 440
    move-result-wide v6

    .line 441
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    goto :goto_8

    .line 446
    :cond_d
    move-object v4, v1

    .line 447
    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    .line 449
    .line 450
    iget-object v2, v2, Lqk;->z:Lcom/google/android/material/textfield/TextInputEditText;

    .line 451
    .line 452
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getCloudLimitMBs()Ljava/lang/Long;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    if-eqz v3, :cond_e

    .line 457
    .line 458
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 459
    .line 460
    .line 461
    move-result-wide v3

    .line 462
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    goto :goto_9

    .line 467
    :cond_e
    move-object v3, v1

    .line 468
    :goto_9
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_4

    .line 472
    .line 473
    :cond_f
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->O()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "extra_limits"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1}, Lil0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
