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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aad(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 871
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

    .line 44
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->setCachedLocalUser(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(ZZ)Z
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1202(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;
    .locals 0

    .line 44
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    return-object p0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    return p0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    return p0
.end method

.method static synthetic access$1600(Landroid/app/Activity;)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolve(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1700(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 44
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreArchivedArtifacts(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1800()V
    .locals 0

    .line 44
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cancelPendingSelection()V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->normalizeRecoveryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->commitEnrollment(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static/range {p0 .. p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoverFromCode(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static/range {p0 .. p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->newLocalUser()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->archiveExistingArtifacts(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static activate(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 797
    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->setCachedLocalUser(Ljava/lang/Object;)V

    .line 798
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 799
    const/4 v1, 0x0

    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 800
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 801
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 802
    sput-boolean p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 803
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 809
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 811
    :try_start_1
    const-string p1, "com.bareapps.barebackup.home.HomeActivity"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 812
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 813
    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 814
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 815
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 819
    goto :goto_1

    .line 816
    :catchall_1
    move-exception p1

    .line 817
    const-string v0, "LocalAccountVault"

    const-string v1, "Home navigation failed after local activation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 818
    const-string p1, "Local Account is active, but Home could not be opened. Please reopen the app."

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 821
    :cond_0
    :goto_1
    return-void

    .line 798
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

    .line 514
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v0

    .line 515
    new-instance v1, Ljava/io/File;

    const-string v2, "recovery-archive"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create recovery archive directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 519
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 522
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

    .line 523
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 524
    nop

    .line 525
    nop

    .line 527
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 528
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

    .line 531
    move v1, v2

    goto :goto_1

    .line 529
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot archive existing vault"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 527
    :cond_3
    move v1, p0

    .line 533
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 534
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

    .line 537
    move p0, v2

    goto :goto_2

    .line 535
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot archive existing recovery artifact"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 539
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

    .line 540
    :cond_7
    :goto_3
    return-object v0

    .line 541
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

    .line 542
    :goto_4
    if-eqz p0, :cond_8

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 543
    :cond_8
    if-eqz v1, :cond_9

    new-instance p0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 544
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 545
    throw v2

    .line 523
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create account archive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 520
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

    .line 601
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->randomBytes(I)[B

    move-result-object v4

    .line 602
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->randomBytes(I)[B

    move-result-object v5

    .line 603
    const/16 v0, 0xb

    invoke-static {v5, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 604
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;-><init>(Ljava/lang/Object;Ljava/lang/String;[B[BLjava/lang/String;)V

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 605
    sget-object p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 606
    return-void
.end method

.method private static cachedLocalUser()Ljava/lang/Object;
    .locals 6

    .line 999
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.bareapps.barebackup.common.V"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1000
    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1001
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

    .line 1002
    :catchall_0
    move-exception v1

    .line 1003
    return-object v0
.end method

.method public static canCompleteIntro()Z
    .locals 1

    .line 87
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

    .line 1048
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeSignOutMarkers()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1049
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 1050
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 1051
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 1052
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 1053
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1054
    :goto_0
    return-void
.end method

.method private static candidateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 369
    const-string v0, "local-account-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 371
    :cond_0
    const-string v1, ".vault"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    const-string v1, ".recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 374
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

    .line 376
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

    .line 377
    :catchall_0
    move-exception p0

    .line 378
    return-object v2

    .line 373
    :cond_3
    return-object v2
.end method

.method private static clearDialogGate()V
    .locals 1

    .line 1063
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 1064
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 1065
    return-void
.end method

.method public static clearPendingIntro(Landroid/app/Activity;)Z
    .locals 3

    .line 107
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const-string v1, "Could not switch account"

    const-string v2, "The account-selection state could not be saved. Google sign-in was not started."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v0

    .line 112
    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 113
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 114
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 115
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 116
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

    .line 675
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v1

    .line 676
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

    .line 677
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

    .line 679
    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 680
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

    .line 681
    invoke-static {v10}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 682
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makePayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    .line 683
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->dek:[B

    iget-object v9, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    move-object v4, v2

    move-object v5, v10

    move-object v8, v11

    invoke-static/range {v3 .. v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;

    move-result-object v3

    .line 687
    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 689
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

    .line 690
    invoke-static {v6, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 689
    invoke-static {v11, v5, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 691
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v5, "payloadCiphertext"

    .line 692
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "payload"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 691
    invoke-static {v6, v5, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 693
    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    .line 694
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v6, "recoveryWrappedDek"

    .line 695
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "recovery"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 694
    invoke-static {v5, v6, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 696
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v5, "payloadCiphertext"

    .line 697
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "payload"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 696
    invoke-static {v6, v5, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    .line 699
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

    .line 700
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

    .line 701
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 702
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 701
    invoke-static {v5, v1, v6, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writePairAtomically(Ljava/io/File;[BLjava/io/File;[B)V

    .line 703
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v1

    .line 704
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 705
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    .line 706
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 711
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    const-string v4, "AES"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "recoveryWrappedDek"

    .line 712
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v5, "recovery"

    invoke-static {v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 711
    invoke-static {v1, v2, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 713
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v2, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 714
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v4, "payload"

    invoke-static {v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 713
    invoke-static {v2, v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    .line 715
    iget-object p1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 716
    const/4 p1, 0x0

    sput-object p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 717
    const-string p1, "Local Account vault saved to /storage/emulated/0/B\u039bR\u2630/accounts"

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    monitor-exit v0

    return-void

    .line 707
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 708
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 709
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Post-write vault verification failed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 677
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault directory unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 4

    .line 638
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 639
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 640
    const v2, 0x80091

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 641
    const-string v2, "Enter the recovery code"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 642
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 643
    const-string v3, "Confirm recovery code"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 644
    const-string v3, "Enter the code again before the Local Account vault is created."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 645
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;

    invoke-direct {v3, p1, v0, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;-><init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 646
    const-string p1, "Confirm"

    invoke-virtual {v2, p1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$9;

    invoke-direct {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$9;-><init>()V

    .line 662
    const-string v2, "Cancel Local setup"

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 668
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 669
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 670
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 671
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 672
    return-void
.end method

.method private static createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 824
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 825
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 826
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 827
    :cond_0
    const-string v3, "AES"

    invoke-static {v3, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 828
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 830
    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 831
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 832
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 833
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 834
    invoke-virtual {v0, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 835
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 836
    invoke-virtual {v1, p0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method private static decode(Ljava/lang/String;)[B
    .locals 1

    .line 890
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

    .line 859
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 860
    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 861
    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    .line 862
    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    const-string p1, "AES/GCM/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 865
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 866
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 867
    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 859
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

    .line 983
    const-string v0, "w14"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 984
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 985
    const-string v2, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 986
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

    .line 894
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

    .line 847
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 848
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 849
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 850
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 851
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 852
    array-length p2, p1

    array-length v0, p0

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 853
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    array-length p1, p1

    array-length v0, p0

    invoke-static {p0, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    return-object p2
.end method

.method public static getPendingUser()Ljava/lang/Object;
    .locals 1

    .line 62
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

    .line 990
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

    .line 74
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

    .line 994
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

    .line 91
    sget-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 92
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    return v1

    .line 95
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isIntroPending()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 96
    :cond_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isLocalSessionInactive()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 98
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

    .line 99
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

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 102
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

    .line 360
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 361
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 362
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 363
    :catchall_0
    move-exception p0

    .line 364
    const/4 p0, 0x0

    return p0
.end method

.method public static isIntroPending()Z
    .locals 3

    .line 67
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

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public static isLocalSessionInactive()Z
    .locals 5

    .line 79
    const-string v0, "local_account_session_active"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 80
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

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    return v1
.end method

.method private static loadDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 840
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 841
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 842
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 843
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

    .line 771
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 772
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 773
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    const-string p0, "legacyUid"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    const-string p0, "userJson"

    invoke-static {p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->serializeUser(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 776
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

    .line 760
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 761
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 762
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 763
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 764
    const-string p1, "algorithm"

    const-string v1, "AES-256-GCM"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
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

    .line 766
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

    .line 767
    return-object v0
.end method

.method private static makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 748
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 749
    const-string v1, "schemaVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 750
    const-string v1, "localAccountId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    const-string v1, "legacyUid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 752
    const-string v1, "algorithm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 753
    const-string v1, "payloadCiphertext"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    const-string v1, "recoveryWrappedDek"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    return-object v0
.end method

.method private static makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 723
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 724
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 725
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string p1, "deviceKeyAlias"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string p1, "algorithm"

    const-string v1, "AES-256-GCM"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
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

    .line 730
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

    .line 731
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

    .line 732
    return-object v0
.end method

.method private static matchesLegacyCache(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 791
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 793
    :cond_0
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 792
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

    .line 968
    const-string v0, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 969
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

    .line 971
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v11, ""

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 972
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 973
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

    .line 972
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeRecoveryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 881
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 882
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 883
    const-string v1, "\u200b"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u200c"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 884
    const-string v1, "\u200d"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\ufeff"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 885
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

    .line 886
    return-object p0
.end method

.method private static notifyAccountObservers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1057
    const-string v0, "d45"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1058
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1059
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    return-void
.end method

.method public static onPermissionReturn(Landroid/app/Activity;)V
    .locals 1

    .line 143
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storagePermissionGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->requestStoragePermission(Landroid/app/Activity;)V

    .line 146
    return-void

    .line 148
    :cond_1
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolve(Landroid/app/Activity;)V

    .line 149
    return-void

    .line 143
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

    .line 780
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 781
    const-string p0, "schemaVersion"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 782
    const-string p0, "localAccountId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 783
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 785
    const-string p1, "userJson"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->deserializeUser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 786
    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    invoke-direct {v0, p1, p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 786
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Identity payload mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 784
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "LocalAccountId mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 781
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

    .line 1015
    const-string v0, "cz4"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1016
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1017
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1018
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static randomBytes(I)[B
    .locals 1

    .line 875
    new-array p0, p0, [B

    .line 876
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 877
    return-object p0
.end method

.method private static readBytes(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 898
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 899
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 900
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 902
    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    .line 904
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

    .line 906
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 907
    nop

    .line 908
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 906
    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 907
    throw p0

    .line 898
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Vault file too large"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 384
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

    .line 385
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    const-string p0, "schemaVersion"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    return-object v0

    .line 387
    :cond_1
    const-string p0, "localAccountId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 388
    :cond_2
    const-string p0, "legacyUid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 389
    :cond_3
    const-string p0, "AES-256-GCM"

    const-string p1, "algorithm"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    .line 390
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

    .line 391
    :cond_5
    return-object v1

    .line 390
    :cond_6
    :goto_0
    return-object v0

    .line 384
    :cond_7
    :goto_1
    return-object v0

    .line 392
    :catchall_0
    move-exception p0

    .line 393
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

    .line 560
    :try_start_0
    invoke-static {p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->normalizeRecoveryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 561
    invoke-static {p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 562
    array-length p5, v7

    const/16 v1, 0x20

    if-ne p5, v1, :cond_6

    .line 563
    new-instance p5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p5, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 564
    const-string v1, "recoveryWrappedDek"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "recovery"

    .line 565
    invoke-static {p1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 564
    invoke-static {p5, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v4

    .line 566
    new-instance p5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p5, v4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 567
    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "payload"

    invoke-static {p1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 566
    invoke-static {p5, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 568
    invoke-static {v5, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p5

    .line 569
    const-string v1, "legacyUid"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v1, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 570
    iget-object p4, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchesLegacyCache(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 571
    const-string p1, "Local Account identity conflict"

    const-string p2, "The recovery artifact does not match the existing Local Account cache. No data was changed."

    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit v0

    return-void

    .line 576
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

    .line 577
    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 578
    iget-object v2, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;

    move-result-object p4

    .line 583
    invoke-static {p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 584
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p2, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    .line 585
    invoke-static {p2, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 586
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 587
    :goto_0
    iget-object v3, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {v2, p4, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 588
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

    .line 589
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p3, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 591
    :cond_3
    :goto_1
    invoke-static {p2, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p4

    .line 592
    if-eqz p4, :cond_4

    iget-object v1, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    iget-object p4, p4, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 593
    invoke-static {p3, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p2, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 596
    iget-object p1, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 597
    const-string p1, "Local Account restored. Vault location: /storage/emulated/0/B\u039bR\u2630/accounts"

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    monitor-exit v0

    return-void

    .line 594
    :cond_4
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Recovered vault verification failed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 569
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Legacy UID mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 562
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid recovery code"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 5

    .line 736
    const-string v0, "recoveryWrappedDek"

    const-string v1, "payloadCiphertext"

    const-string v2, "localAccountId"

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 738
    :cond_0
    :try_start_0
    const-string v4, "legacyUid"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 739
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 740
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 741
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

    .line 738
    :goto_0
    return v3

    .line 742
    :catchall_0
    move-exception p0

    .line 743
    return v3

    .line 736
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

    .line 943
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

    .line 944
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 945
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

    .line 947
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 948
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :cond_2
    nop

    .line 954
    return-void

    .line 949
    :catchall_0
    move-exception p1

    .line 950
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 951
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 952
    :cond_4
    throw p1
.end method

.method private static requestStoragePermission(Landroid/app/Activity;)V
    .locals 3

    .line 152
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    const-string v1, "Storage access required"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    const-string v1, "Local Account needs All Files Access to read or save the existing vault and recovery artifact in /storage/emulated/0/B\u039bR\u2630/accounts. No account will be created until access is granted."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;

    invoke-direct {v1, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;-><init>(Landroid/app/Activity;)V

    .line 157
    const-string v2, "Open settings"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$1;

    invoke-direct {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$1;-><init>()V

    .line 174
    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 181
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 182
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    goto :goto_0

    .line 183
    :cond_1
    nop

    .line 184
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbae

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 191
    :goto_0
    return-void

    .line 152
    :cond_2
    :goto_1
    return-void
.end method

.method private static declared-synchronized resolve(Landroid/app/Activity;)V
    .locals 11

    const-class v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;

    monitor-enter v0

    .line 213
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

    .line 214
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    .line 216
    :cond_1
    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v1, :cond_23

    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    if-nez v1, :cond_23

    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    if-eqz v1, :cond_2

    goto/16 :goto_b

    .line 217
    :cond_2
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storageReady(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 218
    const-string v1, "Storage unavailable"

    const-string v2, "Grant the existing All Files Access permission and make sure shared storage is mounted. No Local Account was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    monitor-exit v0

    return-void

    .line 224
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_5

    .line 226
    :cond_4
    const-string v1, "Local Account storage error"

    const-string v2, "The Local Account directory is not readable. No new account was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    monitor-exit v0

    return-void

    .line 231
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

    .line 232
    :goto_0
    if-nez v2, :cond_7

    .line 233
    const-string v1, "Local Account storage error"

    const-string v2, "The Local Account directory could not be listed. No new account was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    monitor-exit v0

    return-void

    .line 238
    :cond_7
    :try_start_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 239
    nop

    .line 240
    nop

    .line 241
    array-length v5, v2

    move v6, v3

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v3, v5, :cond_d

    aget-object v9, v2, v3

    .line 242
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 243
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

    .line 244
    :cond_8
    nop

    .line 245
    move v7, v8

    goto :goto_2

    .line 247
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

    .line 248
    :cond_a
    invoke-static {v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->candidateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 249
    if-nez v9, :cond_b

    move v6, v8

    goto :goto_2

    .line 250
    :cond_b
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 253
    :cond_d
    if-eqz v6, :cond_e

    .line 254
    const-string v1, "Corrupt Local Account candidate"

    const-string v2, "A Local Account vault or recovery filename is malformed. No new account will be created automatically."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    monitor-exit v0

    return-void

    .line 258
    :cond_e
    if-eqz v7, :cond_f

    .line 259
    :try_start_4
    const-string v1, "Local Account recovery required"

    const-string v2, "An interrupted Local Account write was found. Resolve the existing vault files before creating another account."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    monitor-exit v0

    return-void

    .line 263
    :cond_f
    :try_start_5
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v8, :cond_10

    .line 264
    const-string v2, "Local Account conflict"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "More than one Local Account vault was found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". No account was selected or overwritten."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {p0, v2, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 267
    monitor-exit v0

    return-void

    .line 270
    :cond_10
    :try_start_6
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v8, :cond_1e

    .line 271
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 272
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

    .line 273
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

    .line 274
    invoke-static {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isDirectChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isDirectChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 275
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 276
    :cond_11
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_7

    .line 281
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

    .line 282
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {v4, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_4

    :cond_14
    move-object v6, v5

    .line 283
    :goto_4
    if-nez v1, :cond_15

    if-nez v6, :cond_15

    .line 284
    invoke-static {p0, v2, v3, v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 285
    monitor-exit v0

    return-void

    .line 288
    :cond_15
    if-eqz v1, :cond_19

    .line 289
    :try_start_7
    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v7

    .line 290
    if-eqz v7, :cond_19

    .line 291
    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchesLegacyCache(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 292
    const-string v1, "Local Account identity conflict"

    const-string v2, "The vault identity does not match the legacy Local Account cache. No data was changed."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 294
    monitor-exit v0

    return-void

    .line 296
    :cond_16
    :try_start_8
    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 297
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 299
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    goto :goto_5

    .line 300
    :cond_17
    invoke-static {v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 302
    :cond_18
    :goto_5
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Landroid/app/Activity;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 303
    monitor-exit v0

    return-void

    .line 307
    :cond_19
    if-eqz v6, :cond_1a

    move-object v1, v6

    .line 308
    :cond_1a
    if-eqz v1, :cond_1c

    :try_start_9
    const-string v6, "recoveryWrappedDek"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_6

    .line 312
    :cond_1b
    invoke-static {p0, v2, v3, v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 313
    monitor-exit v0

    return-void

    .line 309
    :cond_1c
    :goto_6
    :try_start_a
    invoke-static {p0, v2, v3, v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 310
    monitor-exit v0

    return-void

    .line 277
    :cond_1d
    :goto_7
    :try_start_b
    const-string v1, "Local Account storage conflict"

    const-string v2, "A vault path is not a regular file inside the Local Account directory. No data was changed."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 279
    monitor-exit v0

    return-void

    .line 316
    :cond_1e
    :try_start_c
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_1f

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_8

    :cond_1f
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 318
    :goto_8
    if-nez v1, :cond_20

    .line 319
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->newLocalUser()Ljava/lang/Object;

    move-result-object v1

    .line 320
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 322
    :cond_20
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 323
    const-string v1, "Local Account identity error"

    const-string v2, "The selected identity is not a Local Account. No vault was written."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 325
    monitor-exit v0

    return-void

    .line 327
    :cond_21
    :try_start_d
    sget-object v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    if-nez v2, :cond_22

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->beginEnrollment(Landroid/app/Activity;Ljava/lang/Object;)V

    goto :goto_9

    .line 328
    :cond_22
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 332
    :goto_9
    goto :goto_a

    .line 329
    :catchall_0
    move-exception v1

    .line 330
    :try_start_e
    const-string v1, "Local Account storage error"

    const-string v2, "The Local Account vault could not be inspected safely. No new identity was created."

    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 333
    :goto_a
    monitor-exit v0

    return-void

    .line 216
    :cond_23
    :goto_b
    monitor-exit v0

    return-void

    .line 212
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static restoreArchivedArtifacts(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 550
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 552
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 554
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 555
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 556
    return-void

    .line 550
    :cond_3
    :goto_0
    return-void
.end method

.method private static restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;
    .locals 6

    .line 399
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "deviceKeyAlias"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->loadDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 401
    if-nez v2, :cond_0

    return-object v0

    .line 402
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

    .line 403
    invoke-static {p1, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 402
    invoke-static {v2, v3, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 404
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 405
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "payload"

    invoke-static {p1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 404
    invoke-static {v2, v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 406
    invoke-static {v1, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p1

    .line 407
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

    .line 408
    :cond_1
    return-object p1

    .line 409
    :catchall_0
    move-exception p0

    .line 410
    return-object v0
.end method

.method private static rootDirectory()Ljava/io/File;
    .locals 2

    .line 355
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/B\u039bR\u2630/accounts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static selectLocal(Landroid/app/Activity;)V
    .locals 4

    .line 120
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->onPermissionReturn(Landroid/app/Activity;)V

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 126
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

    .line 133
    nop

    .line 134
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 135
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 136
    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    const-string v0, "Local Account setup unavailable"

    const-string v1, "The pending Intro state could not be saved. No Local Account was activated."

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    return-void

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 129
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 130
    const-string v0, "Local Account unavailable"

    const-string v1, "The Local Account identity could not be prepared. No account was created."

    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private static serializeUser(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 977
    const-string v0, "w14"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 978
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 979
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

    .line 1008
    const-string v0, "com.bareapps.barebackup.common.V"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1009
    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1010
    const-string v2, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1011
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

    .line 1012
    return-void
.end method

.method private static showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1099
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1101
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1102
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1103
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel Local setup"

    new-instance v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$13;

    invoke-direct {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$13;-><init>()V

    .line 1104
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1110
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1111
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1112
    const/4 p1, 0x1

    sput-boolean p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 1113
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    goto :goto_0

    .line 1114
    :catchall_0
    move-exception p1

    .line 1115
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    .line 1116
    invoke-static {p0, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1118
    :goto_0
    return-void

    .line 1099
    :cond_1
    :goto_1
    return-void
.end method

.method private static showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 461
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    const-string v1, "Create a new Local Account?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 464
    const-string v1, "The existing account cannot be recovered without its Recovery Code. B\u039bR\u2630 will move its .vault and .recovery files into /storage/emulated/0/B\u039bR\u2630/accounts/recovery-archive, then create a completely new LocalAccountId. The old account will not be overwritten, but its encrypted data will remain inaccessible unless you recover it later."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/app/Activity;)V

    .line 465
    const-string v2, "Archive & create new"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;

    move-object v1, v7

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Landroid/app/Activity;Ljava/lang/String;)V

    .line 494
    const-string p1, "Back to recovery"

    invoke-virtual {v0, p1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 507
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 508
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 509
    const/4 p1, 0x1

    sput-boolean p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 510
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 511
    return-void

    .line 461
    :cond_1
    :goto_0
    return-void
.end method

.method private static showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 5

    .line 609
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 610
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 611
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 613
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 614
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 615
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 616
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

    .line 617
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 618
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;

    invoke-direct {v2, p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;-><init>(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 619
    const-string p1, "I saved it"

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$7;

    invoke-direct {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$7;-><init>()V

    .line 625
    const-string v2, "Cancel Local setup"

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 632
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 633
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 634
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 635
    return-void

    .line 609
    :cond_1
    :goto_0
    return-void
.end method

.method private static showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 6

    .line 417
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method private static showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 10

    .line 423
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 425
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 426
    const v1, 0x80091

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 427
    const-string v1, "Recovery code"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 428
    if-eqz p5, :cond_1

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_1
    new-instance p5, Landroid/app/AlertDialog$Builder;

    invoke-direct {p5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    const-string v1, "Recover Local Account"

    invoke-virtual {p5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p5

    .line 431
    const-string v1, "The device key is unavailable. Enter the recovery code saved during Local Account setup."

    invoke-virtual {p5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p5

    .line 432
    invoke-virtual {p5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p5

    new-instance v9, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Landroid/widget/EditText;)V

    .line 433
    const-string p4, "Recover"

    invoke-virtual {p5, p4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    new-instance p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;

    move-object v1, p5

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 445
    const-string p1, "Create new Local Account"

    invoke-virtual {p4, p1, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 452
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 453
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 454
    sput-boolean v8, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 455
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 456
    return-void

    .line 423
    :cond_2
    :goto_0
    return-void
.end method

.method private static showSignOutFailure(Landroid/app/Activity;)V
    .locals 3

    .line 1072
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1074
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Could not sign out safely"

    .line 1075
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "The Local Account session marker could not be saved. The application was not closed so the account is not silently reactivated."

    .line 1076
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Retry sign out"

    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;

    invoke-direct {v2, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;-><init>(Landroid/app/Activity;)V

    .line 1077
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Keep account active"

    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$11;

    invoke-direct {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$11;-><init>()V

    .line 1083
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1088
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1090
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 1091
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    goto :goto_0

    .line 1092
    :catchall_0
    move-exception v0

    .line 1093
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    .line 1094
    const-string v0, "Could not save the Local Account session marker. The account remains active."

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1096
    :goto_0
    return-void

    .line 1072
    :cond_1
    :goto_1
    return-void
.end method

.method public static signOut(Landroid/app/Activity;)V
    .locals 2

    .line 194
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeSignOutMarkers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showSignOutFailure(Landroid/app/Activity;)V

    .line 196
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 199
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 200
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 201
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 202
    if-eqz p0, :cond_1

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 204
    :goto_0
    nop

    .line 205
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 208
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 209
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 210
    return-void
.end method

.method private static storagePermissionGranted(Landroid/app/Activity;)Z
    .locals 2

    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    return p0

    .line 347
    :cond_0
    nop

    .line 348
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 349
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 348
    :goto_0
    return p0
.end method

.method private static storageReady(Landroid/app/Activity;)Z
    .locals 3

    .line 336
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storagePermissionGranted(Landroid/app/Activity;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 337
    :cond_0
    const-string p0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 338
    :cond_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object p0

    .line 339
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

    .line 340
    :cond_3
    nop

    .line 341
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 342
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

    .line 1068
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

    .line 1069
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

    .line 932
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 933
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

    .line 935
    :try_start_0
    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 936
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 938
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 940
    :cond_0
    return-void

    .line 936
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Atomic rename failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 939
    :cond_2
    throw p0

    .line 932
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Target already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeMarkers(ZZ)Z
    .locals 2

    .line 1037
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1038
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "local_account_session_active"

    .line 1039
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "local_signout_pending_intro"

    .line 1040
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1041
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    return p0

    .line 1042
    :catchall_0
    move-exception p0

    .line 1043
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

    .line 913
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 914
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

    .line 915
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

    .line 916
    nop

    .line 918
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 919
    invoke-static {v1, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 920
    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 921
    nop

    .line 922
    const/4 v2, 0x1

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 928
    nop

    .line 929
    return-void

    .line 922
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 920
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recovery artifact commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    :catchall_0
    move-exception p0

    .line 924
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 925
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 926
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 927
    :cond_2
    throw p0

    .line 913
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault target already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeSignOutMarkers()Z
    .locals 4

    .line 1023
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1024
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "local_account_session_active"

    .line 1025
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "local_signout_pending_intro"

    .line 1026
    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "KEY_FIRST_START"

    .line 1027
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED"

    .line 1028
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1029
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    return v0

    .line 1030
    :catchall_0
    move-exception v1

    .line 1031
    return v0
.end method

.method private static writeTemp(Ljava/io/File;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 957
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 959
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 960
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 961
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 964
    nop

    .line 965
    return-void

    .line 963
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 964
    throw p0
.end method
