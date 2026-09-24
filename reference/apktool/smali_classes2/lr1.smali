.class public final Llr1;
.super Lfm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt36;


# instance fields
.field public final G:Lgv7;

.field public final H:Lgv7;

.field public final I:Lgv7;

.field public final J:Lgv7;

.field public final K:Lgv7;

.field public final L:Lcr3;

.field public final M:Lcr3;

.field public final N:Lcr3;

.field public final p:Ll90;

.field public final q:Lgv7;

.field public final r:Lgv7;

.field public final t:Lgv7;

.field public final x:Lgv7;

.field public final y:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lfm0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lmr1;

    .line 5
    .line 6
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljr1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Ljr1;-><init>(Llr1;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lkr1;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lkr1;-><init>(Llr1;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lt30;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v3, p0, v4}, Lt30;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Ll90;

    .line 27
    .line 28
    invoke-direct {v5, v0, v1, v3, v2}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 29
    .line 30
    .line 31
    iput-object v5, p0, Llr1;->p:Ll90;

    .line 32
    .line 33
    new-instance v0, Lgr1;

    .line 34
    .line 35
    invoke-direct {v0, p0, v4}, Lgr1;-><init>(Llr1;I)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lgv7;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Llr1;->q:Lgv7;

    .line 44
    .line 45
    new-instance v0, Lhr1;

    .line 46
    .line 47
    invoke-direct {v0, p0, v4}, Lhr1;-><init>(Llr1;I)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lgv7;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Llr1;->r:Lgv7;

    .line 56
    .line 57
    new-instance v0, Lir1;

    .line 58
    .line 59
    invoke-direct {v0, p0, v4}, Lir1;-><init>(Llr1;I)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lgv7;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Llr1;->t:Lgv7;

    .line 68
    .line 69
    new-instance v0, Lbk;

    .line 70
    .line 71
    const/16 v1, 0xe

    .line 72
    .line 73
    invoke-direct {v0, p0, v1}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lgv7;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Llr1;->x:Lgv7;

    .line 82
    .line 83
    new-instance v0, Lgr1;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-direct {v0, p0, v1}, Lgr1;-><init>(Llr1;I)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lgv7;

    .line 90
    .line 91
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Llr1;->y:Lgv7;

    .line 95
    .line 96
    new-instance v0, Ldk;

    .line 97
    .line 98
    const/16 v2, 0x14

    .line 99
    .line 100
    invoke-direct {v0, p0, v2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lgv7;

    .line 104
    .line 105
    invoke-direct {v3, v0}, Lgv7;-><init>(Lbt3;)V

    .line 106
    .line 107
    .line 108
    iput-object v3, p0, Llr1;->G:Lgv7;

    .line 109
    .line 110
    new-instance v0, Lek;

    .line 111
    .line 112
    invoke-direct {v0, p0, v2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lgv7;

    .line 116
    .line 117
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Llr1;->H:Lgv7;

    .line 121
    .line 122
    new-instance v0, Lah;

    .line 123
    .line 124
    const/16 v2, 0x13

    .line 125
    .line 126
    invoke-direct {v0, p0, v2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    new-instance v2, Lgv7;

    .line 130
    .line 131
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 132
    .line 133
    .line 134
    iput-object v2, p0, Llr1;->I:Lgv7;

    .line 135
    .line 136
    new-instance v0, Lhr1;

    .line 137
    .line 138
    invoke-direct {v0, p0, v1}, Lhr1;-><init>(Llr1;I)V

    .line 139
    .line 140
    .line 141
    new-instance v2, Lgv7;

    .line 142
    .line 143
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 144
    .line 145
    .line 146
    iput-object v2, p0, Llr1;->J:Lgv7;

    .line 147
    .line 148
    new-instance v0, Lir1;

    .line 149
    .line 150
    invoke-direct {v0, p0, v1}, Lir1;-><init>(Llr1;I)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Lgv7;

    .line 154
    .line 155
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 156
    .line 157
    .line 158
    iput-object v1, p0, Llr1;->K:Lgv7;

    .line 159
    .line 160
    new-instance v0, Lm9;

    .line 161
    .line 162
    invoke-direct {v0, v4}, Lm9;-><init>(I)V

    .line 163
    .line 164
    .line 165
    new-instance v1, Lpf;

    .line 166
    .line 167
    const/4 v2, 0x2

    .line 168
    invoke-direct {v1, p0, v2}, Lpf;-><init>(Ljava/lang/Object;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/o;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lcr3;

    .line 176
    .line 177
    iput-object v0, p0, Llr1;->L:Lcr3;

    .line 178
    .line 179
    new-instance v0, Lk9;

    .line 180
    .line 181
    invoke-direct {v0, v4}, Lk9;-><init>(I)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lbb;

    .line 185
    .line 186
    invoke-direct {v1, p0, v2}, Lbb;-><init>(Ljava/lang/Object;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/o;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Lcr3;

    .line 194
    .line 195
    iput-object v0, p0, Llr1;->M:Lcr3;

    .line 196
    .line 197
    new-instance v0, Ltm6;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 200
    .line 201
    .line 202
    new-instance v1, Lcb;

    .line 203
    .line 204
    invoke-direct {v1, p0}, Lcb;-><init>(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/o;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Lcr3;

    .line 212
    .line 213
    iput-object v0, p0, Llr1;->N:Lcr3;

    .line 214
    .line 215
    return-void
.end method

.method public static q(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Ljava/util/List;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getBackupLimits()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 24
    .line 25
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getAppPart()Liu;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v4, Liu;->DATA:Liu;

    .line 30
    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v2, v0

    .line 35
    :goto_0
    check-cast v2, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    :cond_2
    new-instance v3, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 40
    .line 41
    sget-object v1, Liu;->DATA:Liu;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/4 v7, 0x6

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-direct/range {v3 .. v8}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    move-object v2, v3

    .line 55
    :cond_3
    if-eqz p0, :cond_6

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    move-object v4, v3

    .line 72
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 73
    .line 74
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getAppPart()Liu;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    sget-object v5, Liu;->EXTDATA:Liu;

    .line 79
    .line 80
    if-ne v4, v5, :cond_4

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    move-object v3, v0

    .line 84
    :goto_1
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 85
    .line 86
    if-nez v3, :cond_7

    .line 87
    .line 88
    :cond_6
    new-instance v4, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 89
    .line 90
    sget-object v1, Liu;->EXTDATA:Liu;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const/4 v8, 0x6

    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    invoke-direct/range {v4 .. v9}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 101
    .line 102
    .line 103
    move-object v3, v4

    .line 104
    :cond_7
    if-eqz p0, :cond_a

    .line 105
    .line 106
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_9

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    move-object v5, v4

    .line 121
    check-cast v5, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 122
    .line 123
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getAppPart()Liu;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    sget-object v6, Liu;->EXPANSION:Liu;

    .line 128
    .line 129
    if-ne v5, v6, :cond_8

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_9
    move-object v4, v0

    .line 133
    :goto_2
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 134
    .line 135
    if-nez v4, :cond_b

    .line 136
    .line 137
    :cond_a
    new-instance v5, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 138
    .line 139
    sget-object v1, Liu;->EXPANSION:Liu;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    const/4 v9, 0x6

    .line 146
    const/4 v10, 0x0

    .line 147
    const/4 v7, 0x0

    .line 148
    const/4 v8, 0x0

    .line 149
    invoke-direct/range {v5 .. v10}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 150
    .line 151
    .line 152
    move-object v4, v5

    .line 153
    :cond_b
    if-eqz p0, :cond_e

    .line 154
    .line 155
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_d

    .line 164
    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    move-object v5, v1

    .line 170
    check-cast v5, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 171
    .line 172
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getAppPart()Liu;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    sget-object v6, Liu;->MEDIA:Liu;

    .line 177
    .line 178
    if-ne v5, v6, :cond_c

    .line 179
    .line 180
    move-object v0, v1

    .line 181
    :cond_d
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 182
    .line 183
    if-nez v0, :cond_f

    .line 184
    .line 185
    :cond_e
    new-instance v5, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 186
    .line 187
    sget-object p0, Liu;->MEDIA:Liu;

    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    const/4 v9, 0x6

    .line 194
    const/4 v10, 0x0

    .line 195
    const/4 v7, 0x0

    .line 196
    const/4 v8, 0x0

    .line 197
    invoke-direct/range {v5 .. v10}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 198
    .line 199
    .line 200
    move-object v0, v5

    .line 201
    :cond_f
    filled-new-array {v2, v3, v4, v0}, [Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 6

    .line 1
    iget-object p1, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_a

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    const/16 v4, 0xa

    .line 15
    .line 16
    sparse-switch v1, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :sswitch_0
    const-string v1, "config_app_parts"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 36
    .line 37
    const v1, 0x7f130060

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Liu;

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {v5}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    new-instance v4, Lk3;

    .line 97
    .line 98
    invoke-direct {v4, p0, v3}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v1, v2, v0, v4}, Lxx3;->z(Lsa1;Ljava/lang/String;Ljava/util/Set;ZLmt3;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :sswitch_1
    const-string v1, "config_compression_level"

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_2

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 121
    .line 122
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getCompressionLevel()Lxp1;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    new-instance v1, Ld7;

    .line 135
    .line 136
    invoke-direct {v1, p0, v2}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v0, v1}, Lvp1;->a(Landroidx/fragment/app/u;Lxp1;Lmt3;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :sswitch_2
    const-string v1, "config_app_backup_limits"

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_3

    .line 151
    .line 152
    goto/16 :goto_3

    .line 153
    .line 154
    :cond_3
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1}, Llr1;->q(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p0, p0, Llr1;->L:Lcr3;

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Lcr3;->a(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :sswitch_3
    const-string v1, "config_sync_options"

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_4

    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 188
    .line 189
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-instance v1, Lhj;

    .line 202
    .line 203
    invoke-direct {v1, p0, v3}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 204
    .line 205
    .line 206
    invoke-static {p1, v0, v1}, Llg7;->F(Lsa1;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :sswitch_4
    const-string v1, "config_restore_special_permissions"

    .line 212
    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_5

    .line 218
    .line 219
    goto/16 :goto_3

    .line 220
    .line 221
    :cond_5
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iget-object p0, p0, Llr1;->N:Lcr3;

    .line 230
    .line 231
    invoke-virtual {p0, p1}, Lcr3;->a(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_2

    .line 235
    .line 236
    :sswitch_5
    const-string v1, "config_multiple_backups_strategy"

    .line 237
    .line 238
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-nez p1, :cond_6

    .line 243
    .line 244
    goto/16 :goto_3

    .line 245
    .line 246
    :cond_6
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getMultipleBackupStrategy()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iget-object p0, p0, Llr1;->M:Lcr3;

    .line 259
    .line 260
    invoke-virtual {p0, p1}, Lcr3;->a(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :sswitch_6
    const-string v1, "config_restore_runtime_permissions"

    .line 266
    .line 267
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-nez p1, :cond_7

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_7
    sget-object p1, Lyu;->Companion:Lwu;

    .line 275
    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 281
    .line 282
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestorePermissionsMode()Lyu;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    new-instance v3, Lw20;

    .line 295
    .line 296
    invoke-direct {v3, p0, v2}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-static {v0, v1, v3}, Lwu;->c(Landroidx/fragment/app/u;Lyu;Lmt3;)V

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :sswitch_7
    const-string v1, "config_backup_locations"

    .line 307
    .line 308
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-nez p1, :cond_8

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;

    .line 320
    .line 321
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-static {v0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_9

    .line 351
    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Lq05;

    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    goto :goto_1

    .line 366
    :cond_9
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    new-instance v1, Lc7;

    .line 371
    .line 372
    const/16 v2, 0xd

    .line 373
    .line 374
    invoke-direct {v1, p0, v2}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 375
    .line 376
    .line 377
    invoke-static {p1, v0, v1}, Lt05;->a(Lsa1;Ljava/util/Set;Lmt3;)V

    .line 378
    .line 379
    .line 380
    :goto_2
    const/4 p0, 0x1

    .line 381
    return p0

    .line 382
    :cond_a
    :goto_3
    return v0

    .line 383
    :sswitch_data_0
    .sparse-switch
        -0x6e5c7782 -> :sswitch_7
        -0x5133ac11 -> :sswitch_6
        -0x41de236d -> :sswitch_5
        -0x3bdb84b0 -> :sswitch_4
        -0xfe3c129 -> :sswitch_3
        0x42b73da -> :sswitch_2
        0x560213ae -> :sswitch_1
        0x6bceee85 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l()V
    .locals 3

    .line 1
    const v0, 0x7f16000f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lc46;->i(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lfm0;->n()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/preference/Preference;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-boolean v2, v1, Landroidx/preference/Preference;->J:Z

    .line 29
    .line 30
    instance-of v2, v1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 35
    .line 36
    iput-object p0, v1, Landroidx/preference/Preference;->e:Llr1;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p0, v1, Landroidx/preference/Preference;->f:Lt36;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Llr1;->s()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lfm0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Lmr1;->f:Lex6;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Le7;

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Ljs;

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-direct {p0, v1, v0}, Ljs;-><init>(ILmt3;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final r()Lmr1;
    .locals 0

    .line 1
    iget-object p0, p0, Llr1;->p:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmr1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final s()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Llr1;->r()Lmr1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lmr1;->f:Lex6;

    .line 6
    .line 7
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Llr1;->q:Lgv7;

    .line 17
    .line 18
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/preference/Preference;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v6, Lrx;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-direct {v6, v3}, Lrx;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const/16 v7, 0x1f

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Llr1;->r:Lgv7;

    .line 47
    .line 48
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroidx/preference/Preference;

    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v6, Lsh;

    .line 59
    .line 60
    const/4 v3, 0x3

    .line 61
    invoke-direct {v6, v3}, Lsh;-><init>(I)V

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Llr1;->t:Lgv7;

    .line 73
    .line 74
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroidx/preference/Preference;

    .line 79
    .line 80
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Lji8;->r(Ljava/util/Collection;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->C(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->toDisplayString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Llr1;->x:Lgv7;

    .line 103
    .line 104
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroidx/preference/Preference;

    .line 109
    .line 110
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getMultipleBackupStrategy()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v2}, Lorg/swiftapps/swiftbackup/settings/f;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->preferenceSummary()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Llr1;->y:Lgv7;

    .line 126
    .line 127
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Landroidx/preference/Preference;

    .line 132
    .line 133
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getCompressionLevel()Lxp1;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    sget-object v3, Lup1;->a:[I

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    aget v2, v3, v2

    .line 147
    .line 148
    packed-switch v2, :pswitch_data_0

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lq;->j()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_0
    const v2, 0x7f1301a8

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :pswitch_1
    const v2, 0x7f1301a5

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :pswitch_2
    const v2, 0x7f1301a6

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :pswitch_3
    const v2, 0x7f1301a3

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :pswitch_4
    const v2, 0x7f1301a4

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :pswitch_5
    const v2, 0x7f1301a7

    .line 176
    .line 177
    .line 178
    :goto_0
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 179
    .line 180
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Llr1;->G:Lgv7;

    .line 195
    .line 196
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, Landroidx/preference/Preference;

    .line 201
    .line 202
    invoke-static {v0}, Llr1;->q(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    new-instance v3, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_2

    .line 220
    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    move-object v5, v4

    .line 226
    check-cast v5, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 227
    .line 228
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->hasLimits()Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_1

    .line 233
    .line 234
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-nez v2, :cond_3

    .line 243
    .line 244
    new-instance v7, Lnk;

    .line 245
    .line 246
    const/4 v2, 0x0

    .line 247
    invoke-direct {v7, v2}, Lnk;-><init>(I)V

    .line 248
    .line 249
    .line 250
    const/16 v8, 0x1e

    .line 251
    .line 252
    const-string v4, "\n"

    .line 253
    .line 254
    const/4 v5, 0x0

    .line 255
    const/4 v6, 0x0

    .line 256
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    goto :goto_2

    .line 261
    :cond_3
    const/4 v2, 0x0

    .line 262
    :goto_2
    if-eqz v2, :cond_4

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_4
    const v2, 0x7f1303cb

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    :goto_3
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    iget-object v1, p0, Llr1;->H:Lgv7;

    .line 279
    .line 280
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 285
    .line 286
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getCacheBackup()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 291
    .line 292
    .line 293
    iget-object v1, p0, Llr1;->I:Lgv7;

    .line 294
    .line 295
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    check-cast v1, Landroidx/preference/Preference;

    .line 300
    .line 301
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestorePermissionsMode()Lyu;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v2}, Lyu;->asDisplayString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    iget-object v1, p0, Llr1;->J:Lgv7;

    .line 313
    .line 314
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Landroidx/preference/Preference;

    .line 319
    .line 320
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestoreSpecialPermissions()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_5

    .line 325
    .line 326
    const v2, 0x7f130219

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_5
    const v2, 0x7f130201

    .line 331
    .line 332
    .line 333
    :goto_4
    invoke-virtual {p0, v2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    iget-object p0, p0, Llr1;->K:Lgv7;

    .line 341
    .line 342
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 347
    .line 348
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestoreSsaid()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    nop

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
