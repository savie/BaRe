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

.field private static volatile localSelectionPending:Z

.field private static volatile pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

.field private static volatile pendingUser:Ljava/lang/Object;

.field private static volatile resolutionComplete:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aad(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 610
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
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cancelPendingSelection()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
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

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$600(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
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

.method static synthetic access$700(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 553
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->setCachedLocalUser(Ljava/lang/Object;)V

    .line 554
    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const/4 v1, 0x0

    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 556
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 557
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 558
    sput-boolean p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 559
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V

    .line 560
    return-void

    .line 554
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

    .line 390
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->randomBytes(I)[B

    move-result-object v4

    .line 391
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->randomBytes(I)[B

    move-result-object v5

    .line 392
    const/16 v0, 0xb

    invoke-static {v5, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 393
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;-><init>(Ljava/lang/Object;Ljava/lang/String;[B[BLjava/lang/String;)V

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 394
    sget-object p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 395
    return-void
.end method

.method private static cachedLocalUser()Ljava/lang/Object;
    .locals 6

    .line 729
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.bareapps.barebackup.common.V"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 730
    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 731
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

    .line 732
    :catchall_0
    move-exception v1

    .line 733
    return-object v0
.end method

.method public static canCompleteIntro()Z
    .locals 1

    .line 82
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
    .locals 2

    .line 764
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 765
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 766
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 767
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 768
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 769
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 770
    :goto_0
    return-void
.end method

.method private static candidateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 279
    const-string v0, "local-account-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 281
    :cond_0
    const-string v1, ".vault"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    const-string v1, ".recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
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

    .line 286
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

    .line 287
    :catchall_0
    move-exception p0

    .line 288
    return-object v2

    .line 283
    :cond_3
    return-object v2
.end method

.method public static clearPendingIntro()V
    .locals 2

    .line 98
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 99
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 100
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 101
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 102
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 103
    return-void
.end method

.method private static commitEnrollment(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 456
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object p0

    .line 457
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create vault directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 458
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bare_local_vault_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 462
    invoke-static {v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 463
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makePayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    .line 464
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->dek:[B

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    move-object v2, v0

    move-object v3, v8

    move-object v5, v10

    move-object v6, v9

    invoke-static/range {v1 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;

    move-result-object v1

    .line 466
    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->dek:[B

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    invoke-static {v2, v0, v10, v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelope(Ljava/lang/String;Ljava/lang/String;[B[B[B)Lorg/json/JSONObject;

    move-result-object v2

    .line 469
    const-string v3, "deviceWrappedDek"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-static {v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 469
    invoke-static {v9, v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v3

    .line 471
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 472
    const-string v3, "payloadCiphertext"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "payload"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 471
    invoke-static {v4, v6, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v4

    .line 473
    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    .line 474
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    invoke-direct {v4, v6, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 475
    const-string v6, "recoveryWrappedDek"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v7

    iget-object v9, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v10, "recovery"

    invoke-static {v9, v10}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    .line 474
    invoke-static {v4, v7, v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v4

    .line 476
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v7, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 477
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v9, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    .line 476
    invoke-static {v7, v4, v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    .line 479
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "local-account-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ".vault"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    new-instance v7, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".recovery"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 482
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 481
    invoke-static {v4, p0, v7, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writePairAtomically(Ljava/io/File;[BLjava/io/File;[B)V

    .line 483
    iget-object p0, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p0

    .line 484
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 485
    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    .line 486
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 491
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    invoke-direct {p0, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 492
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v2, v10}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 491
    invoke-static {p0, v0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p0

    .line 493
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 494
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object p0

    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 493
    invoke-static {v0, p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p0

    iget-object v0, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    .line 495
    iget-object p0, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Ljava/lang/Object;)V

    .line 496
    const/4 p0, 0x0

    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 497
    return-void

    .line 487
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 488
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 489
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Post-write vault verification failed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 458
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault directory unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 3

    .line 423
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 424
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 425
    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 426
    const-string v1, "Enter the recovery code"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 427
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    const-string v2, "Confirm recovery code"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 429
    const-string v2, "Enter the code again before the Local Account vault is created."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 430
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;

    invoke-direct {v2, p1, v0, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;-><init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 431
    const-string p0, "Confirm"

    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;

    invoke-direct {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;-><init>()V

    .line 446
    const-string v0, "Cancel Local setup"

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 451
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 452
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 453
    return-void
.end method

.method private static createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 563
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 564
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 565
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 566
    :cond_0
    const-string v3, "AES"

    invoke-static {v3, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 567
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 569
    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 570
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 571
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 572
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 573
    invoke-virtual {v0, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 574
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 575
    invoke-virtual {v1, p0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method private static decode(Ljava/lang/String;)[B
    .locals 1

    .line 620
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

    .line 598
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 599
    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 600
    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    .line 601
    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    const-string p1, "AES/GCM/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 604
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 605
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 606
    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 598
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

    .line 713
    const-string v0, "w14"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 714
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 715
    const-string v2, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 716
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

    .line 624
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

    .line 586
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 587
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 588
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 589
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 590
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 591
    array-length p2, p1

    array-length v0, p0

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 592
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    array-length p1, p1

    array-length v0, p0

    invoke-static {p0, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    return-object p2
.end method

.method public static getPendingUser()Ljava/lang/Object;
    .locals 1

    .line 57
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

    .line 720
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

    .line 69
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

    .line 724
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
    .locals 4

    .line 87
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 88
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 89
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isIntroPending()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 90
    :cond_1
    const-string v1, "d45"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "a"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    return v0
.end method

.method public static isIntroPending()Z
    .locals 3

    .line 62
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

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public static isLocalSessionInactive()Z
    .locals 5

    .line 74
    const-string v0, "local_account_session_active"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
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

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    return v1
.end method

.method private static loadDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 579
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 580
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 581
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 582
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

    .line 527
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 528
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 529
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    const-string p0, "legacyUid"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    const-string p0, "userJson"

    invoke-static {p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->serializeUser(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
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

    .line 516
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 517
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 518
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string p1, "algorithm"

    const-string v1, "AES-256-GCM"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
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

    .line 522
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

    .line 523
    return-object v0
.end method

.method private static makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 502
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 503
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 504
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    const-string p1, "deviceKeyAlias"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string p1, "algorithm"

    const-string v1, "AES-256-GCM"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
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

    .line 509
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

    .line 510
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

    .line 511
    return-object v0
.end method

.method private static matchesLegacyCache(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 547
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 548
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

    .line 698
    const-string v0, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 699
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

    .line 701
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v11, ""

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 703
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

    .line 702
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

    .line 773
    const-string v0, "d45"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 774
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 775
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    return-void
.end method

.method public static onPermissionReturn(Landroid/app/Activity;)V
    .locals 1

    .line 129
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storagePermissionGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 131
    :cond_1
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolve(Landroid/app/Activity;)V

    .line 132
    return-void

    .line 129
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

    .line 536
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 537
    const-string p0, "schemaVersion"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 538
    const-string p0, "localAccountId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 539
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 541
    const-string p1, "userJson"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->deserializeUser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 542
    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    invoke-direct {v0, p1, p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 542
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Identity payload mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 540
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "LocalAccountId mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 537
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

    .line 745
    const-string v0, "cz4"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 746
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 747
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 748
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static randomBytes(I)[B
    .locals 1

    .line 614
    new-array p0, p0, [B

    .line 615
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 616
    return-object p0
.end method

.method private static readBytes(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 628
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 629
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 630
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 632
    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    .line 634
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

    .line 636
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 637
    nop

    .line 638
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 636
    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 637
    throw p0

    .line 628
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Vault file too large"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 294
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

    .line 295
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 296
    const-string p0, "schemaVersion"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    return-object v0

    .line 297
    :cond_1
    const-string p0, "localAccountId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 298
    :cond_2
    const-string p0, "legacyUid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 299
    :cond_3
    const-string p0, "AES-256-GCM"

    const-string p1, "algorithm"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    .line 300
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

    .line 301
    :cond_5
    return-object v1

    .line 300
    :cond_6
    :goto_0
    return-object v0

    .line 294
    :cond_7
    :goto_1
    return-object v0

    .line 302
    :catchall_0
    move-exception p0

    .line 303
    return-object v0
.end method

.method private static recoverFromCode(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v3, "\\s"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    :goto_0
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v10

    .line 359
    array-length v1, v10

    const/16 v3, 0x20

    if-ne v1, v3, :cond_7

    .line 360
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v10, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 361
    const-string v4, "recoveryWrappedDek"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 362
    const-string v5, "recovery"

    invoke-static {p1, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 361
    invoke-static {v1, v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v11

    .line 363
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v11, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 364
    const-string v3, "payloadCiphertext"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "payload"

    invoke-static {p1, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 363
    invoke-static {v1, v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v12

    .line 365
    invoke-static {v12, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v13

    .line 366
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v13, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 367
    iget-object v0, v13, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchesLegacyCache(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    const-string v0, "Local Account identity conflict"

    const-string v1, "The recovery artifact does not match the existing Local Account cache. No data was changed."

    move-object v2, p0

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void

    .line 373
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bare_local_vault_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 375
    iget-object v1, v13, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    move-object v0, p1

    move-object v3, v11

    move-object v4, v12

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;

    move-result-object v0

    .line 377
    iget-object v1, v13, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {p1, v1, v12, v11, v10}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelope(Ljava/lang/String;Ljava/lang/String;[B[B[B)Lorg/json/JSONObject;

    move-result-object v1

    .line 378
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v8, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v9, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 380
    :goto_1
    if-nez v0, :cond_4

    .line 381
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v9, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    goto :goto_2

    .line 382
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v9, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 384
    :cond_4
    :goto_2
    invoke-static {v8, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_5

    iget-object v1, v13, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    iget-object v0, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, v13, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Ljava/lang/Object;)V

    .line 387
    return-void

    .line 385
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Recovered vault verification failed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Legacy UID mismatch"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid recovery code"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static replaceAtomically(Ljava/io/File;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 673
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

    .line 674
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 675
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

    .line 677
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 678
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :cond_2
    nop

    .line 684
    return-void

    .line 679
    :catchall_0
    move-exception p1

    .line 680
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 681
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 682
    :cond_4
    throw p1
.end method

.method private static declared-synchronized resolve(Landroid/app/Activity;)V
    .locals 10

    const-class v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;

    monitor-enter v0

    .line 159
    :try_start_0
    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v1, :cond_18

    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storageReady(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    const-string v1, "Storage unavailable"

    const-string v2, "Grant the existing All Files Access permission and make sure shared storage is mounted. No Local Account was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    monitor-exit v0

    return-void

    .line 167
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_3

    .line 169
    :cond_2
    const-string v1, "Local Account storage error"

    const-string v2, "The Local Account directory is not readable. No new account was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    monitor-exit v0

    return-void

    .line 174
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_4
    new-array v2, v3, [Ljava/io/File;

    .line 175
    :goto_0
    if-nez v2, :cond_5

    .line 176
    const-string v1, "Local Account storage error"

    const-string v2, "The Local Account directory could not be listed. No new account was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    monitor-exit v0

    return-void

    .line 181
    :cond_5
    :try_start_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 182
    nop

    .line 183
    array-length v5, v2

    move v6, v3

    :goto_1
    const/4 v7, 0x1

    if-ge v3, v5, :cond_8

    aget-object v8, v2, v3

    .line 184
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 185
    const-string v9, "local-account-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, ".tmp-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v6, v7

    .line 186
    :cond_6
    invoke-static {v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->candidateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 187
    if-eqz v7, :cond_7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    :cond_8
    if-eqz v6, :cond_9

    .line 190
    const-string v1, "Local Account recovery required"

    const-string v2, "An interrupted Local Account write was found. Resolve the existing vault files before creating another account."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    monitor-exit v0

    return-void

    .line 194
    :cond_9
    :try_start_4
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v7, :cond_a

    .line 195
    const-string v2, "Local Account conflict"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "More than one Local Account vault was found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". No account was selected or overwritten."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {p0, v2, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    monitor-exit v0

    return-void

    .line 201
    :cond_a
    :try_start_5
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v7, :cond_13

    .line 202
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
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

    .line 204
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

    .line 205
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_b

    invoke-static {v3, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_2

    :cond_b
    move-object v1, v5

    .line 206
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v4, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 207
    :cond_c
    if-nez v1, :cond_d

    if-nez v5, :cond_d

    .line 208
    const-string v1, "Local Account vault is damaged"

    const-string v2, "The existing Local Account files are missing or invalid. A new account will not be created automatically."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    monitor-exit v0

    return-void

    .line 213
    :cond_d
    if-eqz v1, :cond_f

    .line 214
    :try_start_6
    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v6

    .line 215
    if-eqz v6, :cond_f

    .line 216
    iget-object v1, v6, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchesLegacyCache(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 217
    const-string v1, "Local Account identity conflict"

    const-string v2, "The vault identity does not match the legacy Local Account cache. No data was changed."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 219
    monitor-exit v0

    return-void

    .line 221
    :cond_e
    :try_start_7
    iget-object v1, v6, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 222
    monitor-exit v0

    return-void

    .line 226
    :cond_f
    if-eqz v5, :cond_10

    move-object v1, v5

    .line 227
    :cond_10
    if-eqz v1, :cond_12

    :try_start_8
    const-string v5, "recoveryWrappedDek"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_3

    .line 232
    :cond_11
    invoke-static {p0, v2, v3, v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 233
    monitor-exit v0

    return-void

    .line 228
    :cond_12
    :goto_3
    :try_start_9
    const-string v1, "Local Account recovery unavailable"

    const-string v2, "The device key is unavailable and no valid recovery artifact exists. The existing account was not replaced."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 230
    monitor-exit v0

    return-void

    .line 236
    :cond_13
    :try_start_a
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_4

    :cond_14
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 238
    :goto_4
    if-nez v1, :cond_15

    .line 239
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->newLocalUser()Ljava/lang/Object;

    move-result-object v1

    .line 240
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 242
    :cond_15
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 243
    const-string v1, "Local Account identity error"

    const-string v2, "The selected identity is not a Local Account. No vault was written."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 245
    monitor-exit v0

    return-void

    .line 247
    :cond_16
    :try_start_b
    sget-object v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    if-nez v2, :cond_17

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->beginEnrollment(Landroid/app/Activity;Ljava/lang/Object;)V

    goto :goto_5

    .line 248
    :cond_17
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 252
    :goto_5
    goto :goto_6

    .line 249
    :catchall_0
    move-exception v1

    .line 250
    :try_start_c
    const-string v1, "Local Account storage error"

    const-string v2, "The Local Account vault could not be inspected safely. No new identity was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 253
    :goto_6
    monitor-exit v0

    return-void

    .line 159
    :cond_18
    :goto_7
    monitor-exit v0

    return-void

    .line 158
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;
    .locals 6

    .line 309
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "deviceKeyAlias"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->loadDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 311
    if-nez v2, :cond_0

    return-object v0

    .line 312
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

    .line 313
    invoke-static {p1, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 312
    invoke-static {v2, v3, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 314
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 315
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "payload"

    invoke-static {p1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 314
    invoke-static {v2, v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 316
    invoke-static {v1, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p1

    .line 317
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

    .line 318
    :cond_1
    return-object p1

    .line 319
    :catchall_0
    move-exception p0

    .line 320
    return-object v0
.end method

.method private static rootDirectory()Ljava/io/File;
    .locals 2

    .line 275
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/B\u039bR\u2630/accounts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static selectLocal(Landroid/app/Activity;)V
    .locals 4

    .line 106
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->onPermissionReturn(Landroid/app/Activity;)V

    .line 108
    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 112
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

    .line 119
    nop

    .line 120
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 121
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 122
    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    const-string v0, "Local Account setup unavailable"

    const-string v1, "The pending Intro state could not be saved. No Local Account was activated."

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    return-void

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 115
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 116
    const-string v0, "Local Account unavailable"

    const-string v1, "The Local Account identity could not be prepared. No account was created."

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private static serializeUser(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 707
    const-string v0, "w14"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 708
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 709
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

    .line 738
    const-string v0, "com.bareapps.barebackup.common.V"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 739
    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 740
    const-string v2, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 741
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

    .line 742
    return-void
.end method

.method private static showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 783
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 785
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 786
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 787
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel Local setup"

    new-instance v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$7;

    invoke-direct {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$7;-><init>()V

    .line 788
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 793
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 794
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    goto :goto_0

    .line 795
    :catchall_0
    move-exception p1

    .line 796
    invoke-static {p0, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 798
    :goto_0
    return-void

    .line 783
    :cond_1
    :goto_1
    return-void
.end method

.method private static showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 3

    .line 398
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 400
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 402
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 403
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 404
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    const-string v2, "Save your Local Account recovery code"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 406
    const-string v2, "This code is shown only during setup. Long-press the code to copy it and keep it somewhere safe. It is not your backup Password Strategy password."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 407
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;

    invoke-direct {v1, p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;-><init>(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 408
    const-string p0, "I saved it"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;

    invoke-direct {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;-><init>()V

    .line 413
    const-string v0, "Cancel Local setup"

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 418
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 420
    return-void

    .line 398
    :cond_1
    :goto_0
    return-void
.end method

.method private static showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 9

    .line 327
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 329
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 330
    const v0, 0x80001

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 331
    const-string v0, "Recovery code"

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    const-string v1, "Recover Local Account"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 334
    const-string v1, "The device key is unavailable. Enter the recovery code saved during Local Account setup."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v8, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Landroid/widget/EditText;)V

    .line 336
    const-string p0, "Recover"

    invoke-virtual {v0, p0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$1;

    invoke-direct {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$1;-><init>()V

    .line 346
    const-string p2, "Cancel Local setup"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 351
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 352
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 353
    return-void

    .line 327
    :cond_1
    :goto_0
    return-void
.end method

.method public static signOut(Landroid/app/Activity;)V
    .locals 2

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "Could not sign out safely"

    const-string v1, "The Local Account session marker could not be saved. The application was not closed so the account is not silently reactivated."

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 141
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 142
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 143
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 145
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    .line 148
    :goto_0
    if-eqz p0, :cond_1

    .line 149
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 150
    :goto_1
    nop

    .line 151
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 154
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 155
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 156
    return-void
.end method

.method private static storagePermissionGranted(Landroid/app/Activity;)Z
    .locals 2

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    return p0

    .line 267
    :cond_0
    nop

    .line 268
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 269
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 268
    :goto_0
    return p0
.end method

.method private static storageReady(Landroid/app/Activity;)Z
    .locals 3

    .line 256
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storagePermissionGranted(Landroid/app/Activity;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 257
    :cond_0
    const-string p0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 258
    :cond_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object p0

    .line 259
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

    .line 260
    :cond_3
    nop

    .line 261
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 262
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

    .line 779
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

    .line 780
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

    .line 662
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 663
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

    .line 665
    :try_start_0
    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 666
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 668
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 670
    :cond_0
    return-void

    .line 666
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Atomic rename failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 669
    :cond_2
    throw p0

    .line 662
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Target already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeMarkers(ZZ)Z
    .locals 2

    .line 753
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 754
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "local_account_session_active"

    .line 755
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "local_signout_pending_intro"

    .line 756
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 757
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    return p0

    .line 758
    :catchall_0
    move-exception p0

    .line 759
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

    .line 643
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 644
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

    .line 645
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

    .line 646
    nop

    .line 648
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 649
    invoke-static {v1, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 650
    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 651
    nop

    .line 652
    const/4 v2, 0x1

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 658
    nop

    .line 659
    return-void

    .line 652
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 650
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recovery artifact commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :catchall_0
    move-exception p0

    .line 654
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 655
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 656
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 657
    :cond_2
    throw p0

    .line 643
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault target already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeTemp(Ljava/io/File;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 687
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 689
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 690
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 691
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 694
    nop

    .line 695
    return-void

    .line 693
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 694
    throw p0
.end method
