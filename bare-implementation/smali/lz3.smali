.class public final Llz3;
.super Lmz3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Llz3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Llz3;->c:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Llz3;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Llz3;->d:Llz3;

    .line 14
    .line 15
    return-void
.end method

.method public static e(Landroid/app/Activity;ILz19;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x1010309

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Theme.Dialog.Alert"

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-nez v0, :cond_2

    .line 46
    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p0, p1}, Ll19;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    if-eqz p3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    if-eq p1, v4, :cond_6

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    if-eq p1, v1, :cond_5

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    if-eq p1, v1, :cond_4

    .line 75
    .line 76
    const v1, 0x104000a

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const v1, 0x7f130190

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const v1, 0x7f13019a

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    goto :goto_0

    .line 100
    :cond_6
    const v1, 0x7f130193

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    :goto_0
    if-eqz p3, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    .line 111
    .line 112
    :cond_7
    invoke-static {p0, p1}, Ll19;->c(Landroid/content/Context;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_8

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 119
    .line 120
    .line 121
    :cond_8
    const-string p0, "Creating dialog for Google Play services availability issue. ConnectionResult="

    .line 122
    .line 123
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string p2, "GoogleApiAvailability"

    .line 133
    .line 134
    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method

.method public static f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    .line 1
    const-string v0, "Cannot display null dialog"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    instance-of v2, p0, Landroidx/fragment/app/u;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    if-eqz v2, :cond_1

    .line 7
    .line 8
    check-cast p0, Landroidx/fragment/app/u;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v2, Lhs7;

    .line 15
    .line 16
    invoke-direct {v2}, Lhs7;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, v2, Lhs7;->I:Landroid/app/Dialog;

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    iput-object p3, v2, Lhs7;->J:Landroid/content/DialogInterface$OnCancelListener;

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v2, p0, p2}, Landroidx/fragment/app/h;->k(Landroidx/fragment/app/z;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v2, Lyx2;

    .line 43
    .line 44
    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, v2, Lyx2;->a:Landroid/app/Dialog;

    .line 57
    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    iput-object p3, v2, Lyx2;->b:Landroid/content/DialogInterface$OnCancelListener;

    .line 61
    .line 62
    :cond_2
    invoke-virtual {v2, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lmz3;->a:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lmz3;->c(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final d(Lcom/google/android/gms/common/api/GoogleApiActivity;ILcom/google/android/gms/common/api/GoogleApiActivity;)V
    .locals 1

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-super {p0, p2, p1, v0}, Lmz3;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ls19;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Ls19;-><init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/GoogleApiActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, v0, p3}, Llz3;->e(Landroid/app/Activity;ILz19;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p2, "GooglePlayServicesErrorDialog"

    .line 20
    .line 21
    invoke-static {p1, p0, p2, p3}, Llz3;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final g(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 9

    .line 1
    const-string v0, "GMS core API Availability. ConnectionResult="

    .line 2
    .line 3
    const-string v1, ", tag=null"

    .line 4
    .line 5
    invoke-static {p2, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "GoogleApiAvailability"

    .line 15
    .line 16
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x12

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne p2, v0, :cond_0

    .line 23
    .line 24
    new-instance p2, Lu19;

    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lu19;-><init>(Llz3;Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const-wide/32 p0, 0x1d4c0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const/4 p0, 0x6

    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    if-ne p2, p0, :cond_1

    .line 40
    .line 41
    const-string p0, "GoogleApiAvailability"

    .line 42
    .line 43
    const-string p1, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    if-ne p2, p0, :cond_3

    .line 50
    .line 51
    const-string v0, "common_google_play_services_resolution_required_title"

    .line 52
    .line 53
    invoke-static {p1, v0}, Ll19;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-static {p1, p2}, Ll19;->c(Landroid/content/Context;I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    const v2, 0x7f130197

    .line 63
    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_4
    if-eq p2, p0, :cond_6

    .line 76
    .line 77
    const/16 p0, 0x13

    .line 78
    .line 79
    if-ne p2, p0, :cond_5

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    invoke-static {p1, p2}, Ll19;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    goto :goto_2

    .line 87
    :cond_6
    :goto_1
    invoke-static {p1}, Ll19;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v3, "common_google_play_services_resolution_required_text"

    .line 92
    .line 93
    invoke-static {p1, v3, p0}, Ll19;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v4, "notification"

    .line 102
    .line 103
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v4}, Lly8;->h(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    check-cast v4, Landroid/app/NotificationManager;

    .line 111
    .line 112
    new-instance v5, Lwo5;

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-direct {v5, p1, v6}, Lwo5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput-boolean v1, v5, Lwo5;->p:Z

    .line 119
    .line 120
    const/16 v6, 0x10

    .line 121
    .line 122
    invoke-virtual {v5, v6}, Lwo5;->c(I)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, v5, Lwo5;->e:Ljava/lang/CharSequence;

    .line 130
    .line 131
    new-instance v0, Lc00;

    .line 132
    .line 133
    const/16 v6, 0x8

    .line 134
    .line 135
    const/4 v7, 0x0

    .line 136
    invoke-direct {v0, v6, v7}, Lc00;-><init>(IZ)V

    .line 137
    .line 138
    .line 139
    invoke-static {p0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    iput-object v6, v0, Lc00;->c:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {v5, v0}, Lwo5;->e(Lc00;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sget-object v6, Lrs9;->p:Ljava/lang/Boolean;

    .line 153
    .line 154
    if-nez v6, :cond_7

    .line 155
    .line 156
    const-string v6, "android.hardware.type.watch"

    .line 157
    .line 158
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sput-object v0, Lrs9;->p:Ljava/lang/Boolean;

    .line 167
    .line 168
    :cond_7
    sget-object v0, Lrs9;->p:Ljava/lang/Boolean;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    const/4 v6, 0x2

    .line 175
    if-eqz v0, :cond_9

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 182
    .line 183
    iget-object v0, v5, Lwo5;->u:Landroid/app/Notification;

    .line 184
    .line 185
    iput p0, v0, Landroid/app/Notification;->icon:I

    .line 186
    .line 187
    iput v6, v5, Lwo5;->i:I

    .line 188
    .line 189
    invoke-static {p1}, Lrs9;->o(Landroid/content/Context;)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-eqz p0, :cond_8

    .line 194
    .line 195
    const p0, 0x7f13019f

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    iget-object v0, v5, Lwo5;->b:Ljava/util/ArrayList;

    .line 203
    .line 204
    new-instance v2, Lvo5;

    .line 205
    .line 206
    const v3, 0x7f080094

    .line 207
    .line 208
    .line 209
    invoke-direct {v2, v3, p0, p3}, Lvo5;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_8
    iput-object p3, v5, Lwo5;->g:Landroid/app/PendingIntent;

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_9
    const v0, 0x108008a

    .line 220
    .line 221
    .line 222
    iget-object v8, v5, Lwo5;->u:Landroid/app/Notification;

    .line 223
    .line 224
    iput v0, v8, Landroid/app/Notification;->icon:I

    .line 225
    .line 226
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iget-object v2, v5, Lwo5;->u:Landroid/app/Notification;

    .line 231
    .line 232
    invoke-static {v0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 237
    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 239
    .line 240
    .line 241
    move-result-wide v2

    .line 242
    iget-object v0, v5, Lwo5;->u:Landroid/app/Notification;

    .line 243
    .line 244
    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 245
    .line 246
    iput-object p3, v5, Lwo5;->g:Landroid/app/PendingIntent;

    .line 247
    .line 248
    invoke-static {p0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    iput-object p0, v5, Lwo5;->f:Ljava/lang/CharSequence;

    .line 253
    .line 254
    :goto_3
    sget-object p0, Llz3;->c:Ljava/lang/Object;

    .line 255
    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    const-string p0, "com.google.android.gms.availability"

    .line 259
    .line 260
    invoke-virtual {v4, p0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 261
    .line 262
    .line 263
    move-result-object p3

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    const v0, 0x7f130196

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    if-nez p3, :cond_a

    .line 276
    .line 277
    new-instance p3, Landroid/app/NotificationChannel;

    .line 278
    .line 279
    const/4 v0, 0x4

    .line 280
    invoke-direct {p3, p0, p1, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 284
    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_a
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_b

    .line 296
    .line 297
    invoke-virtual {p3, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 301
    .line 302
    .line 303
    :cond_b
    :goto_4
    iput-object p0, v5, Lwo5;->s:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v5}, Lwo5;->a()Landroid/app/Notification;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    if-eq p2, v1, :cond_c

    .line 310
    .line 311
    if-eq p2, v6, :cond_c

    .line 312
    .line 313
    const/4 p1, 0x3

    .line 314
    if-eq p2, p1, :cond_c

    .line 315
    .line 316
    const p1, 0x9b6d

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_c
    sget-object p1, Lu04;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 321
    .line 322
    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 323
    .line 324
    .line 325
    const/16 p1, 0x28c4

    .line 326
    .line 327
    :goto_5
    invoke-virtual {v4, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :catchall_0
    move-exception p1

    .line 332
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    throw p1
.end method

.method public final h(Landroid/app/Activity;Lbu4;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-super {p0, p3, p1, v0}, Lmz3;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lx19;

    .line 8
    .line 9
    invoke-direct {v0, p0, p2}, Lx19;-><init>(Landroid/content/Intent;Lbu4;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p3, v0, p4}, Llz3;->e(Landroid/app/Activity;ILz19;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p2, "GooglePlayServicesErrorDialog"

    .line 20
    .line 21
    invoke-static {p1, p0, p2, p4}, Llz3;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
