.class public final Ld45;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Ld45;


# instance fields
.field public final a:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld45;

    .line 2
    .line 3
    invoke-direct {v0}, Ld45;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld45;->b:Ld45;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld45;->a:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    return-void
.end method

.method public static a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;
    .locals 10

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getNon()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Lorg/swiftapps/swiftbackup/common/V;->setA(Z)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lp49;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    new-instance v2, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 26
    .line 27
    iget-object v3, v0, Lp49;->b:Lw1a;

    .line 28
    .line 29
    iget-object v3, v3, Lw1a;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v4, v0, Lp49;->b:Lw1a;

    .line 35
    .line 36
    iget-object v4, v4, Lw1a;->f:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v5, v0, Lp49;->b:Lw1a;

    .line 42
    .line 43
    iget-object v6, v5, Lw1a;->c:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v5}, Lw1a;->c()Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_1
    move-object v7, v1

    .line 56
    iget-object v8, v0, Lp49;->e:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Lp49;->b:Lw1a;

    .line 62
    .line 63
    iget-object v9, v0, Lw1a;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-direct/range {v2 .. v9}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final b()V
    .locals 9

    .line 1
    const-string v0, "prefs"

    .line 2
    .line 3
    const-string v1, "KEY_FIRST_START"

    .line 4
    .line 5
    iget-object p0, p0, Ld45;->a:Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_8

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, La45;

    .line 22
    .line 23
    check-cast v2, Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v3, Ld45;->b:Ld45;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 58
    .line 59
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v5}, Lcom/google/firebase/FirebaseApp;->getApps(Landroid/content/Context;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const-string v6, "uid"

    .line 82
    .line 83
    invoke-virtual {v5, v6, v4}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    sget-object v4, Lah8;->Companion:Lah8$a;

    .line 87
    .line 88
    new-instance v5, Lnu;

    .line 89
    .line 90
    const/16 v6, 0xd

    .line 91
    .line 92
    invoke-direct {v5, v6}, Lnu;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v5}, Lah8$a;->fromDatabase(Lmt3;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    if-nez v3, :cond_0

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    const/4 v4, 0x0

    .line 102
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 103
    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    invoke-interface {v5, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    move v5, v3

    .line 116
    :goto_2
    const/4 v6, 0x0

    .line 117
    const-string v7, "KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED"

    .line 118
    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    :try_start_1
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 122
    .line 123
    if-eqz v5, :cond_4

    .line 124
    .line 125
    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v4
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :catch_1
    move v5, v6

    .line 135
    :goto_3
    if-eqz v5, :cond_0

    .line 136
    .line 137
    :cond_5
    sget-object v5, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 138
    .line 139
    const-string v8, "editor"

    .line 140
    .line 141
    if-eqz v5, :cond_7

    .line 142
    .line 143
    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    .line 149
    .line 150
    sget-object v5, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 151
    .line 152
    if-eqz v5, :cond_6

    .line 153
    .line 154
    invoke-interface {v5, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    .line 160
    .line 161
    iget-object v3, v2, Lorg/swiftapps/swiftbackup/SwiftApp;->c:Lgv7;

    .line 162
    .line 163
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 168
    .line 169
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->a()V

    .line 170
    .line 171
    .line 172
    iget-object v2, v2, Lorg/swiftapps/swiftbackup/SwiftApp;->b:Lgv7;

    .line 173
    .line 174
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Lix6;

    .line 179
    .line 180
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-virtual {v2, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_6
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v4

    .line 191
    :cond_7
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v4

    .line 195
    :cond_8
    return-void
.end method

.method public final c()V
    .locals 10

    .line 1
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "signOut: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "d45"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string v0, "is_migrating_to_google_sign_in"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "prefs"

    .line 38
    .line 39
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    move v0, v3

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    .line 46
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 47
    .line 48
    const/4 v8, 0x4

    .line 49
    const/4 v9, 0x0

    .line 50
    const-string v5, "d45"

    .line 51
    .line 52
    const-string v6, "Migrating user to Google Sign-in"

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v4, 0x1

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    move v0, v4

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v0, v3

    .line 74
    :goto_1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lcom/google/firebase/auth/FirebaseAuth;->e()V

    .line 79
    .line 80
    .line 81
    const-string v5, "clearAnonymousSignIn"

    .line 82
    .line 83
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    sget-object v5, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 87
    .line 88
    invoke-virtual {v5, v2}, Lorg/swiftapps/swiftbackup/common/V;->setNon(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)V

    .line 89
    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    const-string v0, "signOut: Clearing data"

    .line 94
    .line 95
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    sget-object v0, Lg00;->a:Lg00;

    .line 99
    .line 100
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 101
    .line 102
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v4}, Lg00;->c(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {v5, v3}, Lorg/swiftapps/swiftbackup/common/V;->setG(Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ld45;->b()V

    .line 135
    .line 136
    .line 137
    return-void
.end method
