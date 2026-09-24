.class public final Ldz5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ldz5;

.field public static final b:Lgv7;

.field public static final c:Lgv7;

.field public static final d:Lgv7;

.field public static final e:Lgv7;

.field public static final f:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldz5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldz5;->a:Ldz5;

    .line 7
    .line 8
    new-instance v0, Lq9;

    .line 9
    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lq9;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lgv7;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Ldz5;->b:Lgv7;

    .line 21
    .line 22
    new-instance v0, Ljx;

    .line 23
    .line 24
    const/16 v1, 0x10

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljx;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lgv7;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Ldz5;->c:Lgv7;

    .line 35
    .line 36
    new-instance v0, Lzj;

    .line 37
    .line 38
    const/16 v1, 0xd

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lzj;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lgv7;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 46
    .line 47
    .line 48
    sput-object v1, Ldz5;->d:Lgv7;

    .line 49
    .line 50
    new-instance v0, Lb7;

    .line 51
    .line 52
    const/16 v1, 0x18

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lgv7;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 60
    .line 61
    .line 62
    sput-object v1, Ldz5;->e:Lgv7;

    .line 63
    .line 64
    new-instance v0, Lov;

    .line 65
    .line 66
    const/16 v1, 0xc

    .line 67
    .line 68
    invoke-direct {v0, v1}, Lov;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lgv7;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 74
    .line 75
    .line 76
    sput-object v1, Ldz5;->f:Lgv7;

    .line 77
    .line 78
    return-void
.end method

