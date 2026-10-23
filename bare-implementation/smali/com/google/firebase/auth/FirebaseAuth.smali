.class public Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lae4;


# instance fields
.field public final a:Lcom/google/firebase/FirebaseApp;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final e:Lix0;

.field public f:Lp49;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public i:Ljava/lang/String;

.field public j:Lyo1;

.field public final k:Lcom/google/android/recaptcha/RecaptchaAction;

.field public final l:Lcom/google/android/recaptcha/RecaptchaAction;

.field public final m:Lcom/google/android/recaptcha/RecaptchaAction;

.field public final n:Lbx5;

.field public final o:Lec9;

.field public final p:Lga6;

.field public q:Lvb9;

.field public final r:Ljava/util/concurrent/Executor;

.field public final s:Ljava/util/concurrent/Executor;

.field public final t:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lga6;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 1
    new-instance v3, Lix0;

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 2
    invoke-direct {v3, v4, v5}, Lix0;-><init>(IZ)V

    .line 3
    new-instance v6, Lw49;

    move-object/from16 v7, p5

    invoke-direct {v6, v0, v7}, Lw49;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v6, v3, Lix0;->b:Ljava/lang/Object;

    .line 4
    iput-object v2, v3, Lix0;->c:Ljava/lang/Object;

    .line 5
    new-instance v6, Lbx5;

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {v7}, Lly8;->h(Ljava/lang/Object;)V

    .line 9
    invoke-static {v8}, Lly8;->e(Ljava/lang/String;)V

    iput-object v8, v6, Lbx5;->b:Ljava/lang/Object;

    .line 10
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, v6, Lbx5;->a:Ljava/lang/Object;

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "com.google.firebase.auth.api.Store."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, v6, Lbx5;->c:Ljava/lang/Object;

    .line 13
    new-instance v7, Lu50;

    const-string v8, "StorageHelpers"

    new-array v9, v5, [Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lu50;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v7, v6, Lbx5;->d:Ljava/lang/Object;

    .line 14
    sget-object v7, Lec9;->b:Lec9;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Ljava/lang/Object;

    .line 20
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    .line 21
    const-string v8, "getOobCode"

    invoke-static {v8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object v8

    iput-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 22
    const-string v8, "signInWithPassword"

    invoke-static {v8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object v8

    iput-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 23
    const-string v8, "signUpPassword"

    invoke-static {v8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object v8

    iput-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 24
    const-string v8, "sendVerificationCode"

    .line 25
    invoke-static {v8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    .line 26
    const-string v8, "mfaSmsEnrollment"

    .line 27
    invoke-static {v8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    .line 28
    const-string v8, "mfaSmsSignIn"

    .line 29
    invoke-static {v8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    .line 30
    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 31
    iput-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    .line 32
    iput-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lbx5;

    .line 33
    invoke-static {v7}, Lly8;->h(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lec9;

    move-object/from16 v0, p2

    .line 34
    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->p:Lga6;

    .line 35
    iput-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->r:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p4

    .line 36
    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p6

    .line 37
    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->t:Ljava/util/concurrent/Executor;

    .line 38
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lbx5;

    .line 39
    const-string v2, "type"

    const-string v3, "com.google.firebase.auth.FIREBASE_USER"

    .line 40
    invoke-virtual {v0, v3}, Lbx5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lbx5;->d:Ljava/lang/Object;

    check-cast v6, Lu50;

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    move-object v2, v8

    goto :goto_1

    .line 42
    :cond_1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v0, v7}, Lbx5;->a(Lorg/json/JSONObject;)Lp49;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 47
    :catch_0
    const-string v2, "Failed to restore user data from persistent storage."

    new-array v3, v5, [Ljava/lang/Object;

    .line 48
    iget-object v7, v6, Lu50;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 49
    invoke-virtual {v6, v2, v3}, Lu50;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :goto_1
    iput-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    if-eqz v2, :cond_3

    .line 51
    iget-object v2, v2, Lp49;->b:Lw1a;

    .line 52
    iget-object v2, v2, Lw1a;->a:Ljava/lang/String;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "com.google.firebase.auth.GET_TOKEN_RESPONSE."

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbx5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    :try_start_1
    invoke-static {v0}, Lb69;->n(Ljava/lang/String;)Lb69;

    move-result-object v0
    :try_end_1
    .catch Le2a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 55
    :catch_1
    const-string v0, "Failed to restore token data from persistent storage."

    new-array v2, v5, [Ljava/lang/Object;

    .line 56
    iget-object v3, v6, Lu50;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 57
    invoke-virtual {v6, v0, v2}, Lu50;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v8

    :goto_2
    if-eqz v0, :cond_3

    .line 58
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    invoke-static {p0, v2, v0, v5, v5}, Lcom/google/firebase/auth/FirebaseAuth;->g(Lcom/google/firebase/auth/FirebaseAuth;Lp49;Lb69;ZZ)V

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lec9;

    .line 60
    iget-object v0, v0, Lec9;->a:Lx99;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    const-string v0, "statusCode"

    const-string v2, "recaptchaToken"

    const-string v3, "operation"

    const-string v6, "verifyAssertionRequest"

    const-string v7, "timestamp"

    .line 63
    iget-object v9, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 64
    invoke-virtual {v9}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 65
    const-string v11, "com.google.firebase.auth.internal.ProcessDeathHelper"

    .line 66
    invoke-virtual {v10, v11, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 67
    const-string v11, "firebaseAppName"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 68
    invoke-virtual {v9}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_b

    .line 69
    :cond_4
    invoke-interface {v10, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    const-wide/16 v13, 0x0

    if-eqz v11, :cond_10

    .line 70
    invoke-interface {v10, v6, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lj69;->CREATOR:Landroid/os/Parcelable$Creator;

    if-nez v0, :cond_5

    move-object v0, v8

    goto :goto_3

    .line 71
    :cond_5
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 72
    :goto_3
    invoke-static {v0, v2}, Lrs9;->d([BLandroid/os/Parcelable$Creator;)Lgx6;

    move-result-object v0

    .line 73
    check-cast v0, Lj69;

    .line 74
    invoke-interface {v10, v3, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v3, "tenantId"

    invoke-interface {v10, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    const-string v4, "firebaseUserUid"

    invoke-interface {v10, v4, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-interface {v10, v7, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    if-eqz v3, :cond_6

    .line 78
    invoke-static {v3}, Lly8;->e(Ljava/lang/String;)V

    .line 79
    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    monitor-enter v6

    .line 80
    :try_start_2
    iput-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 81
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    iput-object v3, v0, Lj69;->y:Ljava/lang/String;

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 83
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 84
    :cond_6
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_5
    move v5, v7

    goto :goto_6

    :sswitch_0
    const-string v3, "com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x2

    goto :goto_6

    :sswitch_1
    const-string v3, "com.google.firebase.auth.internal.NONGMSCORE_LINK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    move v5, v6

    goto :goto_6

    :sswitch_2
    const-string v3, "com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    :goto_6
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_9

    .line 85
    :pswitch_0
    invoke-static {v0}, Lua9;->u(Lj69;)Lua9;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->d(Ld80;)Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_9

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lp49;

    move-result-object v2

    .line 88
    iget-object v2, v2, Lp49;->b:Lw1a;

    .line 89
    iget-object v2, v2, Lw1a;->a:Ljava/lang/String;

    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 91
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lp49;

    move-result-object v2

    .line 92
    invoke-static {v0}, Lua9;->u(Lj69;)Lua9;

    move-result-object v0

    .line 93
    invoke-static {v2}, Lly8;->h(Ljava/lang/Object;)V

    .line 94
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 95
    invoke-virtual {v0}, Lua9;->q()Ld80;

    move-result-object v0

    new-instance v5, Lif3;

    invoke-direct {v5, p0}, Lif3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    const/4 v1, 0x0

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move-object/from16 p2, v2

    move-object p0, v3

    move-object/from16 p1, v4

    move-object/from16 p5, v5

    .line 96
    invoke-virtual/range {p0 .. p5}, Lix0;->l(Lcom/google/firebase/FirebaseApp;Lp49;Ld80;Ljava/lang/String;Lyb9;)Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_9

    .line 97
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lp49;

    move-result-object v2

    .line 98
    iget-object v2, v2, Lp49;->b:Lw1a;

    .line 99
    iget-object v2, v2, Lw1a;->a:Ljava/lang/String;

    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 101
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lp49;

    move-result-object v4

    .line 102
    invoke-static {v0}, Lua9;->u(Lj69;)Lua9;

    move-result-object v0

    .line 103
    const-string v2, "password"

    invoke-static {v4}, Lly8;->h(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0}, Lua9;->q()Ld80;

    move-result-object v0

    .line 105
    instance-of v3, v0, Lau2;

    if-eqz v3, :cond_d

    .line 106
    check-cast v0, Lau2;

    .line 107
    iget-object v3, v0, Lau2;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object v3, v2

    goto :goto_7

    .line 108
    :cond_a
    const-string v3, "emailLink"

    .line 109
    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 110
    iget-object v2, v0, Lau2;->a:Ljava/lang/String;

    .line 111
    iget-object v5, v0, Lau2;->b:Ljava/lang/String;

    .line 112
    invoke-static {v5}, Lly8;->e(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v4}, Lp49;->n()Ljava/lang/String;

    move-result-object v6

    .line 114
    new-instance v0, La49;

    const/4 v3, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, La49;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;ZLp49;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lcom/google/android/recaptcha/RecaptchaAction;

    invoke-virtual {v0, p0, v6, v2}, Ljd4;->O(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_9

    .line 116
    :cond_b
    iget-object v2, v0, Lau2;->c:Ljava/lang/String;

    .line 117
    invoke-static {v2}, Lly8;->e(Ljava/lang/String;)V

    .line 118
    sget v3, Lb8;->c:I

    .line 119
    invoke-static {v2}, Lly8;->e(Ljava/lang/String;)V

    .line 120
    :try_start_4
    new-instance v3, Lb8;

    invoke-direct {v3, v2}, Lb8;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-object v3, v8

    :goto_8
    if-eqz v3, :cond_c

    .line 121
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 122
    iget-object v3, v3, Lb8;->b:Ljava/lang/String;

    .line 123
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 124
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x42b0

    .line 125
    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 126
    invoke-static {v0}, Ly49;->a(Lcom/google/android/gms/common/api/Status;)Lkg3;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    goto :goto_9

    .line 127
    :cond_c
    new-instance v2, Lw39;

    invoke-direct {v2, p0, v6, v4, v0}, Lw39;-><init>(Lcom/google/firebase/auth/FirebaseAuth;ZLp49;Lau2;)V

    .line 128
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 129
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v0}, Ljd4;->O(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    goto :goto_9

    .line 130
    :cond_d
    instance-of v2, v0, Lxz5;

    .line 131
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    if-eqz v2, :cond_e

    .line 132
    check-cast v0, Lxz5;

    new-instance v2, Lif3;

    invoke-direct {v2, p0}, Lif3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    sget-object v1, Lo59;->a:Lk50;

    invoke-virtual {v1}, Ldg7;->clear()V

    .line 134
    new-instance v1, Ln49;

    invoke-direct {v1, v0}, Ln49;-><init>(Lxz5;)V

    .line 135
    iput-object v9, v1, Lh59;->c:Lcom/google/firebase/FirebaseApp;

    .line 136
    iput-object v4, v1, Lh59;->d:Lp49;

    .line 137
    iput-object v2, v1, Lh59;->e:Ljava/lang/Object;

    .line 138
    iput-object v2, v1, Lh59;->f:Lb99;

    .line 139
    invoke-virtual {v3, v1}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    goto :goto_9

    .line 140
    :cond_e
    invoke-virtual {v4}, Lp49;->n()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lif3;

    invoke-direct {v5, p0}, Lif3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 141
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    new-instance v1, Lk49;

    invoke-direct {v1, v0, v2}, Lk49;-><init>(Ld80;Ljava/lang/String;)V

    .line 143
    iput-object v9, v1, Lh59;->c:Lcom/google/firebase/FirebaseApp;

    .line 144
    iput-object v4, v1, Lh59;->d:Lp49;

    .line 145
    iput-object v5, v1, Lh59;->e:Ljava/lang/Object;

    .line 146
    iput-object v5, v1, Lh59;->f:Lb99;

    .line 147
    invoke-virtual {v3, v1}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 148
    :cond_f
    :goto_9
    invoke-static {v10}, Lx99;->b(Landroid/content/SharedPreferences;)V

    goto :goto_b

    .line 149
    :cond_10
    invoke-interface {v10, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 150
    invoke-interface {v10, v2, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-interface {v10, v3, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-interface {v10, v7, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_a

    .line 154
    :cond_11
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 155
    :goto_a
    invoke-static {v10}, Lx99;->b(Landroid/content/SharedPreferences;)V

    goto :goto_b

    .line 156
    :cond_12
    invoke-interface {v10, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x42a6

    .line 157
    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 158
    const-string v1, "statusMessage"

    invoke-interface {v10, v1, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 160
    invoke-direct {v2, v0, v1, v8, v8}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 161
    invoke-interface {v10, v7, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 162
    invoke-static {v10}, Lx99;->b(Landroid/content/SharedPreferences;)V

    .line 163
    invoke-static {v2}, Ly49;->a(Lcom/google/android/gms/common/api/Status;)Lkg3;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :cond_13
    :goto_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5df2262 -> :sswitch_2
        0xa6e6490 -> :sswitch_1
        0x56745691 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Lcom/google/firebase/auth/FirebaseAuth;Lp49;)V
    .locals 3

    .line 1
    const-string v0, "FirebaseAuth"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lp49;->b:Lw1a;

    .line 6
    .line 7
    iget-object p1, p1, Lw1a;->a:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Notifying auth state listeners about user ( "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, " )."

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "Notifying auth state listeners about a sign-out event."

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->t:Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    new-instance v0, Lw7;

    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    invoke-direct {v0, p0, v1}, Lw7;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static g(Lcom/google/firebase/auth/FirebaseAuth;Lp49;Lb69;ZZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static {v1}, Lly8;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lly8;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget-object v6, v1, Lp49;->b:Lw1a;

    .line 18
    .line 19
    iget-object v6, v6, Lw1a;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, v3, Lp49;->b:Lw1a;

    .line 22
    .line 23
    iget-object v3, v3, Lw1a;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-nez v3, :cond_1

    .line 35
    .line 36
    if-eqz p4, :cond_1

    .line 37
    .line 38
    goto/16 :goto_15

    .line 39
    .line 40
    :cond_1
    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v6, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget-object v6, v6, Lp49;->a:Lb69;

    .line 48
    .line 49
    iget-object v6, v6, Lb69;->b:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v7, v2, Lb69;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/4 v6, 0x1

    .line 64
    :goto_1
    if-nez v3, :cond_4

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const/4 v3, 0x0

    .line 69
    :goto_2
    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 70
    .line 71
    if-eqz v7, :cond_c

    .line 72
    .line 73
    iget-object v7, v1, Lp49;->b:Lw1a;

    .line 74
    .line 75
    iget-object v7, v7, Lw1a;->a:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v8, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 78
    .line 79
    if-nez v8, :cond_5

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    goto :goto_3

    .line 83
    :cond_5
    iget-object v8, v8, Lp49;->b:Lw1a;

    .line 84
    .line 85
    iget-object v8, v8, Lw1a;->a:Ljava/lang/String;

    .line 86
    .line 87
    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_6

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_6
    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 95
    .line 96
    iget-object v8, v1, Lp49;->e:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v7, v8}, Lp49;->u(Ljava/util/ArrayList;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lp49;->q()Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-nez v7, :cond_7

    .line 106
    .line 107
    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 108
    .line 109
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 110
    .line 111
    iput-object v8, v7, Lp49;->n:Ljava/lang/Boolean;

    .line 112
    .line 113
    :cond_7
    iget-object v7, v1, Lp49;->t:Lu99;

    .line 114
    .line 115
    if-eqz v7, :cond_9

    .line 116
    .line 117
    new-instance v8, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v9, v7, Lu99;->a:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_8

    .line 133
    .line 134
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    check-cast v10, Lyz5;

    .line 139
    .line 140
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    iget-object v7, v7, Lu99;->b:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_a

    .line 155
    .line 156
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    check-cast v9, Lv88;

    .line 161
    .line 162
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_9
    new-instance v8, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    :cond_a
    iget-object v7, v1, Lp49;->x:Ljava/util/List;

    .line 172
    .line 173
    iget-object v9, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 174
    .line 175
    invoke-virtual {v9, v8}, Lp49;->v(Ljava/util/ArrayList;)V

    .line 176
    .line 177
    .line 178
    iget-object v8, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 179
    .line 180
    if-nez v7, :cond_b

    .line 181
    .line 182
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    new-instance v7, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    :cond_b
    iput-object v7, v8, Lp49;->x:Ljava/util/List;

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_c
    :goto_6
    iput-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 194
    .line 195
    :goto_7
    if-eqz p3, :cond_20

    .line 196
    .line 197
    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lbx5;

    .line 198
    .line 199
    iget-object v8, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {v8}, Lly8;->h(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object v9, v7, Lbx5;->d:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v9, Lu50;

    .line 210
    .line 211
    new-instance v10, Lorg/json/JSONObject;

    .line 212
    .line 213
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 214
    .line 215
    .line 216
    :try_start_0
    const-string v11, "cachedTokenState"

    .line 217
    .line 218
    iget-object v12, v8, Lp49;->a:Lb69;

    .line 219
    .line 220
    invoke-virtual {v12}, Lb69;->q()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    .line 226
    .line 227
    const-string v11, "applicationName"

    .line 228
    .line 229
    iget-object v12, v8, Lp49;->c:Ljava/lang/String;

    .line 230
    .line 231
    invoke-static {v12}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    invoke-virtual {v12}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    .line 241
    .line 242
    const-string v11, "type"

    .line 243
    .line 244
    const-string v12, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    .line 245
    .line 246
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    .line 248
    .line 249
    iget-object v11, v8, Lp49;->e:Ljava/util/ArrayList;

    .line 250
    .line 251
    if-eqz v11, :cond_17

    .line 252
    .line 253
    new-instance v11, Lorg/json/JSONArray;

    .line 254
    .line 255
    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 256
    .line 257
    .line 258
    iget-object v12, v8, Lp49;->e:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result v13

    .line 264
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    const/16 v15, 0x1e

    .line 269
    .line 270
    if-le v14, v15, :cond_d

    .line 271
    .line 272
    const-string v13, "Provider user info list size larger than max size, truncating list to %d. Actual list size: %d"

    .line 273
    .line 274
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 279
    .line 280
    .line 281
    move-result v16

    .line 282
    const/16 v17, 0x1

    .line 283
    .line 284
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    filled-new-array {v14, v5}, [Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v9, v13, v5}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .line 294
    .line 295
    move v13, v15

    .line 296
    goto :goto_8

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const/4 v4, 0x0

    .line 299
    goto/16 :goto_12

    .line 300
    .line 301
    :cond_d
    const/16 v17, 0x1

    .line 302
    .line 303
    :goto_8
    const/4 v5, 0x0

    .line 304
    const/4 v14, 0x0

    .line 305
    :goto_9
    const-string v15, "firebase"

    .line 306
    .line 307
    if-ge v5, v13, :cond_10

    .line 308
    .line 309
    :try_start_1
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v16

    .line 313
    move-object/from16 v4, v16

    .line 314
    .line 315
    check-cast v4, Lw1a;

    .line 316
    .line 317
    move/from16 p4, v3

    .line 318
    .line 319
    iget-object v3, v4, Lw1a;->b:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    if-eqz v3, :cond_e

    .line 326
    .line 327
    move/from16 v14, v17

    .line 328
    .line 329
    :cond_e
    add-int/lit8 v3, v13, -0x1

    .line 330
    .line 331
    if-ne v5, v3, :cond_f

    .line 332
    .line 333
    if-eqz v14, :cond_11

    .line 334
    .line 335
    :cond_f
    invoke-virtual {v4}, Lw1a;->q()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 340
    .line 341
    .line 342
    add-int/lit8 v5, v5, 0x1

    .line 343
    .line 344
    move/from16 v3, p4

    .line 345
    .line 346
    goto :goto_9

    .line 347
    :cond_10
    move/from16 p4, v3

    .line 348
    .line 349
    :cond_11
    if-nez v14, :cond_16

    .line 350
    .line 351
    add-int/lit8 v3, v13, -0x1

    .line 352
    .line 353
    :goto_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    if-ge v3, v4, :cond_14

    .line 358
    .line 359
    if-ltz v3, :cond_14

    .line 360
    .line 361
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    check-cast v4, Lw1a;

    .line 366
    .line 367
    iget-object v5, v4, Lw1a;->b:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    if-eqz v5, :cond_12

    .line 374
    .line 375
    invoke-virtual {v4}, Lw1a;->q()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 380
    .line 381
    .line 382
    move/from16 v5, v17

    .line 383
    .line 384
    goto :goto_b

    .line 385
    :cond_12
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    add-int/lit8 v5, v5, -0x1

    .line 390
    .line 391
    if-ne v3, v5, :cond_13

    .line 392
    .line 393
    invoke-virtual {v4}, Lw1a;->q()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 398
    .line 399
    .line 400
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 401
    .line 402
    goto :goto_a

    .line 403
    :cond_14
    move v5, v14

    .line 404
    :goto_b
    if-nez v5, :cond_16

    .line 405
    .line 406
    const-string v3, "Malformed user object! No Firebase Auth provider id found. Provider user info list size: %d, trimmed size: %d"

    .line 407
    .line 408
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    invoke-virtual {v9, v3, v4}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    const/4 v4, 0x5

    .line 432
    if-ge v3, v4, :cond_16

    .line 433
    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    const-string v4, "Provider user info list:\n"

    .line 437
    .line 438
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    if-eqz v5, :cond_15

    .line 450
    .line 451
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    check-cast v5, Lw1a;

    .line 456
    .line 457
    iget-object v5, v5, Lw1a;->b:Ljava/lang/String;

    .line 458
    .line 459
    new-instance v12, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    .line 464
    const-string v13, "Provider - "

    .line 465
    .line 466
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v5, "\n"

    .line 473
    .line 474
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    goto :goto_c

    .line 485
    :cond_15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    const/4 v4, 0x0

    .line 490
    new-array v5, v4, [Ljava/lang/Object;

    .line 491
    .line 492
    invoke-virtual {v9, v3, v5}, Lu50;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    :cond_16
    const-string v3, "userInfos"

    .line 496
    .line 497
    invoke-virtual {v10, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    .line 499
    .line 500
    goto :goto_d

    .line 501
    :cond_17
    move/from16 p4, v3

    .line 502
    .line 503
    :goto_d
    const-string v3, "anonymous"

    .line 504
    .line 505
    invoke-virtual {v8}, Lp49;->q()Z

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 510
    .line 511
    .line 512
    const-string v3, "version"

    .line 513
    .line 514
    const-string v4, "2"

    .line 515
    .line 516
    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    .line 518
    .line 519
    iget-object v3, v8, Lp49;->p:Ll59;

    .line 520
    .line 521
    if-eqz v3, :cond_18

    .line 522
    .line 523
    const-string v4, "userMetadata"

    .line 524
    .line 525
    new-instance v5, Lorg/json/JSONObject;

    .line 526
    .line 527
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 528
    .line 529
    .line 530
    :try_start_2
    const-string v11, "lastSignInTimestamp"

    .line 531
    .line 532
    iget-wide v12, v3, Ll59;->a:J

    .line 533
    .line 534
    invoke-virtual {v5, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 535
    .line 536
    .line 537
    const-string v11, "creationTimestamp"

    .line 538
    .line 539
    iget-wide v12, v3, Ll59;->b:J

    .line 540
    .line 541
    invoke-virtual {v5, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 542
    .line 543
    .line 544
    :catch_1
    :try_start_3
    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    .line 546
    .line 547
    :cond_18
    iget-object v3, v8, Lp49;->t:Lu99;

    .line 548
    .line 549
    if-eqz v3, :cond_1a

    .line 550
    .line 551
    new-instance v4, Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .line 555
    .line 556
    iget-object v5, v3, Lu99;->a:Ljava/util/List;

    .line 557
    .line 558
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    .line 564
    .line 565
    move-result v11

    .line 566
    if-eqz v11, :cond_19

    .line 567
    .line 568
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v11

    .line 572
    check-cast v11, Lyz5;

    .line 573
    .line 574
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    goto :goto_e

    .line 578
    :cond_19
    iget-object v3, v3, Lu99;->b:Ljava/util/List;

    .line 579
    .line 580
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 585
    .line 586
    .line 587
    move-result v5

    .line 588
    if-eqz v5, :cond_1b

    .line 589
    .line 590
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    check-cast v5, Lv88;

    .line 595
    .line 596
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    goto :goto_f

    .line 600
    :cond_1a
    new-instance v4, Ljava/util/ArrayList;

    .line 601
    .line 602
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .line 604
    .line 605
    :cond_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    if-nez v3, :cond_1d

    .line 610
    .line 611
    new-instance v3, Lorg/json/JSONArray;

    .line 612
    .line 613
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 614
    .line 615
    .line 616
    const/4 v5, 0x0

    .line 617
    :goto_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 618
    .line 619
    .line 620
    move-result v11

    .line 621
    if-ge v5, v11, :cond_1c

    .line 622
    .line 623
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v11

    .line 627
    check-cast v11, Luh5;

    .line 628
    .line 629
    invoke-virtual {v11}, Luh5;->q()Lorg/json/JSONObject;

    .line 630
    .line 631
    .line 632
    move-result-object v11

    .line 633
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 634
    .line 635
    .line 636
    add-int/lit8 v5, v5, 0x1

    .line 637
    .line 638
    goto :goto_10

    .line 639
    :cond_1c
    const-string v4, "userMultiFactorInfo"

    .line 640
    .line 641
    invoke-virtual {v10, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    .line 643
    .line 644
    :cond_1d
    iget-object v3, v8, Lp49;->x:Ljava/util/List;

    .line 645
    .line 646
    if-eqz v3, :cond_1f

    .line 647
    .line 648
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 649
    .line 650
    .line 651
    move-result v4

    .line 652
    if-nez v4, :cond_1f

    .line 653
    .line 654
    new-instance v4, Lorg/json/JSONArray;

    .line 655
    .line 656
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 657
    .line 658
    .line 659
    const/4 v5, 0x0

    .line 660
    :goto_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 661
    .line 662
    .line 663
    move-result v8

    .line 664
    if-ge v5, v8, :cond_1e

    .line 665
    .line 666
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v8

    .line 670
    check-cast v8, Lv89;

    .line 671
    .line 672
    new-instance v11, Lorg/json/JSONObject;

    .line 673
    .line 674
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 675
    .line 676
    .line 677
    const-string v12, "credentialId"

    .line 678
    .line 679
    iget-object v13, v8, Lv89;->a:Ljava/lang/String;

    .line 680
    .line 681
    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    .line 683
    .line 684
    const-string v12, "name"

    .line 685
    .line 686
    iget-object v13, v8, Lv89;->b:Ljava/lang/String;

    .line 687
    .line 688
    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    .line 690
    .line 691
    const-string v12, "displayName"

    .line 692
    .line 693
    iget-object v8, v8, Lv89;->c:Ljava/lang/String;

    .line 694
    .line 695
    invoke-virtual {v11, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 699
    .line 700
    .line 701
    add-int/lit8 v5, v5, 0x1

    .line 702
    .line 703
    goto :goto_11

    .line 704
    :cond_1e
    const-string v3, "passkeyInfo"

    .line 705
    .line 706
    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    .line 708
    .line 709
    :cond_1f
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 713
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 714
    .line 715
    .line 716
    move-result v4

    .line 717
    if-nez v4, :cond_21

    .line 718
    .line 719
    const-string v4, "com.google.firebase.auth.FIREBASE_USER"

    .line 720
    .line 721
    invoke-virtual {v7, v4, v3}, Lbx5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    goto :goto_13

    .line 725
    :goto_12
    new-array v1, v4, [Ljava/lang/Object;

    .line 726
    .line 727
    iget-object v2, v9, Lu50;->b:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast v2, Ljava/lang/String;

    .line 730
    .line 731
    const-string v3, "Failed to turn object into JSON"

    .line 732
    .line 733
    invoke-virtual {v9, v3, v1}, Lu50;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    .line 739
    .line 740
    new-instance v1, Le2a;

    .line 741
    .line 742
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 743
    .line 744
    .line 745
    throw v1

    .line 746
    :cond_20
    move/from16 p4, v3

    .line 747
    .line 748
    :cond_21
    :goto_13
    if-eqz v6, :cond_23

    .line 749
    .line 750
    iget-object v3, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 751
    .line 752
    if-eqz v3, :cond_22

    .line 753
    .line 754
    iput-object v2, v3, Lp49;->a:Lb69;

    .line 755
    .line 756
    :cond_22
    invoke-static {v0, v3}, Lcom/google/firebase/auth/FirebaseAuth;->h(Lcom/google/firebase/auth/FirebaseAuth;Lp49;)V

    .line 757
    .line 758
    .line 759
    :cond_23
    if-eqz p4, :cond_24

    .line 760
    .line 761
    iget-object v3, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 762
    .line 763
    invoke-static {v0, v3}, Lcom/google/firebase/auth/FirebaseAuth;->f(Lcom/google/firebase/auth/FirebaseAuth;Lp49;)V

    .line 764
    .line 765
    .line 766
    :cond_24
    if-eqz p3, :cond_25

    .line 767
    .line 768
    iget-object v3, v0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lbx5;

    .line 769
    .line 770
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    iget-object v1, v1, Lp49;->b:Lw1a;

    .line 774
    .line 775
    iget-object v1, v1, Lw1a;->a:Ljava/lang/String;

    .line 776
    .line 777
    const-string v4, "com.google.firebase.auth.GET_TOKEN_RESPONSE."

    .line 778
    .line 779
    invoke-static {v4, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    invoke-virtual {v2}, Lb69;->q()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    invoke-virtual {v3, v1, v2}, Lbx5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    :cond_25
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 791
    .line 792
    if-eqz v1, :cond_2a

    .line 793
    .line 794
    iget-object v2, v0, Lcom/google/firebase/auth/FirebaseAuth;->q:Lvb9;

    .line 795
    .line 796
    if-nez v2, :cond_26

    .line 797
    .line 798
    iget-object v2, v0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 799
    .line 800
    invoke-static {v2}, Lly8;->h(Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    new-instance v3, Lvb9;

    .line 804
    .line 805
    invoke-direct {v3, v2}, Lvb9;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 806
    .line 807
    .line 808
    iput-object v3, v0, Lcom/google/firebase/auth/FirebaseAuth;->q:Lvb9;

    .line 809
    .line 810
    :cond_26
    iget-object v0, v0, Lcom/google/firebase/auth/FirebaseAuth;->q:Lvb9;

    .line 811
    .line 812
    iget-object v1, v1, Lp49;->a:Lb69;

    .line 813
    .line 814
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 815
    .line 816
    .line 817
    if-nez v1, :cond_27

    .line 818
    .line 819
    goto :goto_15

    .line 820
    :cond_27
    iget-object v2, v1, Lb69;->c:Ljava/lang/Long;

    .line 821
    .line 822
    const-wide/16 v3, 0x0

    .line 823
    .line 824
    if-nez v2, :cond_28

    .line 825
    .line 826
    move-wide v5, v3

    .line 827
    goto :goto_14

    .line 828
    :cond_28
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 829
    .line 830
    .line 831
    move-result-wide v5

    .line 832
    :goto_14
    cmp-long v2, v5, v3

    .line 833
    .line 834
    if-gtz v2, :cond_29

    .line 835
    .line 836
    const-wide/16 v5, 0xe10

    .line 837
    .line 838
    :cond_29
    iget-object v1, v1, Lb69;->e:Ljava/lang/Long;

    .line 839
    .line 840
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 841
    .line 842
    .line 843
    move-result-wide v1

    .line 844
    const-wide/16 v3, 0x3e8

    .line 845
    .line 846
    mul-long/2addr v5, v3

    .line 847
    add-long/2addr v5, v1

    .line 848
    iget-object v1, v0, Lvb9;->b:Ly89;

    .line 849
    .line 850
    iput-wide v5, v1, Ly89;->b:J

    .line 851
    .line 852
    const-wide/16 v2, -0x1

    .line 853
    .line 854
    iput-wide v2, v1, Ly89;->c:J

    .line 855
    .line 856
    iget v1, v0, Lvb9;->a:I

    .line 857
    .line 858
    if-lez v1, :cond_2a

    .line 859
    .line 860
    iget-boolean v1, v0, Lvb9;->c:Z

    .line 861
    .line 862
    if-nez v1, :cond_2a

    .line 863
    .line 864
    iget-object v0, v0, Lvb9;->b:Ly89;

    .line 865
    .line 866
    invoke-virtual {v0}, Ly89;->a()V

    .line 867
    .line 868
    .line 869
    :cond_2a
    :goto_15
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lo49;->d(Lcom/google/firebase/FirebaseApp;)Lo49;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lly8;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lo49;->c()Lcom/google/firebase/auth/FirebaseAuth;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    .line 17
    invoke-static {p0}, Lo49;->d(Lcom/google/firebase/FirebaseApp;)Lo49;

    move-result-object p0

    invoke-static {p0}, Lly8;->h(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lo49;->c()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/google/firebase/auth/FirebaseAuth;Lp49;)V
    .locals 4

    .line 1
    const-string v0, "FirebaseAuth"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lp49;->b:Lw1a;

    .line 6
    .line 7
    iget-object v1, v1, Lw1a;->a:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Notifying id token listeners about user ( "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " )."

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v1, "Notifying id token listeners about a sign-out event."

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p1, Lp49;->a:Lb69;

    .line 40
    .line 41
    iget-object p1, p1, Lb69;->b:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    :goto_1
    new-instance v0, Lme4;

    .line 46
    .line 47
    invoke-direct {v0, p1}, Lme4;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->t:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    new-instance v1, Lue2;

    .line 53
    .line 54
    const/4 v2, 0x5

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-direct {v1, p0, v0, v2, v3}, Lue2;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public a(Lob;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->q:Lvb9;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 12
    .line 13
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lvb9;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lvb9;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->q:Lvb9;

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->q:Lvb9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-lez p0, :cond_1

    .line 31
    .line 32
    iget v0, p1, Lvb9;->a:I

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iput p0, p1, Lvb9;->a:I

    .line 37
    .line 38
    iget v0, p1, Lvb9;->a:I

    .line 39
    .line 40
    if-lez v0, :cond_2

    .line 41
    .line 42
    iget-boolean v0, p1, Lvb9;->c:Z

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p1, Lvb9;->b:Ly89;

    .line 47
    .line 48
    invoke-virtual {v0}, Ly89;->a()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-nez p0, :cond_2

    .line 53
    .line 54
    iget v0, p1, Lvb9;->a:I

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p1, Lvb9;->b:Ly89;

    .line 59
    .line 60
    iget-object v1, v0, Ly89;->d:Lag9;

    .line 61
    .line 62
    iget-object v0, v0, Ly89;->e:Lc9;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    iput p0, p1, Lvb9;->a:I

    .line 68
    .line 69
    return-void

    .line 70
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p1

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1
.end method

.method public b(Z)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    .line 6
    .line 7
    const/16 p1, 0x4457

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ly49;->a(Lcom/google/android/gms/common/api/Status;)Lkg3;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object v1, v0, Lp49;->a:Lb69;

    .line 23
    .line 24
    invoke-virtual {v1}, Lb69;->u()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p0, v1, Lb69;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p0}, Lq99;->a(Ljava/lang/String;)Ldx3;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    iget-object p1, v1, Lb69;->a:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v1, Lv1a;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lv1a;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v3, Le49;

    .line 56
    .line 57
    invoke-direct {v3, p1}, Le49;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 61
    .line 62
    invoke-virtual {v3, p0}, Lh59;->d(Lcom/google/firebase/FirebaseApp;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, v3, Lh59;->d:Lp49;

    .line 66
    .line 67
    iput-object v1, v3, Lh59;->e:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object v1, v3, Lh59;->f:Lb99;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public c()Lp49;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Ld80;)Lcom/google/android/gms/tasks/Task;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ld80;->q()Ld80;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lau2;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    check-cast p1, Lau2;

    .line 10
    .line 11
    iget-object v0, p1, Lau2;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v4, p1, Lau2;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v7, p1, Lau2;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v7}, Lly8;->h(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v2, La49;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    move-object v3, p0

    .line 33
    invoke-direct/range {v2 .. v8}, La49;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;ZLp49;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, v3, Lcom/google/firebase/auth/FirebaseAuth;->l:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 37
    .line 38
    invoke-virtual {v2, v3, v8, p0}, Ljd4;->O(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    move-object v3, p0

    .line 44
    invoke-static {v0}, Lly8;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget p0, Lb8;->c:I

    .line 48
    .line 49
    invoke-static {v0}, Lly8;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    :try_start_0
    new-instance v1, Lb8;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lb8;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-object v1, p0

    .line 60
    :goto_0
    if-eqz v1, :cond_1

    .line 61
    .line 62
    iget-object v0, v3, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, v1, Lb8;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 73
    .line 74
    const/16 v0, 0x42b0

    .line 75
    .line 76
    invoke-direct {p1, v0, p0, p0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Ly49;->a(Lcom/google/android/gms/common/api/Status;)Lkg3;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_1
    new-instance v0, Lw39;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-direct {v0, v3, v1, p0, p1}, Lw39;-><init>(Lcom/google/firebase/auth/FirebaseAuth;ZLp49;Lau2;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, v3, Lcom/google/firebase/auth/FirebaseAuth;->k:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 95
    .line 96
    iget-object p1, v3, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v3, p1, p0}, Ljd4;->O(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_2
    move-object v3, p0

    .line 104
    instance-of p0, p1, Lxz5;

    .line 105
    .line 106
    iget-object v0, v3, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v1, v3, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 109
    .line 110
    iget-object v2, v3, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    .line 111
    .line 112
    if-eqz p0, :cond_3

    .line 113
    .line 114
    check-cast p1, Lxz5;

    .line 115
    .line 116
    new-instance p0, Ljf3;

    .line 117
    .line 118
    invoke-direct {p0, v3}, Ljf3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    sget-object v0, Lo59;->a:Lk50;

    .line 125
    .line 126
    invoke-virtual {v0}, Ldg7;->clear()V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lt49;

    .line 130
    .line 131
    invoke-direct {v0, p1}, Lt49;-><init>(Lxz5;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lh59;->d(Lcom/google/firebase/FirebaseApp;)V

    .line 135
    .line 136
    .line 137
    iput-object p0, v0, Lh59;->e:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :cond_3
    new-instance p0, Ljf3;

    .line 145
    .line 146
    invoke-direct {p0, v3}, Ljf3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    new-instance v3, Lr49;

    .line 153
    .line 154
    invoke-direct {v3, p1, v0}, Lr49;-><init>(Ld80;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v1}, Lh59;->d(Lcom/google/firebase/FirebaseApp;)V

    .line 158
    .line 159
    .line 160
    iput-object p0, v3, Lh59;->e:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lbx5;

    .line 2
    .line 3
    invoke-static {v0}, Lly8;->h(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lbx5;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/content/SharedPreferences;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Lp49;->b:Lw1a;

    .line 16
    .line 17
    iget-object v1, v1, Lw1a;->a:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "com.google.firebase.auth.GET_TOKEN_RESPONSE."

    .line 20
    .line 21
    invoke-static {v3, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lp49;

    .line 37
    .line 38
    :cond_0
    const-string v1, "com.google.firebase.auth.FIREBASE_USER"

    .line 39
    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v2}, Lcom/google/firebase/auth/FirebaseAuth;->h(Lcom/google/firebase/auth/FirebaseAuth;Lp49;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v2}, Lcom/google/firebase/auth/FirebaseAuth;->f(Lcom/google/firebase/auth/FirebaseAuth;Lp49;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->q:Lvb9;

    .line 58
    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    iget-object p0, p0, Lvb9;->b:Ly89;

    .line 62
    .line 63
    iget-object v0, p0, Ly89;->d:Lag9;

    .line 64
    .line 65
    iget-object p0, p0, Ly89;->e:Lc9;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method
