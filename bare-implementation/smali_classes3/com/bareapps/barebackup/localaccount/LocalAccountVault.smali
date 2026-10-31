.class public final Lcom/bareapps/barebackup/localaccount/LocalAccountVault;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;,
        Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;,
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

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aad(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 844
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

.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(ZZ)Z
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1102(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;
    .locals 0

    .line 55
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    return-object p0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    .line 55
    sput-boolean p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    return p0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0

    .line 55
    sput-boolean p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    return p0
.end method

.method static synthetic access$1500(Landroid/app/Activity;)V
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolve(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 55
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreArchivedArtifacts(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1700()V
    .locals 0

    .line 55
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cancelPendingSelection()V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static/range {p0 .. p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoverFromCode(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->normalizeRecoveryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->commitEnrollment(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$2200()V
    .locals 0

    .line 55
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-static/range {p0 .. p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->newLocalUser()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->archiveExistingArtifacts(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->setCachedLocalUser(Ljava/lang/Object;)V

    return-void
.end method

.method private static actionParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1192
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1193
    return-object v0
.end method

.method private static activate(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 770
    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->setCachedLocalUser(Ljava/lang/Object;)V

    .line 771
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    const/4 v1, 0x0

    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 773
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 774
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 775
    sput-boolean p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 776
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 782
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 784
    :try_start_1
    const-string p1, "com.bareapps.barebackup.home.HomeActivity"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 785
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 786
    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 787
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 788
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 792
    goto :goto_1

    .line 789
    :catchall_1
    move-exception p1

    .line 790
    const-string v0, "LocalAccountVault"

    const-string v1, "Home navigation failed after local activation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    const-string p1, "Local Account is active, but Home could not be opened. Please reopen the app."

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 794
    :cond_0
    :goto_1
    return-void

    .line 771
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Session marker commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static archiveExistingArtifacts(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 499
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v0

    .line 500
    new-instance v1, Ljava/io/File;

    const-string v2, "recovery-archive"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create recovery archive directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 504
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 507
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 509
    nop

    .line 510
    nop

    .line 512
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 513
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    move v1, v2

    goto :goto_1

    .line 514
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot archive existing vault"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 512
    :cond_3
    move v1, p0

    .line 518
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 519
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 522
    move p0, v2

    goto :goto_2

    .line 520
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot archive existing recovery artifact"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_5
    :goto_2
    if-nez v1, :cond_7

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No existing account artifacts to archive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    :cond_7
    :goto_3
    return-object v0

    .line 526
    :catchall_0
    move-exception v2

    move v5, v1

    move v1, p0

    move p0, v5

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v1

    move v1, p0

    .line 527
    :goto_4
    if-eqz p0, :cond_8

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 528
    :cond_8
    if-eqz v1, :cond_9

    new-instance p0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 529
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 530
    throw v2

    .line 508
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create account archive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 505
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recovery archive directory is unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static beginEnrollment(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 586
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->randomBytes(I)[B

    move-result-object v4

    .line 587
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->randomBytes(I)[B

    move-result-object v5

    .line 588
    const/16 v0, 0xb

    invoke-static {v5, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 589
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;-><init>(Ljava/lang/Object;Ljava/lang/String;[B[BLjava/lang/String;)V

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 590
    sget-object p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 591
    return-void
.end method

.method private static cachedLocalUser()Ljava/lang/Object;
    .locals 6

    .line 972
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.bareapps.barebackup.common.V"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 973
    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 974
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

    .line 975
    :catchall_0
    move-exception v1

    .line 976
    return-object v0
.end method

.method public static canCompleteIntro()Z
    .locals 1

    .line 98
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

    .line 1021
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeSignOutMarkers()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1022
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 1023
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 1024
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 1025
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 1026
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1027
    :goto_0
    return-void
.end method

.method private static candidateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 370
    const-string v0, "local-account-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 372
    :cond_0
    const-string v1, ".vault"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    const-string v1, ".recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 375
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

    .line 377
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

    .line 378
    :catchall_0
    move-exception p0

    .line 379
    return-object v2

    .line 374
    :cond_3
    return-object v2
.end method

.method private static clearDialogGate()V
    .locals 1

    .line 1036
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 1037
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 1038
    return-void
.end method

.method public static clearPendingIntro(Landroid/app/Activity;)Z
    .locals 3

    .line 118
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string v1, "Account switch paused"

    const-string v2, "B\u039bR\u2630 couldn\u2019t save this change, so Google sign-in hasn\u2019t started. Try again."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return v0

    .line 123
    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 124
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 125
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 126
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 127
    const/4 p0, 0x1

    return p0
.end method

.method private static declared-synchronized commitEnrollment(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;

    monitor-enter v0

    .line 648
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v1

    .line 649
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

    .line 650
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

    .line 652
    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 653
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

    .line 654
    invoke-static {v10}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 655
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makePayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    .line 656
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->dek:[B

    iget-object v9, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    move-object v4, v2

    move-object v5, v10

    move-object v8, v11

    invoke-static/range {v3 .. v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;

    move-result-object v3

    .line 660
    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 662
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

    .line 663
    invoke-static {v6, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 662
    invoke-static {v11, v5, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 664
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v5, "payloadCiphertext"

    .line 665
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "payload"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 664
    invoke-static {v6, v5, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 666
    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    .line 667
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v6, "recoveryWrappedDek"

    .line 668
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "recovery"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 667
    invoke-static {v5, v6, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 669
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v5, "payloadCiphertext"

    .line 670
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "payload"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 669
    invoke-static {v6, v5, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    .line 672
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

    .line 673
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

    .line 674
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 675
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 674
    invoke-static {v5, v1, v6, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writePairAtomically(Ljava/io/File;[BLjava/io/File;[B)V

    .line 676
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v1

    .line 677
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 678
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    .line 679
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    const-string v4, "AES"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "recoveryWrappedDek"

    .line 685
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v5, "recovery"

    invoke-static {v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 684
    invoke-static {v1, v2, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 686
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v2, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 687
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v4, "payload"

    invoke-static {v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 686
    invoke-static {v2, v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    .line 688
    iget-object p1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 689
    const/4 p1, 0x0

    sput-object p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 690
    const-string p1, "Your Local Account is ready."

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit v0

    return-void

    .line 680
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 681
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 682
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Post-write vault verification failed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 650
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault directory unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 9

    .line 625
    const-string v0, "Paste recovery code"

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createProductInput(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v4

    .line 626
    new-instance v6, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$9;

    invoke-direct {v6, p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$9;-><init>(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    new-instance v8, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;

    invoke-direct {v8, p1, v4, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;-><init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;Landroid/widget/EditText;Landroid/app/Activity;)V

    const-string v2, "One last check"

    const-string v3, "Enter the code you just saved so we know you can recover this account."

    const-string v5, "Back"

    const-string v7, "Confirm code"

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showProductDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V

    .line 645
    return-void
.end method

.method private static createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 797
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 798
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 799
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 800
    :cond_0
    const-string v3, "AES"

    invoke-static {v3, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 801
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 803
    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 804
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 805
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 806
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 807
    invoke-virtual {v0, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 808
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 809
    invoke-virtual {v1, p0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method private static createProductInput(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/EditText;
    .locals 4

    .line 1157
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1159
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1160
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1161
    const v1, -0x56625c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1162
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1163
    const/16 p1, 0xe

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v1

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v3

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result p1

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result p0

    invoke-virtual {v0, v1, v3, p1, p0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1164
    const p0, 0x80091

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1165
    const/16 p0, -0x4b38

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1166
    return-object v0
.end method

.method private static decode(Ljava/lang/String;)[B
    .locals 1

    .line 863
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->normalizeRecoveryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    .line 832
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 833
    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 834
    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    .line 835
    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    const-string p1, "AES/GCM/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 838
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 839
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 840
    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 832
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

    .line 956
    const-string v0, "w14"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 957
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 958
    const-string v2, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 959
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

.method private static dp(Landroid/app/Activity;I)I
    .locals 0

    .line 1201
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 1

    .line 867
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

    .line 820
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 821
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 822
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 823
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 824
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 825
    array-length p2, p1

    array-length v0, p0

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 826
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    array-length p1, p1

    array-length v0, p0

    invoke-static {p0, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    return-object p2
.end method

.method public static getPendingUser()Ljava/lang/Object;
    .locals 1

    .line 73
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

    .line 963
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

    .line 85
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

    .line 967
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

    .line 102
    sget-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 103
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    return v1

    .line 106
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isIntroPending()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 107
    :cond_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isLocalSessionInactive()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 109
    :cond_2
    :try_start_1
    const-string v0, "d45"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "a"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_4

    :try_start_2
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_4

    goto :goto_1

    :catchall_2
    move-exception v0

    return v1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method private static isDirectChild(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 361
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 362
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 363
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 364
    :catchall_0
    move-exception p0

    .line 365
    const/4 p0, 0x0

    return p0
.end method

.method public static isIntroPending()Z
    .locals 3

    .line 78
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

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public static isLocalSessionInactive()Z
    .locals 5

    .line 90
    const-string v0, "local_account_session_active"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 91
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

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    return v1
.end method

.method private static loadDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 813
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 814
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 815
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 816
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

    .line 744
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 745
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 746
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    const-string p0, "legacyUid"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    const-string p0, "userJson"

    invoke-static {p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->serializeUser(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
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

    .line 733
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 734
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 735
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    const-string p1, "algorithm"

    const-string v1, "AES-256-GCM"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
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

    .line 739
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

    .line 740
    return-object v0
.end method

.method private static makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 721
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 722
    const-string v1, "schemaVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 723
    const-string v1, "localAccountId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string v1, "legacyUid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    const-string v1, "algorithm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v1, "payloadCiphertext"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string v1, "recoveryWrappedDek"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    return-object v0
.end method

.method private static makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 696
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 697
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 698
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const-string p1, "deviceKeyAlias"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    const-string p1, "algorithm"

    const-string v1, "AES-256-GCM"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
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

    .line 703
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

    .line 704
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

    .line 705
    return-object v0
.end method

.method private static matchWrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1197
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private static matchesLegacyCache(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 764
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 765
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

    .line 941
    const-string v0, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 942
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

    .line 944
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v11, ""

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 945
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 946
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

    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeRecoveryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 854
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 855
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 856
    const-string v1, "\u200b"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u200c"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 857
    const-string v1, "\u200d"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\ufeff"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 858
    const/16 v1, 0x2b

    const/16 v2, 0x2d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v1, "="

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 859
    return-object p0
.end method

.method private static notifyAccountObservers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1030
    const-string v0, "d45"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1031
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1032
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    return-void
.end method

.method public static onPermissionReturn(Landroid/app/Activity;)V
    .locals 1

    .line 154
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storagePermissionGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->requestStoragePermission(Landroid/app/Activity;)V

    .line 157
    return-void

    .line 159
    :cond_1
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolve(Landroid/app/Activity;)V

    .line 160
    return-void

    .line 154
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

    .line 753
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 754
    const-string p0, "schemaVersion"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 755
    const-string p0, "localAccountId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 756
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 758
    const-string p1, "userJson"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->deserializeUser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 759
    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    invoke-direct {v0, p1, p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 759
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Identity payload mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 757
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "LocalAccountId mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 754
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

    .line 988
    const-string v0, "cz4"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 989
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 990
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 991
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static productAction(Landroid/app/Activity;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .locals 6

    .line 1170
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1171
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1173
    const-string p1, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1174
    const/16 p1, -0x4b38

    if-eqz p2, :cond_0

    const v2, -0xdbeae4

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1175
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1176
    const/16 v2, 0x30

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1177
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v3

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v4

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1178
    const/16 v2, 0xbe

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1179
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1180
    const/16 v3, 0x12

    invoke-static {p0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1181
    if-eqz p2, :cond_1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 1183
    :cond_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1184
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result p0

    const p1, 0x66ffb4c8

    invoke-virtual {v2, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1186
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1187
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    return-object v0
.end method

.method private static productText(Landroid/app/Activity;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 1

    .line 1148
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1149
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    int-to-float p0, p2

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1151
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1152
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1153
    return-object v0
.end method

.method private static randomBytes(I)[B
    .locals 1

    .line 848
    new-array p0, p0, [B

    .line 849
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 850
    return-object p0
.end method

.method private static readBytes(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 871
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 872
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 873
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 875
    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    .line 877
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

    .line 879
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 880
    nop

    .line 881
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 879
    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 880
    throw p0

    .line 871
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Vault file too large"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 385
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

    .line 386
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 387
    const-string p0, "schemaVersion"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    return-object v0

    .line 388
    :cond_1
    const-string p0, "localAccountId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 389
    :cond_2
    const-string p0, "legacyUid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 390
    :cond_3
    const-string p0, "AES-256-GCM"

    const-string p1, "algorithm"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    .line 391
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

    .line 392
    :cond_5
    return-object v1

    .line 391
    :cond_6
    :goto_0
    return-object v0

    .line 385
    :cond_7
    :goto_1
    return-object v0

    .line 393
    :catchall_0
    move-exception p0

    .line 394
    return-object v0
.end method

.method private static declared-synchronized recoverFromCode(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;

    monitor-enter v0

    .line 545
    :try_start_0
    invoke-static {p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->normalizeRecoveryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 546
    invoke-static {p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 547
    array-length p5, v7

    const/16 v1, 0x20

    if-ne p5, v1, :cond_6

    .line 548
    new-instance p5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p5, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 549
    const-string v1, "recoveryWrappedDek"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "recovery"

    .line 550
    invoke-static {p1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 549
    invoke-static {p5, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v4

    .line 551
    new-instance p5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p5, v4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 552
    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "payload"

    invoke-static {p1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 551
    invoke-static {p5, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 553
    invoke-static {v5, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p5

    .line 554
    const-string v1, "legacyUid"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v1, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 555
    iget-object p4, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchesLegacyCache(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 556
    const-string p1, "Local Account identity conflict"

    const-string p2, "The recovery artifact does not match the existing Local Account cache. No data was changed."

    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    monitor-exit v0

    return-void

    .line 561
    :cond_0
    :try_start_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bare_local_vault_"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, "_"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 563
    iget-object v2, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;

    move-result-object p4

    .line 568
    invoke-static {p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 569
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p2, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    .line 570
    invoke-static {p2, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 571
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 572
    :goto_0
    iget-object v3, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {v2, p4, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 573
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p3, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    goto :goto_1

    .line 574
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p3, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 576
    :cond_3
    :goto_1
    invoke-static {p2, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p4

    .line 577
    if-eqz p4, :cond_4

    iget-object v1, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    iget-object p4, p4, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 578
    invoke-static {p3, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p2, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 581
    iget-object p1, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 582
    const-string p1, "Local Account restored. Vault location: /storage/emulated/0/B\u039bR\u2630/accounts"

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    monitor-exit v0

    return-void

    .line 579
    :cond_4
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Recovered vault verification failed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 554
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Legacy UID mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 547
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid recovery code"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 5

    .line 709
    const-string v0, "recoveryWrappedDek"

    const-string v1, "payloadCiphertext"

    const-string v2, "localAccountId"

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 711
    :cond_0
    :try_start_0
    const-string v4, "legacyUid"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 712
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 713
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 714
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

    .line 711
    :goto_0
    return v3

    .line 715
    :catchall_0
    move-exception p0

    .line 716
    return v3

    .line 709
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

    .line 916
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

    .line 917
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 918
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

    .line 920
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 921
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :cond_2
    nop

    .line 927
    return-void

    .line 922
    :catchall_0
    move-exception p1

    .line 923
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 924
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 925
    :cond_4
    throw p1
.end method

.method private static requestStoragePermission(Landroid/app/Activity;)V
    .locals 10

    .line 163
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 165
    new-instance v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$1;

    invoke-direct {v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$1;-><init>()V

    new-instance v9, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;

    invoke-direct {v9, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;-><init>(Landroid/app/Activity;)V

    const-string v3, "Give B\u039bR\u2630 access to your files"

    const-string v4, "B\u039bR\u2630 needs access to its Local Account files so it can keep your account safe and restore it when needed."

    const/4 v5, 0x0

    const-string v6, "Not now"

    const-string v8, "Open settings"

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showProductDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V

    goto :goto_0

    .line 185
    :cond_1
    nop

    .line 186
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbae

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 193
    :goto_0
    return-void

    .line 163
    :cond_2
    :goto_1
    return-void
.end method

.method private static declared-synchronized resolve(Landroid/app/Activity;)V
    .locals 11

    const-class v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;

    monitor-enter v0

    .line 215
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

    .line 216
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    .line 218
    :cond_1
    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v1, :cond_23

    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    if-nez v1, :cond_23

    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    if-eqz v1, :cond_2

    goto/16 :goto_b

    .line 219
    :cond_2
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storageReady(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    const-string v1, "Storage isn\u2019t available yet"

    const-string v2, "Check that file access is enabled for B\u039bR\u2630 and that your device storage is available. Your account hasn\u2019t been changed."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    monitor-exit v0

    return-void

    .line 226
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_5

    .line 228
    :cond_4
    const-string v1, "We can\u2019t access your Local Account files"

    const-string v2, "B\u039bR\u2630 can\u2019t read the Local Account folder. Your existing files haven\u2019t been changed."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    monitor-exit v0

    return-void

    .line 233
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

    .line 234
    :goto_0
    if-nez v2, :cond_7

    .line 235
    const-string v1, "We can\u2019t check your Local Account files"

    const-string v2, "B\u039bR\u2630 couldn\u2019t check the Local Account folder. Your existing files haven\u2019t been changed."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    monitor-exit v0

    return-void

    .line 240
    :cond_7
    :try_start_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 241
    nop

    .line 242
    nop

    .line 243
    array-length v5, v2

    move v6, v3

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v3, v5, :cond_d

    aget-object v9, v2, v3

    .line 244
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 245
    const-string v10, "local-account-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, ".tmp-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, ".bak-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 246
    :cond_8
    nop

    .line 247
    move v7, v8

    goto :goto_2

    .line 249
    :cond_9
    const-string v10, "local-account-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, ".vault"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, ".recovery"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 250
    :cond_a
    invoke-static {v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->candidateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 251
    if-nez v9, :cond_b

    move v6, v8

    goto :goto_2

    .line 252
    :cond_b
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 255
    :cond_d
    if-eqz v6, :cond_e

    .line 256
    const-string v1, "One of your Local Account files needs attention"

    const-string v2, "A Local Account file doesn\u2019t look right. We\u2019ve left everything as it is instead of starting a new account automatically."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    monitor-exit v0

    return-void

    .line 260
    :cond_e
    if-eqz v7, :cond_f

    .line 261
    :try_start_4
    const-string v1, "Your previous setup needs a quick check"

    const-string v2, "An earlier save may not have finished. Check the existing account files before creating another one."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    monitor-exit v0

    return-void

    .line 265
    :cond_f
    :try_start_5
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v8, :cond_10

    .line 266
    const-string v1, "More than one Local Account was found"

    const-string v2, "B\u039bR\u2630 found more than one Local Account on this device. Nothing was selected or overwritten. Please review the account files before continuing."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    monitor-exit v0

    return-void

    .line 271
    :cond_10
    :try_start_6
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v8, :cond_1e

    .line 272
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
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

    .line 274
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

    .line 275
    invoke-static {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isDirectChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isDirectChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 276
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 277
    :cond_11
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_7

    .line 282
    :cond_12
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_13

    invoke-static {v3, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_3

    :cond_13
    move-object v1, v5

    .line 283
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {v4, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_4

    :cond_14
    move-object v6, v5

    .line 284
    :goto_4
    if-nez v1, :cond_15

    if-nez v6, :cond_15

    .line 285
    invoke-static {p0, v2, v3, v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 286
    monitor-exit v0

    return-void

    .line 289
    :cond_15
    if-eqz v1, :cond_19

    .line 290
    :try_start_7
    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v7

    .line 291
    if-eqz v7, :cond_19

    .line 292
    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchesLegacyCache(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 293
    const-string v1, "This account doesn\u2019t match the saved profile"

    const-string v2, "The saved account details don\u2019t match this device\u2019s profile. Nothing has been changed."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 295
    monitor-exit v0

    return-void

    .line 297
    :cond_16
    :try_start_8
    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 298
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 300
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    goto :goto_5

    .line 301
    :cond_17
    invoke-static {v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 303
    :cond_18
    :goto_5
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Landroid/app/Activity;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 304
    monitor-exit v0

    return-void

    .line 308
    :cond_19
    if-eqz v6, :cond_1a

    move-object v1, v6

    .line 309
    :cond_1a
    if-eqz v1, :cond_1c

    :try_start_9
    const-string v6, "recoveryWrappedDek"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_6

    .line 313
    :cond_1b
    invoke-static {p0, v2, v3, v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 314
    monitor-exit v0

    return-void

    .line 310
    :cond_1c
    :goto_6
    :try_start_a
    invoke-static {p0, v2, v3, v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 311
    monitor-exit v0

    return-void

    .line 278
    :cond_1d
    :goto_7
    :try_start_b
    const-string v1, "A Local Account file is in an unexpected place"

    const-string v2, "One of the account files can\u2019t be opened safely. Your data hasn\u2019t been changed."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 280
    monitor-exit v0

    return-void

    .line 317
    :cond_1e
    :try_start_c
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_1f

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_8

    :cond_1f
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 319
    :goto_8
    if-nez v1, :cond_20

    .line 320
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->newLocalUser()Ljava/lang/Object;

    move-result-object v1

    .line 321
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 323
    :cond_20
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 324
    const-string v1, "This profile can\u2019t be used as a Local Account"

    const-string v2, "B\u039bR\u2630 couldn\u2019t verify this Local Account profile, so it hasn\u2019t saved or activated it."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 326
    monitor-exit v0

    return-void

    .line 328
    :cond_21
    :try_start_d
    sget-object v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    if-nez v2, :cond_22

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->beginEnrollment(Landroid/app/Activity;Ljava/lang/Object;)V

    goto :goto_9

    .line 329
    :cond_22
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 333
    :goto_9
    goto :goto_a

    .line 330
    :catchall_0
    move-exception v1

    .line 331
    :try_start_e
    const-string v1, "Local Account storage error"

    const-string v2, "B\u039bR\u2630 couldn\u2019t safely check your account files. No new account was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 334
    :goto_a
    monitor-exit v0

    return-void

    .line 218
    :cond_23
    :goto_b
    monitor-exit v0

    return-void

    .line 214
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static restoreArchivedArtifacts(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 535
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 537
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 539
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 540
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 541
    return-void

    .line 535
    :cond_3
    :goto_0
    return-void
.end method

.method private static restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;
    .locals 6

    .line 400
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "deviceKeyAlias"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->loadDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 402
    if-nez v2, :cond_0

    return-object v0

    .line 403
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

    .line 404
    invoke-static {p1, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 403
    invoke-static {v2, v3, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 405
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 406
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "payload"

    invoke-static {p1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 405
    invoke-static {v2, v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 407
    invoke-static {v1, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p1

    .line 408
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

    .line 409
    :cond_1
    return-object p1

    .line 410
    :catchall_0
    move-exception p0

    .line 411
    return-object v0
.end method

.method private static rootDirectory()Ljava/io/File;
    .locals 2

    .line 356
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/B\u039bR\u2630/accounts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static selectLocal(Landroid/app/Activity;)V
    .locals 4

    .line 131
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->onPermissionReturn(Landroid/app/Activity;)V

    .line 133
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 137
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

    .line 144
    nop

    .line 145
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 146
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 147
    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    const-string v0, "Setup couldn\u2019t continue"

    const-string v1, "B\u039bR\u2630 couldn\u2019t save your setup progress, so your account hasn\u2019t been activated."

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_2
    return-void

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 140
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 141
    const-string v0, "Local Account isn\u2019t ready yet"

    const-string v1, "We couldn\u2019t prepare your Local Account. Nothing has been created yet."

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private static serializeUser(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 950
    const-string v0, "w14"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 951
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 952
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

    .line 981
    const-string v0, "com.bareapps.barebackup.common.V"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 982
    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 983
    const-string v2, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 984
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

    .line 985
    return-void
.end method

.method private static showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1056
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1057
    :cond_0
    new-instance v8, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$13;

    invoke-direct {v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$13;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "Got it"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showProductDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V

    .line 1060
    return-void

    .line 1056
    :cond_1
    :goto_0
    return-void
.end method

.method private static showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    .line 452
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;

    move-object v1, v0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v8, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;

    invoke-direct {v8, p1, p2, p3, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/app/Activity;)V

    const-string v2, "Start fresh?"

    const-string v3, "We couldn\'t unlock this account. If you continue, B\u039bR\u2630 will keep its existing files in an archive and create a new Local Account. The old account\'s data won\'t be available in the new account. You can still try recovery later if you find the code."

    const/4 v4, 0x0

    const-string v5, "Try recovery"

    const-string v7, "Archive & start fresh"

    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showProductDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V

    .line 496
    return-void

    .line 452
    :cond_1
    :goto_0
    return-void
.end method

.method private static showProductDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V
    .locals 8

    .line 1069
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1070
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1071
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1072
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1073
    const/16 v3, 0x18

    invoke-static {p0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v4

    invoke-static {p0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-static {p0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v3

    const/16 v6, 0x12

    invoke-static {p0, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v7

    invoke-virtual {v1, v4, v5, v3, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1074
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1075
    const v4, -0xdbdeda

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1076
    const/16 v4, 0x1a

    invoke-static {p0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1077
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1079
    const/16 v3, 0x15

    const/4 v4, -0x1

    invoke-static {p0, p1, v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->productText(Landroid/app/Activity;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p1

    .line 1080
    const-string v3, "sans-serif-medium"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1081
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    const/16 p1, 0xe

    const v3, -0x2b3430

    invoke-static {p0, p2, p1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->productText(Landroid/app/Activity;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p1

    .line 1084
    const/4 p2, 0x2

    invoke-static {p0, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3f851eb8    # 1.04f

    invoke-virtual {p1, v3, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1085
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 1086
    const/16 v5, 0xa

    invoke-static {p0, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1087
    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    if-eqz p3, :cond_1

    .line 1090
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 1091
    invoke-static {p0, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v3

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1092
    invoke-virtual {v1, p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    :cond_1
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1096
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1097
    const p3, 0x800015

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1098
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    .line 1099
    const/16 v3, 0x14

    invoke-static {p0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v3

    iput v3, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1100
    invoke-virtual {v1, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 1103
    new-instance p3, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$14;

    invoke-direct {p3, v0, p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$14;-><init>(Landroid/app/Dialog;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V

    invoke-static {p0, p4, v4, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->productAction(Landroid/app/Activity;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object p3

    .line 1108
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->actionParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p4

    .line 1103
    invoke-virtual {p1, p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1110
    :cond_2
    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    .line 1111
    new-instance p3, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$15;

    invoke-direct {p3, v0, p7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$15;-><init>(Landroid/app/Dialog;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V

    invoke-static {p0, p6, v2, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->productAction(Landroid/app/Activity;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object p3

    .line 1116
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->actionParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p4

    .line 1111
    invoke-virtual {p1, p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1119
    :cond_3
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1120
    invoke-virtual {p1, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1121
    invoke-virtual {p1, v4}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 1122
    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1123
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1124
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1125
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1126
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1127
    if-eqz p1, :cond_4

    .line 1128
    const p3, 0x106000d

    invoke-virtual {p1, p3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1129
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 1130
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 1131
    const p3, 0x3f1eb852    # 0.62f

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1132
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1134
    :cond_4
    new-instance p2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$16;

    invoke-direct {p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$16;-><init>()V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1137
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 1138
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 1139
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1140
    if-eqz p1, :cond_5

    .line 1141
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1142
    const/16 p3, 0x28

    invoke-static {p0, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result p3

    sub-int/2addr p2, p3

    const/16 p3, 0x230

    invoke-static {p0, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 1143
    const/4 p2, -0x2

    invoke-virtual {p1, p0, p2}, Landroid/view/Window;->setLayout(II)V

    .line 1145
    :cond_5
    return-void

    .line 1069
    :cond_6
    :goto_0
    return-void
.end method

.method private static showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 13

    .line 594
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 595
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 596
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 598
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 599
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 600
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 601
    const v2, 0x3d0f5c29    # 0.035f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 602
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 603
    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v3

    const/16 v4, 0x12

    invoke-static {p0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v6

    invoke-static {p0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 604
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 605
    const/16 v4, 0x28

    const/16 v5, 0x2d

    const/16 v6, 0x30

    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 606
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 607
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 608
    const-string v2, "A recovery copy is also saved on this device. This code is different from your backup password."

    const v3, -0x46524d

    const/16 v4, 0xc

    invoke-static {p0, v2, v4, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->productText(Landroid/app/Activity;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 609
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 610
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 611
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 613
    invoke-static {p0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 614
    invoke-virtual {v8, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    new-instance v10, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$7;

    invoke-direct {v10}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$7;-><init>()V

    new-instance v12, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;

    invoke-direct {v12, p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;-><init>(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    const-string v6, "Keep your recovery code safe"

    const-string v7, "Save this code somewhere private. You\'ll need it if you move B\u039bR\u2630 to another device or lose access to this one. You won\'t see it again."

    const-string v9, "Cancel setup"

    const-string v11, "I\'ve saved my code"

    move-object v5, p0

    invoke-static/range {v5 .. v12}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showProductDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V

    .line 622
    return-void

    .line 594
    :cond_1
    :goto_0
    return-void
.end method

.method private static showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 6

    .line 418
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private static showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9

    .line 424
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    const-string v0, "Recovery code"

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createProductInput(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    .line 426
    if-eqz p5, :cond_1

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :cond_1
    new-instance p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;

    move-object v1, p5

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    new-instance v8, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Landroid/widget/EditText;)V

    const-string v2, "Let\'s get your account back"

    const-string v3, "Enter the recovery code you saved when you set up this Local Account."

    const-string v5, "Create a new account"

    const-string v7, "Recover account"

    move-object v1, p0

    move-object v4, v0

    move-object v6, p5

    invoke-static/range {v1 .. v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showProductDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V

    .line 447
    return-void

    .line 424
    :cond_2
    :goto_0
    return-void
.end method

.method private static showSignOutFailure(Landroid/app/Activity;)V
    .locals 9

    .line 1045
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    new-instance v6, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$11;

    invoke-direct {v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$11;-><init>()V

    new-instance v8, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;

    invoke-direct {v8, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;-><init>(Landroid/app/Activity;)V

    const-string v2, "Couldn\'t sign out just yet"

    const-string v3, "B\u039bR\u2630 couldn\'t save the sign-out state, so your account is still active. Try again or stay where you are."

    const/4 v4, 0x0

    const-string v5, "Stay here"

    const-string v7, "Try again"

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showProductDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;Ljava/lang/String;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogAction;)V

    .line 1053
    return-void

    .line 1045
    :cond_1
    :goto_0
    return-void
.end method

.method public static signOut(Landroid/app/Activity;)V
    .locals 2

    .line 196
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeSignOutMarkers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showSignOutFailure(Landroid/app/Activity;)V

    .line 198
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 201
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 202
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 203
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 204
    if-eqz p0, :cond_1

    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 206
    :goto_0
    nop

    .line 207
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 210
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 211
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 212
    return-void
.end method

.method private static storagePermissionGranted(Landroid/app/Activity;)Z
    .locals 2

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    return p0

    .line 348
    :cond_0
    nop

    .line 349
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 350
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 349
    :goto_0
    return p0
.end method

.method private static storageReady(Landroid/app/Activity;)Z
    .locals 3

    .line 337
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storagePermissionGranted(Landroid/app/Activity;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 338
    :cond_0
    const-string p0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 339
    :cond_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object p0

    .line 340
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

    .line 341
    :cond_3
    nop

    .line 342
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 343
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

    .line 1041
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

    .line 1042
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

    .line 905
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 906
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

    .line 908
    :try_start_0
    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 909
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 911
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 913
    :cond_0
    return-void

    .line 909
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Atomic rename failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 912
    :cond_2
    throw p0

    .line 905
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Target already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeMarkers(ZZ)Z
    .locals 2

    .line 1010
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1011
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "local_account_session_active"

    .line 1012
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "local_signout_pending_intro"

    .line 1013
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1014
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    return p0

    .line 1015
    :catchall_0
    move-exception p0

    .line 1016
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

    .line 886
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 887
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

    .line 888
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

    .line 889
    nop

    .line 891
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 892
    invoke-static {v1, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 893
    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 894
    nop

    .line 895
    const/4 v2, 0x1

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 901
    nop

    .line 902
    return-void

    .line 895
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 893
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recovery artifact commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    :catchall_0
    move-exception p0

    .line 897
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 898
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 899
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 900
    :cond_2
    throw p0

    .line 886
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault target already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeSignOutMarkers()Z
    .locals 4

    .line 996
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 997
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "local_account_session_active"

    .line 998
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "local_signout_pending_intro"

    .line 999
    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "KEY_FIRST_START"

    .line 1000
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED"

    .line 1001
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1002
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    return v0

    .line 1003
    :catchall_0
    move-exception v1

    .line 1004
    return v0
.end method

.method private static writeTemp(Ljava/io/File;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 930
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 932
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 933
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 934
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 937
    nop

    .line 938
    return-void

    .line 936
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 937
    throw p0
.end method
