.class public final Lcom/bareapps/barebackup/localaccount/LocalAccountVault;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;,
        Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;
    }
.end annotation


# static fields
.field private static final B64_FLAGS:I = 0xb

.field private static final MAX_FILE_BYTES:I = 0x100000

.field private static final PREFIX:Ljava/lang/String; = "local-account-"

.field private static final PREF_ACTIVE:Ljava/lang/String; = "local_account_session_active"

.field private static final PREF_INTRO:Ljava/lang/String; = "local_signout_pending_intro"

.field private static final VERSION:I = 0x1

.field private static volatile dialogActivity:Landroid/app/Activity;

.field private static volatile dialogOpen:Z

.field private static volatile localSelectionPending:Z

.field private static volatile pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

.field private static volatile pendingUser:Ljava/lang/Object;

.field private static volatile resolutionComplete:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aad(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BARE-LOCAL-VAULT|1|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000()V
    .locals 0

    .line 41
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 41
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cancelPendingSelection()V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-static/range {p0 .. p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoverFromCode(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$600(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->commitEnrollment(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static activate(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 623
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->setCachedLocalUser(Ljava/lang/Object;)V

    .line 624
    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    const/4 v1, 0x0

    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 626
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 627
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 628
    sput-boolean p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 629
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V

    .line 630
    return-void

    .line 624
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Session marker commit failed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static beginEnrollment(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 428
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->randomBytes(I)[B

    move-result-object v4

    .line 429
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->randomBytes(I)[B

    move-result-object v5

    .line 430
    const/16 v0, 0xb

    invoke-static {v5, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 431
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;-><init>(Ljava/lang/Object;Ljava/lang/String;[B[BLjava/lang/String;)V

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 432
    sget-object p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 433
    return-void
.end method

.method private static cachedLocalUser()Ljava/lang/Object;
    .locals 6

    .line 799
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.bareapps.barebackup.common.V"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 800
    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 801
    const-string v3, "getNon"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 802
    :catchall_0
    move-exception v1

    .line 803
    return-object v0
.end method

.method public static canCompleteIntro()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static cancelPendingSelection()V
    .locals 1

    .line 848
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeSignOutMarkers()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 849
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 850
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 851
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 852
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 853
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 854
    :goto_0
    return-void
.end method

.method private static candidateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 308
    const-string v0, "local-account-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 310
    :cond_0
    const-string v1, ".vault"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 311
    :cond_1
    const-string v1, ".recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 315
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    move-object v2, p0

    :cond_2
    return-object v2

    .line 316
    :catchall_0
    move-exception p0

    .line 317
    return-object v2

    .line 312
    :cond_3
    return-object v2
.end method

.method private static clearDialogGate()V
    .locals 1

    .line 863
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 864
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 865
    return-void
.end method

.method public static clearPendingIntro(Landroid/app/Activity;)Z
    .locals 3

    .line 100
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const-string v1, "Could not switch account"

    const-string v2, "The account-selection state could not be saved. Google sign-in was not started."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return v0

    .line 105
    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 106
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 107
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 108
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 109
    const/4 p0, 0x1

    return p0
.end method

.method private static declared-synchronized commitEnrollment(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;

    monitor-enter v0

    .line 502
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create vault directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 504
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bare_local_vault_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 508
    invoke-static {v10}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 509
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makePayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v12

    .line 510
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->dek:[B

    iget-object v9, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    move-object v4, v2

    move-object v5, v10

    move-object v7, v12

    move-object v8, v11

    invoke-static/range {v3 .. v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;

    move-result-object v3

    .line 512
    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v5, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->dek:[B

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    invoke-static {v4, v2, v12, v5, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelope(Ljava/lang/String;Ljava/lang/String;[B[B[B)Lorg/json/JSONObject;

    move-result-object v4

    .line 515
    const-string v5, "deviceWrappedDek"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 516
    invoke-static {v6, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 515
    invoke-static {v11, v5, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 517
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v5, "payloadCiphertext"

    .line 518
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "payload"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 517
    invoke-static {v6, v5, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 519
    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    .line 520
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v6, "recoveryWrappedDek"

    .line 521
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "recovery"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 520
    invoke-static {v5, v6, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 522
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v5, "payloadCiphertext"

    .line 523
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "payload"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 522
    invoke-static {v6, v5, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    .line 525
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local-account-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".vault"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 526
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "local-account-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".recovery"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 527
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 528
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 527
    invoke-static {v5, v1, v6, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writePairAtomically(Ljava/io/File;[BLjava/io/File;[B)V

    .line 529
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v1

    .line 530
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 531
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    .line 532
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    const-string v4, "AES"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "recoveryWrappedDek"

    .line 538
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v5, "recovery"

    invoke-static {v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 537
    invoke-static {v1, v2, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 539
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v2, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 540
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v4, "payload"

    invoke-static {v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 539
    invoke-static {v2, v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    .line 541
    iget-object p1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Ljava/lang/Object;)V

    .line 542
    const/4 p1, 0x0

    sput-object p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 543
    const-string p1, "Local Account vault saved to /storage/emulated/0/B\u039bR\u2630/accounts"

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit v0

    return-void

    .line 533
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 534
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 535
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Post-write vault verification failed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 504
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault directory unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 4

    .line 465
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 466
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 467
    const v2, 0x80091

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 468
    const-string v2, "Enter the recovery code"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 469
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    const-string v3, "Confirm recovery code"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 471
    const-string v3, "Enter the code again before the Local Account vault is created."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 472
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;

    invoke-direct {v3, p1, v0, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;-><init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 473
    const-string p1, "Confirm"

    invoke-virtual {v2, p1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;

    invoke-direct {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;-><init>()V

    .line 489
    const-string v2, "Cancel Local setup"

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 496
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 497
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 498
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 499
    return-void
.end method

.method private static createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 633
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 634
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 635
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 636
    :cond_0
    const-string v3, "AES"

    invoke-static {v3, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 637
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 639
    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 640
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 641
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 642
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 643
    invoke-virtual {v0, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 644
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 645
    invoke-virtual {v1, p0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method private static decode(Ljava/lang/String;)[B
    .locals 1

    .line 690
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static decrypt(Ljavax/crypto/SecretKey;[B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 668
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 669
    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 670
    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    .line 671
    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    const-string p1, "AES/GCM/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 674
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 675
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 676
    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 668
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid AES-GCM envelope"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static deserializeUser(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 783
    const-string v0, "w14"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 784
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 785
    const-string v2, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 786
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object v2, v4, v8

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 1

    .line 694
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encrypt(Ljavax/crypto/SecretKey;[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 656
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 657
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 658
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 659
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 660
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 661
    array-length p2, p1

    array-length v0, p0

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 662
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 663
    array-length p1, p1

    array-length v0, p0

    invoke-static {p0, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    return-object p2
.end method

.method public static getPendingUser()Ljava/lang/Object;
    .locals 1

    .line 59
    sget-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    return-object v0
.end method

.method private static getUid(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getUid"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static hasPendingSelection()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    return v0
.end method

.method private static isAnonymous(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isAnonymous"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isCurrentUserLocal()Z
    .locals 5

    .line 89
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 90
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 91
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isIntroPending()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 92
    :cond_1
    const-string v1, "d45"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "a"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 94
    :catchall_0
    move-exception v1

    .line 95
    return v0
.end method

.method private static isDirectChild(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 299
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 301
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 302
    :catchall_0
    move-exception p0

    .line 303
    const/4 p0, 0x0

    return p0
.end method

.method public static isIntroPending()Z
    .locals 3

    .line 64
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "local_signout_pending_intro"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public static isLocalSessionInactive()Z
    .locals 5

    .line 76
    const-string v0, "local_account_session_active"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 77
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    return v1
.end method

.method private static loadDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 649
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 650
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 651
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 652
    :cond_0
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method private static makePayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 597
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 598
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 599
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    const-string p0, "legacyUid"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    const-string p0, "userJson"

    invoke-static {p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->serializeUser(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static makeRecoveryEnvelope(Ljava/lang/String;Ljava/lang/String;[B[B[B)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 586
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 587
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 588
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    const-string p1, "algorithm"

    const-string v1, "AES-256-GCM"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p1, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "payload"

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->encrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "payloadCiphertext"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p1, p4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p2, "recovery"

    invoke-static {p0, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1, p3, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->encrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->encode([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "recoveryWrappedDek"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    return-object v0
.end method

.method private static makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 574
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 575
    const-string v1, "schemaVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    const-string v1, "localAccountId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    const-string v1, "legacyUid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v1, "algorithm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    const-string v1, "payloadCiphertext"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    const-string v1, "recoveryWrappedDek"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    return-object v0
.end method

.method private static makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 550
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 551
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string p1, "deviceKeyAlias"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string p1, "algorithm"

    const-string v1, "AES-256-GCM"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p1, p3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "payload"

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p1, p4, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->encrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p4, "payloadCiphertext"

    invoke-virtual {v0, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "device:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p5, p3, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->encrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "deviceWrappedDek"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p1, p6, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p2, "recovery"

    invoke-static {p0, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1, p3, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->encrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->encode([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "recoveryWrappedDek"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    return-object v0
.end method

.method private static matchesLegacyCache(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 617
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 618
    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static newLocalUser()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 768
    const-string v0, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 769
    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v2, v7

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-class v9, Ljava/util/List;

    const/4 v10, 0x5

    aput-object v9, v2, v10

    const/4 v9, 0x6

    aput-object v3, v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 771
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v11, ""

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 772
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 773
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "anonymous@barebackup.app"

    aput-object v2, v1, v5

    aput-object v3, v1, v7

    const-string v2, "Anonymous user"

    aput-object v2, v1, v6

    const/4 v2, 0x0

    aput-object v2, v1, v8

    aput-object v11, v1, v10

    const-string v2, "anonymous"

    aput-object v2, v1, v9

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static notifyAccountObservers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 857
    const-string v0, "d45"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 858
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 859
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    return-void
.end method

.method public static onPermissionReturn(Landroid/app/Activity;)V
    .locals 1

    .line 136
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storagePermissionGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 138
    :cond_1
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolve(Landroid/app/Activity;)V

    .line 139
    return-void

    .line 136
    :cond_2
    :goto_0
    return-void
.end method

.method private static parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 606
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 607
    const-string p0, "schemaVersion"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 608
    const-string p0, "localAccountId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 609
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 611
    const-string p1, "userJson"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->deserializeUser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 612
    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    invoke-direct {v0, p1, p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 612
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Identity payload mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 610
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "LocalAccountId mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 607
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Unsupported vault version"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 815
    const-string v0, "cz4"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 816
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 817
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 818
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static randomBytes(I)[B
    .locals 1

    .line 684
    new-array p0, p0, [B

    .line 685
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 686
    return-object p0
.end method

.method private static readBytes(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 698
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 699
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 700
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 702
    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    .line 704
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 707
    nop

    .line 708
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 706
    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 707
    throw p0

    .line 698
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Vault file too large"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 323
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 325
    const-string p0, "schemaVersion"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    return-object v0

    .line 326
    :cond_1
    const-string p0, "localAccountId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 327
    :cond_2
    const-string p0, "legacyUid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 328
    :cond_3
    const-string p0, "AES-256-GCM"

    const-string p1, "algorithm"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    .line 329
    :cond_4
    const-string p0, "payloadCiphertext"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "recoveryWrappedDek"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_5

    goto :goto_0

    .line 330
    :cond_5
    return-object v1

    .line 329
    :cond_6
    :goto_0
    return-object v0

    .line 323
    :cond_7
    :goto_1
    return-object v0

    .line 331
    :catchall_0
    move-exception p0

    .line 332
    return-object v0
.end method

.method private static declared-synchronized recoverFromCode(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const-class v11, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;

    monitor-enter v11

    .line 390
    if-nez v2, :cond_0

    :try_start_0
    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v3, "\\s"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    :goto_0
    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v12

    .line 392
    array-length v2, v12

    const/16 v3, 0x20

    if-ne v2, v3, :cond_7

    .line 393
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v12, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 394
    const-string v3, "recoveryWrappedDek"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "recovery"

    .line 395
    invoke-static {v8, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 394
    invoke-static {v2, v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v13

    .line 396
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v13, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "payloadCiphertext"

    .line 397
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "payload"

    invoke-static {v8, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 396
    invoke-static {v2, v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v14

    .line 398
    invoke-static {v14, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v15

    .line 399
    const-string v2, "legacyUid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 400
    iget-object v1, v15, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchesLegacyCache(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    const-string v1, "Local Account identity conflict"

    const-string v2, "The recovery artifact does not match the existing Local Account cache. No data was changed."

    invoke-static {v0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit v11

    return-void

    .line 406
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bare_local_vault_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 408
    iget-object v2, v15, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    move-object/from16 v1, p1

    move-object v4, v13

    move-object v5, v14

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;

    move-result-object v1

    .line 410
    iget-object v2, v15, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {v8, v2, v14, v13, v12}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelope(Ljava/lang/String;Ljava/lang/String;[B[B[B)Lorg/json/JSONObject;

    move-result-object v2

    .line 411
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v9, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    .line 412
    invoke-static {v9, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 413
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v10, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 414
    :goto_1
    iget-object v4, v15, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 415
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v10, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    goto :goto_2

    .line 416
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v10, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 418
    :cond_4
    :goto_2
    invoke-static {v9, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_5

    iget-object v2, v15, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    iget-object v1, v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 420
    invoke-static {v10, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v9, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v15, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 423
    iget-object v1, v15, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Ljava/lang/Object;)V

    .line 424
    const-string v1, "Local Account restored. Vault location: /storage/emulated/0/B\u039bR\u2630/accounts"

    invoke-static {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    monitor-exit v11

    return-void

    .line 421
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Recovered vault verification failed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Legacy UID mismatch"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid recovery code"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method private static recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 5

    .line 562
    const-string v0, "recoveryWrappedDek"

    const-string v1, "payloadCiphertext"

    const-string v2, "localAccountId"

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 564
    :cond_0
    :try_start_0
    const-string v4, "legacyUid"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 565
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 566
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 567
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 564
    :goto_0
    return v3

    .line 568
    :catchall_0
    move-exception p0

    .line 569
    return v3

    .line 562
    :cond_2
    :goto_1
    return v3
.end method

.method private static replaceAtomically(Ljava/io/File;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 743
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bak-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 745
    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot preserve previous vault"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 747
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 748
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    :cond_2
    nop

    .line 754
    return-void

    .line 749
    :catchall_0
    move-exception p1

    .line 750
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 751
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 752
    :cond_4
    throw p1
.end method

.method private static declared-synchronized resolve(Landroid/app/Activity;)V
    .locals 10

    const-class v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    if-eq v1, p0, :cond_1

    .line 163
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    .line 165
    :cond_1
    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v1, :cond_1f

    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    if-nez v1, :cond_1f

    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    if-eqz v1, :cond_2

    goto/16 :goto_9

    .line 166
    :cond_2
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storageReady(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 167
    const-string v1, "Storage unavailable"

    const-string v2, "Grant the existing All Files Access permission and make sure shared storage is mounted. No Local Account was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    monitor-exit v0

    return-void

    .line 173
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_5

    .line 175
    :cond_4
    const-string v1, "Local Account storage error"

    const-string v2, "The Local Account directory is not readable. No new account was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit v0

    return-void

    .line 180
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_6
    new-array v2, v3, [Ljava/io/File;

    .line 181
    :goto_0
    if-nez v2, :cond_7

    .line 182
    const-string v1, "Local Account storage error"

    const-string v2, "The Local Account directory could not be listed. No new account was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    monitor-exit v0

    return-void

    .line 187
    :cond_7
    :try_start_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 188
    nop

    .line 189
    array-length v5, v2

    move v6, v3

    :goto_1
    const/4 v7, 0x1

    if-ge v3, v5, :cond_a

    aget-object v8, v2, v3

    .line 190
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 191
    const-string v9, "local-account-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, ".tmp-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v6, v7

    .line 192
    :cond_8
    invoke-static {v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->candidateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    if-eqz v7, :cond_9

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    :cond_a
    if-eqz v6, :cond_b

    .line 196
    const-string v1, "Local Account recovery required"

    const-string v2, "An interrupted Local Account write was found. Resolve the existing vault files before creating another account."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    monitor-exit v0

    return-void

    .line 200
    :cond_b
    :try_start_4
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v7, :cond_c

    .line 201
    const-string v2, "Local Account conflict"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "More than one Local Account vault was found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". No account was selected or overwritten."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {p0, v2, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    monitor-exit v0

    return-void

    .line 207
    :cond_c
    :try_start_5
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v7, :cond_1a

    .line 208
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local-account-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vault"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local-account-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".recovery"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    invoke-static {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isDirectChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v1, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isDirectChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 212
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 213
    :cond_d
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_5

    .line 218
    :cond_e
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_f

    invoke-static {v3, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_2

    :cond_f
    move-object v1, v5

    .line 219
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {v4, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 220
    :cond_10
    if-nez v1, :cond_11

    if-nez v5, :cond_11

    .line 221
    const-string v1, "Local Account vault is damaged"

    const-string v2, "The existing Local Account files are missing or invalid. A new account will not be created automatically."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    monitor-exit v0

    return-void

    .line 226
    :cond_11
    if-eqz v1, :cond_15

    .line 227
    :try_start_6
    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v6

    .line 228
    if-eqz v6, :cond_15

    .line 229
    iget-object v2, v6, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchesLegacyCache(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 230
    const-string v1, "Local Account identity conflict"

    const-string v2, "The vault identity does not match the legacy Local Account cache. No data was changed."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 232
    monitor-exit v0

    return-void

    .line 234
    :cond_12
    :try_start_7
    iget-object v2, v6, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {v5, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 235
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 237
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    goto :goto_3

    .line 238
    :cond_13
    invoke-static {v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 240
    :cond_14
    :goto_3
    iget-object v1, v6, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 241
    monitor-exit v0

    return-void

    .line 245
    :cond_15
    if-eqz v5, :cond_16

    move-object v1, v5

    .line 246
    :cond_16
    if-eqz v1, :cond_18

    :try_start_8
    const-string v5, "recoveryWrappedDek"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_4

    .line 251
    :cond_17
    invoke-static {p0, v2, v3, v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 252
    monitor-exit v0

    return-void

    .line 247
    :cond_18
    :goto_4
    :try_start_9
    const-string v1, "Local Account recovery unavailable"

    const-string v2, "The device key is unavailable and no valid recovery artifact exists. The existing account was not replaced."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 249
    monitor-exit v0

    return-void

    .line 214
    :cond_19
    :goto_5
    :try_start_a
    const-string v1, "Local Account storage conflict"

    const-string v2, "A vault path is not a regular file inside the Local Account directory. No data was changed."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 216
    monitor-exit v0

    return-void

    .line 255
    :cond_1a
    :try_start_b
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_1b

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_6

    :cond_1b
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 257
    :goto_6
    if-nez v1, :cond_1c

    .line 258
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->newLocalUser()Ljava/lang/Object;

    move-result-object v1

    .line 259
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 261
    :cond_1c
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 262
    const-string v1, "Local Account identity error"

    const-string v2, "The selected identity is not a Local Account. No vault was written."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 264
    monitor-exit v0

    return-void

    .line 266
    :cond_1d
    :try_start_c
    sget-object v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    if-nez v2, :cond_1e

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->beginEnrollment(Landroid/app/Activity;Ljava/lang/Object;)V

    goto :goto_7

    .line 267
    :cond_1e
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 271
    :goto_7
    goto :goto_8

    .line 268
    :catchall_0
    move-exception v1

    .line 269
    :try_start_d
    const-string v1, "Local Account storage error"

    const-string v2, "The Local Account vault could not be inspected safely. No new identity was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 272
    :goto_8
    monitor-exit v0

    return-void

    .line 165
    :cond_1f
    :goto_9
    monitor-exit v0

    return-void

    .line 161
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;
    .locals 6

    .line 338
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "deviceKeyAlias"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->loadDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 340
    if-nez v2, :cond_0

    return-object v0

    .line 341
    :cond_0
    const-string v3, "deviceWrappedDek"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {p1, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 341
    invoke-static {v2, v3, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 343
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 344
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "payload"

    invoke-static {p1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 343
    invoke-static {v2, v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 345
    invoke-static {v1, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p1

    .line 346
    const-string v1, "legacyUid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    return-object v0

    .line 347
    :cond_1
    return-object p1

    .line 348
    :catchall_0
    move-exception p0

    .line 349
    return-object v0
.end method

.method private static rootDirectory()Ljava/io/File;
    .locals 2

    .line 294
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/B\u039bR\u2630/accounts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static selectLocal(Landroid/app/Activity;)V
    .locals 4

    .line 113
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->onPermissionReturn(Landroid/app/Activity;)V

    .line 115
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->newLocalUser()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    nop

    .line 127
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 128
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 129
    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    const-string v0, "Local Account setup unavailable"

    const-string v1, "The pending Intro state could not be saved. No Local Account was activated."

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_2
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 122
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 123
    const-string v0, "Local Account unavailable"

    const-string v1, "The Local Account identity could not be prepared. No account was created."

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private static serializeUser(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 777
    const-string v0, "w14"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 778
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    const-string v5, "i"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static setCachedLocalUser(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 808
    const-string v0, "com.bareapps.barebackup.common.V"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 809
    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 810
    const-string v2, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 811
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "setNon"

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    return-void
.end method

.method private static showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 872
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 874
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 875
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 876
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel Local setup"

    new-instance v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$7;

    invoke-direct {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$7;-><init>()V

    .line 877
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 883
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 884
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 885
    const/4 p1, 0x1

    sput-boolean p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 886
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    goto :goto_0

    .line 887
    :catchall_0
    move-exception p1

    .line 888
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    .line 889
    invoke-static {p0, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 891
    :goto_0
    return-void

    .line 872
    :cond_1
    :goto_1
    return-void
.end method

.method private static showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 5

    .line 436
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 438
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 440
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 441
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 442
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    const-string v3, "Save your Local Account recovery code"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This code is shown only during setup. Long-press the code to copy it and keep it somewhere safe. The recovery artifact will be saved as local-account-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".recovery under /storage/emulated/0/B\u039bR\u2630/accounts. It is not your backup Password Strategy password."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 445
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;

    invoke-direct {v2, p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;-><init>(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 446
    const-string p1, "I saved it"

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;

    invoke-direct {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;-><init>()V

    .line 452
    const-string v2, "Cancel Local setup"

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 459
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 460
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 461
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 462
    return-void

    .line 436
    :cond_1
    :goto_0
    return-void
.end method

.method private static showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 10

    .line 356
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 358
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 359
    const v1, 0x80091

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 360
    const-string v1, "Recovery code"

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 361
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    const-string v2, "Recover Local Account"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 363
    const-string v2, "The device key is unavailable. Enter the recovery code saved during Local Account setup."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 364
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Landroid/widget/EditText;)V

    .line 365
    const-string p1, "Recover"

    invoke-virtual {v8, p1, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$1;

    invoke-direct {p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$1;-><init>()V

    .line 376
    const-string p3, "Cancel Local setup"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 382
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 383
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 384
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 385
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 386
    return-void

    .line 356
    :cond_1
    :goto_0
    return-void
.end method

.method public static signOut(Landroid/app/Activity;)V
    .locals 2

    .line 142
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeSignOutMarkers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "Could not sign out safely"

    const-string v1, "The Local Account session marker could not be saved. The application was not closed so the account is not silently reactivated."

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 148
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 150
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 151
    if-eqz p0, :cond_1

    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 153
    :goto_0
    nop

    .line 154
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 157
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 158
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 159
    return-void
.end method

.method private static storagePermissionGranted(Landroid/app/Activity;)Z
    .locals 2

    .line 285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    return p0

    .line 286
    :cond_0
    nop

    .line 287
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 288
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 287
    :goto_0
    return p0
.end method

.method private static storageReady(Landroid/app/Activity;)Z
    .locals 3

    .line 275
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storagePermissionGranted(Landroid/app/Activity;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 276
    :cond_0
    const-string p0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 277
    :cond_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object p0

    .line 278
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 279
    :cond_3
    nop

    .line 280
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 281
    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v2

    :cond_5
    return v0
.end method

.method private static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 868
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 869
    :goto_0
    return-void
.end method

.method private static writeAtomically(Ljava/io/File;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 732
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 733
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 735
    :try_start_0
    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 736
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 738
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 740
    :cond_0
    return-void

    .line 736
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Atomic rename failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 739
    :cond_2
    throw p0

    .line 732
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Target already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeMarkers(ZZ)Z
    .locals 2

    .line 837
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 838
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "local_account_session_active"

    .line 839
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "local_signout_pending_intro"

    .line 840
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 841
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    return p0

    .line 842
    :catchall_0
    move-exception p0

    .line 843
    const/4 p0, 0x0

    return p0
.end method

.method private static writePairAtomically(Ljava/io/File;[BLjava/io/File;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 713
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 714
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 715
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 716
    nop

    .line 718
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 719
    invoke-static {v1, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 720
    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 721
    nop

    .line 722
    const/4 v2, 0x1

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 728
    nop

    .line 729
    return-void

    .line 722
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 720
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recovery artifact commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    :catchall_0
    move-exception p0

    .line 724
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 725
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 726
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 727
    :cond_2
    throw p0

    .line 713
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault target already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeSignOutMarkers()Z
    .locals 4

    .line 823
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 824
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "local_account_session_active"

    .line 825
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "local_signout_pending_intro"

    .line 826
    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "KEY_FIRST_START"

    .line 827
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED"

    .line 828
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 829
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    return v0

    .line 830
    :catchall_0
    move-exception v1

    .line 831
    return v0
.end method

.method private static writeTemp(Ljava/io/File;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 757
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 759
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 760
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 761
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 764
    nop

    .line 765
    return-void

    .line 763
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 764
    throw p0
.end method