.method public static varargs a(Lzm;Lt45;[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lb67;->c()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ldz5;->c()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lel1;->R0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p2, v0}, Lx50;->e0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Ldz5;->n()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    invoke-interface {p1, p0, v1}, Lt45;->b(ZZ)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v0, Lkz7;

    .line 37
    .line 38
    invoke-direct {v0}, Lkz7;-><init>()V

    .line 39
    .line 40
    .line 41
    array-length v2, p2

    .line 42
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, [Ljava/lang/String;

    .line 47
    .line 48
    iput-object p2, v0, Lkz7;->c:[Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Lcz5;

    .line 51
    .line 52
    invoke-direct {v2, p1, p0}, Lcz5;-><init>(Lt45;Lzm;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Lkz7;->b:Lcz5;

    .line 56
    .line 57
    invoke-static {p2}, Lod2;->p(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_3

    .line 62
    .line 63
    new-instance p0, Landroid/content/Intent;

    .line 64
    .line 65
    const-class p1, Lcom/gun0912/tedpermission/TedPermissionActivity;

    .line 66
    .line 67
    iget-object p2, v0, Lkz7;->a:Landroid/content/Context;

    .line 68
    .line 69
    invoke-direct {p0, p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .line 71
    .line 72
    const-string p1, "permissions"

    .line 73
    .line 74
    iget-object v2, v0, Lkz7;->c:[Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    const-string p1, "rationale_title"

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    const-string p1, "rationale_message"

    .line 86
    .line 87
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    const-string p1, "deny_title"

    .line 91
    .line 92
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    const-string p1, "deny_message"

    .line 96
    .line 97
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const-string p1, "package_name"

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    const-string p1, "setting_button"

    .line 110
    .line 111
    iget-boolean v3, v0, Lkz7;->d:Z

    .line 112
    .line 113
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    const-string p1, "denied_dialog_close_text"

    .line 117
    .line 118
    iget-object v3, v0, Lkz7;->e:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    const-string p1, "rationale_confirm_text"

    .line 124
    .line 125
    iget-object v3, v0, Lkz7;->f:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    const-string p1, "setting_button_text"

    .line 131
    .line 132
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    const-string p1, "screen_orientation"

    .line 136
    .line 137
    iget v2, v0, Lkz7;->g:I

    .line 138
    .line 139
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    const/high16 p1, 0x10000000

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    const/high16 p1, 0x40000

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    iget-object p1, v0, Lkz7;->b:Lcz5;

    .line 153
    .line 154
    sget-object v2, Lcom/gun0912/tedpermission/TedPermissionActivity;->x:Ljava/util/ArrayDeque;

    .line 155
    .line 156
    if-nez v2, :cond_1

    .line 157
    .line 158
    new-instance v2, Ljava/util/ArrayDeque;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 161
    .line 162
    .line 163
    sput-object v2, Lcom/gun0912/tedpermission/TedPermissionActivity;->x:Ljava/util/ArrayDeque;

    .line 164
    .line 165
    :cond_1
    sget-object v2, Lcom/gun0912/tedpermission/TedPermissionActivity;->x:Ljava/util/ArrayDeque;

    .line 166
    .line 167
    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    .line 172
    .line 173
    iget-object p0, v0, Lkz7;->c:[Ljava/lang/String;

    .line 174
    .line 175
    sget-object p1, Lrz7;->a:Landroid/content/Context;

    .line 176
    .line 177
    array-length p1, p0

    .line 178
    move p2, v1

    .line 179
    :goto_0
    if-ge p2, p1, :cond_2

    .line 180
    .line 181
    aget-object v0, p0, p2

    .line 182
    .line 183
    sget-object v2, Lrz7;->a:Landroid/content/Context;

    .line 184
    .line 185
    const-string v3, "PREFS_NAME_PERMISSION"

    .line 186
    .line 187
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v4, "IS_FIRST_REQUEST_"

    .line 198
    .line 199
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    .line 215
    .line 216
    add-int/lit8 p2, p2, 0x1

    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_2
    return-void

    .line 220
    :cond_3
    const-string p0, "You must setPermissions() on TedPermission"

    .line 221
    .line 222
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method public static b(Ljava/util/Set;)Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 7
    .line 8
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x7f13040c

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ":\n\n"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    const/16 v2, 0xa

    .line 33
    .line 34
    invoke-static {p0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_17

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    sget-object v3, Lg00;->a:Lg00;

    .line 58
    .line 59
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v4, Ljr4;

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    invoke-direct {v4, v2, v5}, Ljr4;-><init>(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    const/16 v6, 0x8

    .line 73
    .line 74
    const-string v7, "PermissionHelper"

    .line 75
    .line 76
    const-string v8, "getPermissionGroup"

    .line 77
    .line 78
    invoke-static {v7, v8, v5, v4, v6}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Landroid/content/pm/PermissionInfo;

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    if-eqz v4, :cond_0

    .line 86
    .line 87
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    move-object v4, v5

    .line 91
    :goto_1
    const-string v6, "android.permission-group.UNDEFINED"

    .line 92
    .line 93
    invoke-static {v4, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    move-object v4, v5

    .line 101
    :goto_2
    const-string v6, "android.permission.POST_NOTIFICATIONS"

    .line 102
    .line 103
    const-string v7, "android.permission.READ_CONTACTS"

    .line 104
    .line 105
    const-string v8, "com.android.permission.GET_INSTALLED_APPS"

    .line 106
    .line 107
    const-string v9, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 108
    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-nez v10, :cond_a

    .line 116
    .line 117
    :cond_2
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_4

    .line 122
    .line 123
    :cond_3
    :goto_3
    move-object v4, v5

    .line 124
    goto :goto_4

    .line 125
    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_5

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    invoke-static {}, Ldz5;->c()Ljava/util/Set;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_6

    .line 141
    .line 142
    const-string v4, "android.permission-group.STORAGE"

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    sget-object v4, Ldz5;->c:Lgv7;

    .line 146
    .line 147
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Ljava/util/Set;

    .line 152
    .line 153
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_7

    .line 158
    .line 159
    const-string v4, "android.permission-group.SMS"

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    sget-object v4, Ldz5;->e:Lgv7;

    .line 163
    .line 164
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Ljava/util/Set;

    .line 169
    .line 170
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_8

    .line 175
    .line 176
    invoke-static {}, Lb67;->a()Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_8

    .line 181
    .line 182
    const-string v4, "android.permission-group.CALL_LOG"

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_8
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-eqz v4, :cond_9

    .line 190
    .line 191
    const-string v4, "android.permission-group.CONTACTS"

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_9
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_3

    .line 199
    .line 200
    invoke-static {}, Lb67;->e()Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_3

    .line 205
    .line 206
    const-string v4, "android.permission-group.NOTIFICATIONS"

    .line 207
    .line 208
    :cond_a
    :goto_4
    if-eqz v4, :cond_c

    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-nez v10, :cond_b

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_b
    const/4 v2, 0x0

    .line 218
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    goto/16 :goto_7

    .line 234
    .line 235
    :cond_c
    :goto_5
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_d

    .line 240
    .line 241
    const v3, 0x7f13003d

    .line 242
    .line 243
    .line 244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    goto/16 :goto_6

    .line 249
    .line 250
    :cond_d
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_e

    .line 255
    .line 256
    const v3, 0x7f13003b

    .line 257
    .line 258
    .line 259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    goto/16 :goto_6

    .line 264
    .line 265
    :cond_e
    invoke-static {}, Ldz5;->c()Ljava/util/Set;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eqz v3, :cond_f

    .line 274
    .line 275
    const v3, 0x7f130041

    .line 276
    .line 277
    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    goto/16 :goto_6

    .line 283
    .line 284
    :cond_f
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_10

    .line 289
    .line 290
    const v3, 0x7f13003e

    .line 291
    .line 292
    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    goto :goto_6

    .line 298
    :cond_10
    sget-object v3, Ldz5;->d:Lgv7;

    .line 299
    .line 300
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    check-cast v3, Ljava/util/Set;

    .line 305
    .line 306
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_11

    .line 311
    .line 312
    const v3, 0x7f130040

    .line 313
    .line 314
    .line 315
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    goto :goto_6

    .line 320
    :cond_11
    sget-object v3, Ldz5;->f:Lgv7;

    .line 321
    .line 322
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Ljava/util/Set;

    .line 327
    .line 328
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-eqz v3, :cond_12

    .line 333
    .line 334
    invoke-static {}, Lb67;->a()Z

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    if-eqz v3, :cond_12

    .line 339
    .line 340
    const v3, 0x7f13003c

    .line 341
    .line 342
    .line 343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    goto :goto_6

    .line 348
    :cond_12
    const-string v3, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 349
    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-eqz v3, :cond_13

    .line 355
    .line 356
    const v3, 0x7f13003a

    .line 357
    .line 358
    .line 359
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    goto :goto_6

    .line 364
    :cond_13
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    if-eqz v3, :cond_14

    .line 369
    .line 370
    const v3, 0x7f1303e3

    .line 371
    .line 372
    .line 373
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    goto :goto_6

    .line 378
    :cond_14
    const-string v3, "android.permission.ACCESS_LOCAL_NETWORK"

    .line 379
    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-eqz v3, :cond_15

    .line 385
    .line 386
    const v3, 0x7f13003f

    .line 387
    .line 388
    .line 389
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    :cond_15
    :goto_6
    if-eqz v5, :cond_16

    .line 394
    .line 395
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    if-lez v3, :cond_16

    .line 400
    .line 401
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 402
    .line 403
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_16
    const-string v3, "."

    .line 420
    .line 421
    filled-new-array {v3}, [Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    const/4 v4, 0x6

    .line 426
    invoke-static {v2, v3, v4}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-static {v2}, Lel1;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    check-cast v2, Ljava/lang/String;

    .line 435
    .line 436
    :goto_7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :cond_17
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 442
    .line 443
    invoke-direct {p0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 444
    .line 445
    .line 446
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-eqz v1, :cond_18

    .line 459
    .line 460
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    check-cast v1, Ljava/lang/String;

    .line 465
    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    const-string v3, "\u2022 "

    .line 469
    .line 470
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v1, "\n"

    .line 477
    .line 478
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    goto :goto_8

    .line 489
    :cond_18
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p0

    .line 497
    return-object p0
.end method

.method public static c()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ldz5;->b:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Set;

    .line 8
    .line 9
    return-object v0
.end method

.method public static d()Z
    .locals 10

    .line 1
    const-string v1, "android.permission.ACCESS_LOCAL_NETWORK"

    .line 2
    .line 3
    invoke-static {v1}, Ldz5;->h(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    sget-object v0, Lmp6;->a:Lmp6;

    .line 12
    .line 13
    invoke-static {}, Lmp6;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v0, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 36
    .line 37
    const-string v0, "Skipping root/Shizuku permission grant on main thread: "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/4 v7, 0x4

    .line 44
    const/4 v8, 0x0

    .line 45
    const-string v4, "PermissionHelper"

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_2
    :try_start_0
    filled-new-array {v1}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ldz5;->e([Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ldz5;->h(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    move-object v6, v0

    .line 66
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 67
    .line 68
    const-string v0, "Unable to grant permission with root/Shizuku: "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/16 v8, 0x8

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    const-string v4, "PermissionHelper"

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return v2
.end method

.method public static varargs e([Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    aget-object v4, p0, v3

    .line 13
    .line 14
    sget-boolean v5, Lg42;->a:Z

    .line 15
    .line 16
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 17
    .line 18
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v6, Lg42;->g:Lgv7;

    .line 33
    .line 34
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/String;

    .line 39
    .line 40
    const/4 v7, 0x2

    .line 41
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    sget-object p0, Lmp6;->a:Lmp6;

    .line 67
    .line 68
    new-array v1, v2, [Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, [Ljava/lang/String;

    .line 75
    .line 76
    array-length v1, v0

    .line 77
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, [Ljava/lang/String;

    .line 82
    .line 83
    sget-object v1, Lip6;->SHIZUKU:Lip6;

    .line 84
    .line 85
    invoke-virtual {p0, v0, v1}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static f()V
    .locals 6

    .line 1
    invoke-static {}, Lb67;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 8
    .line 9
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v1, Leu;->allow:Leu;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v2, Lmp6;->a:Lmp6;

    .line 26
    .line 27
    sget-boolean v3, Lg42;->a:Z

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "set"

    .line 41
    .line 42
    const-string v5, "android:manage_external_storage"

    .line 43
    .line 44
    filled-new-array {v4, v0, v5, v1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x4

    .line 49
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    filled-new-array {v0}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v1, Lip6;->SHIZUKU:Lip6;

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-virtual {v2, v3, v0, v1}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 69
    .line 70
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 71
    .line 72
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Ldz5;->e([Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget-object v0, Ldz5;->f:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {v0}, Ldz5;->i(Ljava/util/Set;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lb67;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lb67;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 39
    .line 40
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, p0}, Lzh8;->e(Landroid/content/Context;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    :goto_0
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_2
    const/4 p0, 0x0

    .line 53
    return p0
.end method

.method public static i(Ljava/util/Set;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Ldz5;->h(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public static j()Z
    .locals 9

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_0
    sget-object v2, Lg00;->a:Lg00;

    .line 13
    .line 14
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v4, Ljava/util/ArrayList;

    .line 27
    .line 28
    const/16 v5, 0xa

    .line 29
    .line 30
    invoke-static {v2, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 52
    .line 53
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    move-object v5, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    sget-object v2, Lzc4;->a:Ljava/util/Set;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/String;

    .line 95
    .line 96
    sget-object v4, Lzc4;->a:Ljava/util/Set;

    .line 97
    .line 98
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    return v1

    .line 105
    :cond_3
    :goto_1
    return v3

    .line 106
    :goto_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 107
    .line 108
    const/16 v7, 0x8

    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    const-string v3, "PermissionHelper"

    .line 112
    .line 113
    const-string v4, "Unable to verify installed app visibility"

    .line 114
    .line 115
    const/4 v6, 0x0

    .line 116
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return v1
.end method

.method public static k()Z
    .locals 3

    .line 1
    invoke-static {}, Ldz5;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lzc4;->a:Ljava/util/Set;

    .line 6
    .line 7
    invoke-static {v0}, Ldz5;->l(Z)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "com.android.permission.GET_INSTALLED_APPS"

    .line 12
    .line 13
    invoke-static {v2}, Ldz5;->h(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method public static l(Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Lg00;->a:Lg00;

    .line 4
    .line 5
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "com.android.permission.GET_INSTALLED_APPS"

    .line 10
    .line 11
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-object v2, v0

    .line 17
    :goto_0
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    sget-object v5, Lg00;->a:Lg00;

    .line 25
    .line 26
    invoke-static {v1, v4}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Lg00;->y(Landroid/content/pm/PackageInfo;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-ne v4, v3, :cond_0

    .line 35
    .line 36
    move v4, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move v4, v1

    .line 39
    :goto_1
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lb67;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    iget v5, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 53
    .line 54
    and-int/lit8 v5, v5, 0xf

    .line 55
    .line 56
    :goto_2
    if-ne v5, v3, :cond_2

    .line 57
    .line 58
    move v5, v3

    .line 59
    goto :goto_3

    .line 60
    :cond_2
    move v5, v1

    .line 61
    :goto_3
    sget-object v6, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 62
    .line 63
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-string v7, "oem_installed_apps_runtime_permission_enable"

    .line 72
    .line 73
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-ne v6, v3, :cond_3

    .line 78
    .line 79
    move v6, v3

    .line 80
    goto :goto_4

    .line 81
    :cond_3
    move v6, v1

    .line 82
    :goto_4
    sget-object v7, Lzc4;->a:Ljava/util/Set;

    .line 83
    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    iget-object v0, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    :cond_4
    if-nez v0, :cond_5

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    const-string v2, "com.lbe.security.miui"

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    if-eqz v4, :cond_7

    .line 100
    .line 101
    if-nez v5, :cond_6

    .line 102
    .line 103
    if-nez v6, :cond_6

    .line 104
    .line 105
    if-nez p0, :cond_7

    .line 106
    .line 107
    :cond_6
    move v1, v3

    .line 108
    :cond_7
    :goto_5
    return v1
.end method

.method public static m()Z
    .locals 1

    .line 1
    sget-object v0, Ldz5;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {v0}, Ldz5;->i(Ljava/util/Set;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static n()Z
    .locals 1

    .line 1
    invoke-static {}, Ldz5;->c()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ldz5;->i(Ljava/util/Set;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static o(Lzm;Ljava/util/Set;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lb67;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ldz5;->c()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lel1;->R0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "package:"

    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance v0, Landroid/content/Intent;

    .line 51
    .line 52
    const-string v2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 53
    .line 54
    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .line 56
    .line 57
    const-string p2, "android.intent.category.DEFAULT"

    .line 58
    .line 59
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p1, v1, v1}, Lz85;->d(Ljava/lang/String;Ljava/util/Set;ZZ)Lww4;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {p2, v0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p0, p2, p1}, Ldz5;->r(Lzm;Ljava/util/AbstractList;Ljava/util/Set;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 87
    .line 88
    const v0, 0x7f13029c

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p1}, Ldz5;->b(Ljava/util/Set;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v3, "\n\n"

    .line 100
    .line 101
    invoke-static {v2, v3, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/high16 v2, 0x41600000    # 14.0f

    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    new-instance v3, Lhv1;

    .line 112
    .line 113
    const v4, 0x7f140160

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, p0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 117
    .line 118
    .line 119
    new-instance v5, Ls35;

    .line 120
    .line 121
    invoke-direct {v5, p0, v4, v3, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 122
    .line 123
    .line 124
    const v2, 0x7f13040b

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v2}, Lv75;->v(I)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v5, Lva;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v2, Lra;

    .line 133
    .line 134
    iput-boolean v1, v2, Lra;->m:Z

    .line 135
    .line 136
    iput-object v0, v2, Lra;->f:Ljava/lang/CharSequence;

    .line 137
    .line 138
    new-instance v0, Lfp3;

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    invoke-direct {v0, v2, p0, p1}, Lfp3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    const p1, 0x7f1304f2

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, p1, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    new-instance p1, Lbz5;

    .line 151
    .line 152
    invoke-direct {p1, p2, p0, v1}, Lbz5;-><init>(ZLzm;I)V

    .line 153
    .line 154
    .line 155
    const p0, 0x7f1300f1

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, p0, p1}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public static p()V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "PermissionHelper"

    .line 6
    .line 7
    const-string v2, "Revoking storage permissions"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lb67;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 20
    .line 21
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v1, Leu;->ignore:Leu;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object v2, Lmp6;->a:Lmp6;

    .line 38
    .line 39
    sget-boolean v3, Lg42;->a:Z

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "set"

    .line 53
    .line 54
    const-string v5, "android:manage_external_storage"

    .line 55
    .line 56
    filled-new-array {v4, v0, v5, v1}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x4

    .line 61
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    filled-new-array {v0}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v1, Lip6;->SHIZUKU:Lip6;

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    invoke-virtual {v2, v3, v0, v1}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    sget-object v0, Lmp6;->a:Lmp6;

    .line 81
    .line 82
    sget-boolean v1, Lg42;->a:Z

    .line 83
    .line 84
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 85
    .line 86
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    sget-object v2, Lg42;->h:Lgv7;

    .line 98
    .line 99
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Ljava/lang/String;

    .line 104
    .line 105
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 106
    .line 107
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v4, 0x2

    .line 112
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Ljava/lang/String;

    .line 136
    .line 137
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    .line 138
    .line 139
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public static q(Lsa1;Ljava/util/Set;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x41600000    # 14.0f

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lhv1;

    .line 11
    .line 12
    const v2, 0x7f140160

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ls35;

    .line 19
    .line 20
    invoke-direct {v3, p0, v2, v1, v0}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v3, Lva;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lra;

    .line 26
    .line 27
    const v1, 0x7f130408

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Lv75;->v(I)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, v0, Lra;->m:Z

    .line 35
    .line 36
    invoke-static {p1}, Ldz5;->b(Ljava/util/Set;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 41
    .line 42
    new-instance p1, Liq1;

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    invoke-direct {p1, p0, v0}, Liq1;-><init>(Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    const p0, 0x7f130105

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p0, p1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static r(Lzm;Ljava/util/AbstractList;Ljava/util/Set;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v1, v0

    .line 17
    check-cast v1, Landroid/content/Intent;

    .line 18
    .line 19
    const/16 v0, 0x2639

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    move-object v5, v0

    .line 27
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Unable to open permission settings action="

    .line 36
    .line 37
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", permissions="

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/16 v7, 0x8

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    const-string v3, "PermissionHelper"

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    move-object v0, v5

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-object p2, Lzn4;->a:Lzn4;

    .line 76
    .line 77
    new-instance p2, Lcv;

    .line 78
    .line 79
    const/16 v0, 0xe

    .line 80
    .line 81
    invoke-direct {p2, v0, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Lzn4;->e(Lbt3;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method
