.class public final Lcom/bareapps/barebackup/localaccount/LocalAccountVault;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;,
        Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;,
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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aad(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 906
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

    .line 56
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->archiveExistingArtifacts(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->setCachedLocalUser(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(ZZ)Z
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1302(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;
    .locals 0

    .line 56
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    return-object p0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0

    .line 56
    sput-boolean p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    return p0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0

    .line 56
    sput-boolean p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    return p0
.end method

.method static synthetic access$1700(Landroid/app/Activity;)V
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolve(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1800(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 56
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreArchivedArtifacts(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1900()V
    .locals 0

    .line 56
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cancelPendingSelection()V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$2100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->normalizeRecoveryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->commitEnrollment(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0

    .line 56
    sput-boolean p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    return p0
.end method

.method static synthetic access$2500(Landroid/app/Activity;F)I
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;F)I

    move-result p0

    return p0
.end method

.method static synthetic access$2602(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 56
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-static/range {p0 .. p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoverFromCode(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static/range {p0 .. p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->newLocalUser()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static activate(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 832
    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->setCachedLocalUser(Ljava/lang/Object;)V

    .line 833
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    const/4 v1, 0x0

    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 835
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 836
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 837
    sput-boolean p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 838
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 844
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 846
    :try_start_1
    const-string p1, "com.bareapps.barebackup.home.HomeActivity"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 847
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 848
    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 849
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 850
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 854
    goto :goto_1

    .line 851
    :catchall_1
    move-exception p1

    .line 852
    const-string v0, "LocalAccountVault"

    const-string v1, "Home navigation failed after local activation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    const-string p1, "local_account_ready_reopen"

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 856
    :cond_0
    :goto_1
    return-void

    .line 833
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

    .line 530
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v0

    .line 531
    new-instance v1, Ljava/io/File;

    const-string v2, "recovery-archive"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create recovery archive directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 535
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 538
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

    .line 539
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 540
    nop

    .line 541
    nop

    .line 543
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 544
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

    .line 547
    move v1, v2

    goto :goto_1

    .line 545
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot archive existing vault"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 543
    :cond_3
    move v1, p0

    .line 549
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 550
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

    .line 553
    move p0, v2

    goto :goto_2

    .line 551
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot archive existing recovery artifact"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
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

    .line 556
    :cond_7
    :goto_3
    return-object v0

    .line 557
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

    .line 558
    :goto_4
    if-eqz p0, :cond_8

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 559
    :cond_8
    if-eqz v1, :cond_9

    new-instance p0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 560
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 561
    throw v2

    .line 539
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create account archive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 536
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

    .line 617
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->randomBytes(I)[B

    move-result-object v4

    .line 618
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->randomBytes(I)[B

    move-result-object v5

    .line 619
    const/16 v0, 0xb

    invoke-static {v5, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 620
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;-><init>(Ljava/lang/Object;Ljava/lang/String;[B[BLjava/lang/String;)V

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 621
    sget-object p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    .line 622
    return-void
.end method

.method private static cachedLocalUser()Ljava/lang/Object;
    .locals 6

    .line 1034
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.bareapps.barebackup.common.V"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1035
    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1036
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

    .line 1037
    :catchall_0
    move-exception v1

    .line 1038
    return-object v0
.end method

.method public static canCompleteIntro()Z
    .locals 1

    .line 99
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

    .line 1083
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeSignOutMarkers()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1084
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 1085
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 1086
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 1087
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 1088
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->notifyAccountObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1089
    :goto_0
    return-void
.end method

.method private static candidateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 380
    const-string v0, "local-account-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 382
    :cond_0
    const-string v1, ".vault"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 383
    :cond_1
    const-string v1, ".recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 385
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

    .line 387
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

    .line 388
    :catchall_0
    move-exception p0

    .line 389
    return-object v2

    .line 384
    :cond_3
    return-object v2
.end method

.method private static clearDialogGate()V
    .locals 1

    .line 1098
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 1099
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 1100
    return-void
.end method

.method public static clearPendingIntro(Landroid/app/Activity;)Z
    .locals 3

    .line 119
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const-string v1, "local_account_choice_save_failed_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string v2, "local_account_choice_save_failed_message"

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return v0

    .line 124
    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 125
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 126
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 127
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 128
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

    .line 710
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v1

    .line 711
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

    .line 712
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

    .line 714
    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 715
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

    .line 716
    invoke-static {v10}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 717
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makePayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    .line 718
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->dek:[B

    iget-object v9, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    move-object v4, v2

    move-object v5, v10

    move-object v8, v11

    invoke-static/range {v3 .. v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;

    move-result-object v3

    .line 722
    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 724
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

    .line 725
    invoke-static {v6, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 724
    invoke-static {v11, v5, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 726
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v5, "payloadCiphertext"

    .line 727
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "payload"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 726
    invoke-static {v6, v5, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 728
    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    .line 729
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v6, "recoveryWrappedDek"

    .line 730
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "recovery"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 729
    invoke-static {v5, v6, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 731
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v5, "payloadCiphertext"

    .line 732
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v8, "payload"

    invoke-static {v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 731
    invoke-static {v6, v5, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    .line 734
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

    .line 735
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

    .line 736
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 737
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 736
    invoke-static {v5, v1, v6, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writePairAtomically(Ljava/io/File;[BLjava/io/File;[B)V

    .line 738
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v1

    .line 739
    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 740
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    .line 741
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 746
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->recovery:[B

    const-string v4, "AES"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "recoveryWrappedDek"

    .line 747
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v5, "recovery"

    invoke-static {v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 746
    invoke-static {v1, v2, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 748
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v2, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 749
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    const-string v4, "payload"

    invoke-static {v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 748
    invoke-static {v2, v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    iget-object v2, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    .line 750
    iget-object p1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->user:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 751
    const/4 p1, 0x0

    sput-object p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 752
    const-string p1, "local_account_ready"

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    monitor-exit v0

    return-void

    .line 742
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 743
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 744
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Post-write vault verification failed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 712
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault directory unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static confirmRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 5

    .line 668
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 669
    const v1, 0x80091

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 670
    const-string v1, "monospace"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 671
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 672
    const v1, 0x3d0f5c29    # 0.035f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLetterSpacing(F)V

    .line 673
    const-string v1, "local_account_recovery_code_hint"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 674
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 675
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 676
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 677
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->themedDialogBuilder(Landroid/app/Activity;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v1

    .line 678
    const-string v3, "local_account_confirm_recovery_title"

    invoke-static {p0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v1

    .line 679
    const-string v3, "local_account_confirm_recovery_message"

    invoke-static {p0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v1

    .line 680
    invoke-virtual {v1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setView(Landroid/view/View;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v1

    .line 681
    const-string v3, "local_account_confirm_code_action"

    invoke-static {p0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;

    invoke-direct {v4, p1, v0, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$10;-><init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 697
    const-string v0, "local_account_cancel_setup"

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$9;

    invoke-direct {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$9;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 703
    invoke-virtual {p1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 704
    invoke-virtual {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->show()V

    .line 705
    const/4 p1, 0x1

    sput-boolean p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 706
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 707
    return-void
.end method

.method private static createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 859
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 860
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 861
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 862
    :cond_0
    const-string v3, "AES"

    invoke-static {v3, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 863
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 865
    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 866
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 867
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 868
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 869
    invoke-virtual {v0, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 870
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 871
    invoke-virtual {v1, p0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method private static decode(Ljava/lang/String;)[B
    .locals 1

    .line 925
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

    .line 894
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 895
    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 896
    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    .line 897
    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 898
    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    const-string p1, "AES/GCM/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 900
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 901
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 902
    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 894
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

    .line 1018
    const-string v0, "w14"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1019
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1020
    const-string v2, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1021
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

.method private static dp(Landroid/app/Activity;F)I
    .locals 0

    .line 1140
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

    .line 929
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

    .line 882
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 883
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 884
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 885
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 886
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 887
    array-length p2, p1

    array-length v0, p0

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 888
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    array-length p1, p1

    array-length v0, p0

    invoke-static {p0, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 890
    return-object p2
.end method

.method public static getPendingUser()Ljava/lang/Object;
    .locals 1

    .line 74
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

    .line 1025
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

    .line 86
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

    .line 1029
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

    .line 103
    sget-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 104
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    return v1

    .line 107
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isIntroPending()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 108
    :cond_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isLocalSessionInactive()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 110
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

    .line 111
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

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 114
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

    .line 371
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 372
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 373
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 374
    :catchall_0
    move-exception p0

    .line 375
    const/4 p0, 0x0

    return p0
.end method

.method public static isIntroPending()Z
    .locals 3

    .line 79
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

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public static isLocalSessionInactive()Z
    .locals 5

    .line 91
    const-string v0, "local_account_session_active"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 92
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

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    return v1
.end method

.method private static loadDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 875
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 876
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 877
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 878
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

    .line 806
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 807
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 808
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 809
    const-string p0, "legacyUid"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    const-string p0, "userJson"

    invoke-static {p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->serializeUser(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 811
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

    .line 795
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 796
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 797
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string p1, "algorithm"

    const-string v1, "AES-256-GCM"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
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

    .line 801
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

    .line 802
    return-object v0
.end method

.method private static makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 783
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 784
    const-string v1, "schemaVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 785
    const-string v1, "localAccountId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    const-string v1, "legacyUid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    const-string v1, "algorithm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    const-string v1, "payloadCiphertext"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 789
    const-string v1, "recoveryWrappedDek"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 790
    return-object v0
.end method

.method private static makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 758
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 759
    const-string v1, "schemaVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 760
    const-string v1, "localAccountId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    const-string p1, "deviceKeyAlias"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 763
    const-string p1, "algorithm"

    const-string v1, "AES-256-GCM"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 764
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

    .line 765
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

    .line 766
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

    .line 767
    return-object v0
.end method

.method private static matchesLegacyCache(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 826
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 828
    :cond_0
    invoke-static {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 827
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

    .line 1003
    const-string v0, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1004
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

    .line 1006
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v11, ""

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1007
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1008
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

    .line 1007
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeRecoveryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 916
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 917
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 918
    const-string v1, "\u200b"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u200c"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 919
    const-string v1, "\u200d"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\ufeff"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 920
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

    .line 921
    return-object p0
.end method

.method private static notifyAccountObservers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1092
    const-string v0, "d45"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1093
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1094
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    return-void
.end method

.method public static onPermissionReturn(Landroid/app/Activity;)V
    .locals 1

    .line 155
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storagePermissionGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->requestStoragePermission(Landroid/app/Activity;)V

    .line 158
    return-void

    .line 160
    :cond_1
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolve(Landroid/app/Activity;)V

    .line 161
    return-void

    .line 155
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

    .line 815
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 816
    const-string p0, "schemaVersion"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 817
    const-string p0, "localAccountId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 818
    const-string v1, "legacyUid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 819
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 820
    const-string p1, "userJson"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->deserializeUser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 821
    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->getUid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    invoke-direct {v0, p1, p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 821
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Identity payload mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 819
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "LocalAccountId mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 816
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

    .line 1050
    const-string v0, "cz4"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1051
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1052
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1053
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static randomBytes(I)[B
    .locals 1

    .line 910
    new-array p0, p0, [B

    .line 911
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 912
    return-object p0
.end method

.method private static readBytes(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 933
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 934
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 935
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 937
    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    .line 939
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

    .line 941
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 942
    nop

    .line 943
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 941
    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 942
    throw p0

    .line 933
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Vault file too large"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 395
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

    .line 396
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 397
    const-string p0, "schemaVersion"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    return-object v0

    .line 398
    :cond_1
    const-string p0, "localAccountId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 399
    :cond_2
    const-string p0, "legacyUid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 400
    :cond_3
    const-string p0, "AES-256-GCM"

    const-string p1, "algorithm"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    .line 401
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

    .line 402
    :cond_5
    return-object v1

    .line 401
    :cond_6
    :goto_0
    return-object v0

    .line 395
    :cond_7
    :goto_1
    return-object v0

    .line 403
    :catchall_0
    move-exception p0

    .line 404
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

    .line 576
    :try_start_0
    invoke-static {p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->normalizeRecoveryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 577
    invoke-static {p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 578
    array-length p5, v7

    const/16 v1, 0x20

    if-ne p5, v1, :cond_6

    .line 579
    new-instance p5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p5, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 580
    const-string v1, "recoveryWrappedDek"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "recovery"

    .line 581
    invoke-static {p1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 580
    invoke-static {p5, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v4

    .line 582
    new-instance p5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p5, v4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 583
    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "payload"

    invoke-static {p1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 582
    invoke-static {p5, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 584
    invoke-static {v5, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p5

    .line 585
    const-string v1, "legacyUid"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v1, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 586
    iget-object p4, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchesLegacyCache(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 587
    const-string p1, "local_account_mismatch_title"

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "local_account_recovery_mismatch_message"

    .line 588
    invoke-static {p0, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 587
    invoke-static {p0, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit v0

    return-void

    .line 592
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

    .line 593
    invoke-static {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->createDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 594
    iget-object v2, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeVaultEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjavax/crypto/SecretKey;[B)Lorg/json/JSONObject;

    move-result-object p4

    .line 599
    invoke-static {p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 600
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p2, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    .line 601
    invoke-static {p2, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 602
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 603
    :goto_0
    iget-object v3, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {v2, p4, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 604
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

    .line 605
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p3, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 607
    :cond_3
    :goto_1
    invoke-static {p2, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p4

    .line 608
    if-eqz p4, :cond_4

    iget-object v1, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    iget-object p4, p4, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 609
    invoke-static {p3, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p2, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 612
    iget-object p1, p5, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 613
    const-string p1, "local_account_restored"

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    monitor-exit v0

    return-void

    .line 610
    :cond_4
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Recovered vault verification failed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 585
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Legacy UID mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 578
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid recovery code"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 575
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 5

    .line 771
    const-string v0, "recoveryWrappedDek"

    const-string v1, "payloadCiphertext"

    const-string v2, "localAccountId"

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 773
    :cond_0
    :try_start_0
    const-string v4, "legacyUid"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 774
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 775
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 776
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

    .line 773
    :goto_0
    return v3

    .line 777
    :catchall_0
    move-exception p0

    .line 778
    return v3

    .line 771
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

    .line 978
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

    .line 979
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 980
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

    .line 982
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 983
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    :cond_2
    nop

    .line 989
    return-void

    .line 984
    :catchall_0
    move-exception p1

    .line 985
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 986
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 987
    :cond_4
    throw p1
.end method

.method private static requestStoragePermission(Landroid/app/Activity;)V
    .locals 3

    .line 164
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 166
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->themedDialogBuilder(Landroid/app/Activity;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 167
    const-string v1, "local_account_storage_access_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 168
    const-string v1, "local_account_storage_access_message"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 169
    const-string v1, "local_account_open_settings"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;

    invoke-direct {v2, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 186
    const-string v1, "local_account_not_now"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$1;

    invoke-direct {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->show()V

    .line 193
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 194
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    goto :goto_0

    .line 195
    :cond_1
    nop

    .line 196
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbae

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 203
    :goto_0
    return-void

    .line 164
    :cond_2
    :goto_1
    return-void
.end method

.method private static declared-synchronized resolve(Landroid/app/Activity;)V
    .locals 11

    const-class v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;

    monitor-enter v0

    .line 225
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

    .line 226
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    .line 228
    :cond_1
    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v1, :cond_23

    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    if-nez v1, :cond_23

    sget-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    if-eqz v1, :cond_2

    goto/16 :goto_b

    .line 229
    :cond_2
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storageReady(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    const-string v1, "local_account_storage_unavailable_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_account_storage_unavailable_message"

    .line 231
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    monitor-exit v0

    return-void

    .line 236
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_5

    .line 238
    :cond_4
    const-string v1, "local_account_data_read_failed_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_account_data_read_failed_message"

    .line 239
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    monitor-exit v0

    return-void

    .line 243
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

    .line 244
    :goto_0
    if-nez v2, :cond_7

    .line 245
    const-string v1, "local_account_data_check_failed_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_account_data_check_failed_message"

    .line 246
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    monitor-exit v0

    return-void

    .line 250
    :cond_7
    :try_start_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 251
    nop

    .line 252
    nop

    .line 253
    array-length v5, v2

    move v6, v3

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v3, v5, :cond_d

    aget-object v9, v2, v3

    .line 254
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 255
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

    .line 256
    :cond_8
    nop

    .line 257
    move v7, v8

    goto :goto_2

    .line 259
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

    .line 260
    :cond_a
    invoke-static {v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->candidateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 261
    if-nez v9, :cond_b

    move v6, v8

    goto :goto_2

    .line 262
    :cond_b
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 265
    :cond_d
    if-eqz v6, :cond_e

    .line 266
    const-string v1, "local_account_data_attention_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_account_data_attention_message"

    .line 267
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    monitor-exit v0

    return-void

    .line 270
    :cond_e
    if-eqz v7, :cond_f

    .line 271
    :try_start_4
    const-string v1, "local_account_setup_attention_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_account_setup_attention_message"

    .line 272
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    monitor-exit v0

    return-void

    .line 275
    :cond_f
    :try_start_5
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v8, :cond_10

    .line 276
    const-string v1, "local_account_multiple_found_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_account_multiple_found_message"

    .line 277
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 278
    monitor-exit v0

    return-void

    .line 281
    :cond_10
    :try_start_6
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v8, :cond_1e

    .line 282
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 283
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

    .line 284
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

    .line 285
    invoke-static {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isDirectChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isDirectChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 286
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 287
    :cond_11
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_7

    .line 292
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

    .line 293
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {v4, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->readEnvelope(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_4

    :cond_14
    move-object v6, v5

    .line 294
    :goto_4
    if-nez v1, :cond_15

    if-nez v6, :cond_15

    .line 295
    invoke-static {p0, v2, v3, v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 296
    monitor-exit v0

    return-void

    .line 299
    :cond_15
    if-eqz v1, :cond_19

    .line 300
    :try_start_7
    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object v7

    .line 301
    if-eqz v7, :cond_19

    .line 302
    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->matchesLegacyCache(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 303
    const-string v1, "local_account_mismatch_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_account_mismatch_message"

    .line 304
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 305
    monitor-exit v0

    return-void

    .line 307
    :cond_16
    :try_start_8
    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->uid:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->recoveryMatchesVault(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 308
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->makeRecoveryEnvelopeFromVault(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 310
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->replaceAtomically(Ljava/io/File;[B)V

    goto :goto_5

    .line 311
    :cond_17
    invoke-static {v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeAtomically(Ljava/io/File;[B)V

    .line 313
    :cond_18
    :goto_5
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;->user:Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->activate(Landroid/app/Activity;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 314
    monitor-exit v0

    return-void

    .line 318
    :cond_19
    if-eqz v6, :cond_1a

    move-object v1, v6

    .line 319
    :cond_1a
    if-eqz v1, :cond_1c

    :try_start_9
    const-string v6, "recoveryWrappedDek"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_6

    .line 323
    :cond_1b
    invoke-static {p0, v2, v3, v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 324
    monitor-exit v0

    return-void

    .line 320
    :cond_1c
    :goto_6
    :try_start_a
    invoke-static {p0, v2, v3, v4, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 321
    monitor-exit v0

    return-void

    .line 288
    :cond_1d
    :goto_7
    :try_start_b
    const-string v1, "local_account_data_access_failed_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_account_data_access_failed_message"

    .line 289
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 290
    monitor-exit v0

    return-void

    .line 327
    :cond_1e
    :try_start_c
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_1f

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_8

    :cond_1f
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 329
    :goto_8
    if-nez v1, :cond_20

    .line 330
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->newLocalUser()Ljava/lang/Object;

    move-result-object v1

    .line 331
    sput-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 333
    :cond_20
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->isAnonymous(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 334
    const-string v1, "local_account_verify_failed_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_account_verify_failed_message"

    .line 335
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 336
    monitor-exit v0

    return-void

    .line 338
    :cond_21
    :try_start_d
    sget-object v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    if-nez v2, :cond_22

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->beginEnrollment(Landroid/app/Activity;Ljava/lang/Object;)V

    goto :goto_9

    .line 339
    :cond_22
    sget-object v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 343
    :goto_9
    goto :goto_a

    .line 340
    :catchall_0
    move-exception v1

    .line 341
    :try_start_e
    const-string v1, "local_account_check_failed_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_account_check_failed_message"

    .line 342
    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-static {p0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 344
    :goto_a
    monitor-exit v0

    return-void

    .line 228
    :cond_23
    :goto_b
    monitor-exit v0

    return-void

    .line 224
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static restoreArchivedArtifacts(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 566
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 568
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 570
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 571
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 572
    return-void

    .line 566
    :cond_3
    :goto_0
    return-void
.end method

.method private static restoreWithDeviceKey(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;
    .locals 6

    .line 410
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "deviceKeyAlias"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->loadDeviceKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 412
    if-nez v2, :cond_0

    return-object v0

    .line 413
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

    .line 414
    invoke-static {p1, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 413
    invoke-static {v2, v3, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 415
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "payloadCiphertext"

    .line 416
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "payload"

    invoke-static {p1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->aad(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 415
    invoke-static {v2, v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v1

    .line 417
    invoke-static {v1, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->parsePayload([BLjava/lang/String;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Restored;

    move-result-object p1

    .line 418
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

    .line 419
    :cond_1
    return-object p1

    .line 420
    :catchall_0
    move-exception p0

    .line 421
    return-object v0
.end method

.method private static rootDirectory()Ljava/io/File;
    .locals 2

    .line 366
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/B\u039bR\u2630/accounts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1375
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1376
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1377
    int-to-float p0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1378
    if-lez p3, :cond_0

    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1379
    :cond_0
    return-object v0
.end method

.method public static selectLocal(Landroid/app/Activity;)V
    .locals 4

    .line 132
    sget-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->onPermissionReturn(Landroid/app/Activity;)V

    .line 134
    return-void

    .line 136
    :cond_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->cachedLocalUser()Ljava/lang/Object;

    move-result-object v0

    .line 138
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

    .line 145
    nop

    .line 146
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 147
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 148
    invoke-static {v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeMarkers(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    const-string v0, "local_account_continue_failed_title"

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "local_account_continue_failed_message"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_2
    return-void

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    sput-boolean v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 141
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 142
    const-string v0, "local_account_setup_failed_title"

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "local_account_setup_failed_message"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {p0, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private static serializeUser(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1012
    const-string v0, "w14"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1013
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "c"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1014
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

    .line 1043
    const-string v0, "com.bareapps.barebackup.common.V"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1044
    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1045
    const-string v2, "com.bareapps.barebackup.anonymous.MFirebaseUser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1046
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

    .line 1047
    return-void
.end method

.method private static showError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1383
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1385
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->themedDialogBuilder(Landroid/app/Activity;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 1386
    invoke-virtual {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 1387
    invoke-virtual {p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    const-string v0, "local_account_cancel_setup"

    .line 1388
    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$13;

    invoke-direct {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$13;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 1394
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 1395
    invoke-virtual {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->show()V

    .line 1396
    const/4 p1, 0x1

    sput-boolean p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 1397
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    goto :goto_0

    .line 1398
    :catchall_0
    move-exception p1

    .line 1399
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    .line 1400
    invoke-static {p0, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1402
    :goto_0
    return-void

    .line 1383
    :cond_1
    :goto_1
    return-void
.end method

.method private static showNewAccountConfirmation(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    .line 477
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->themedDialogBuilder(Landroid/app/Activity;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 479
    const-string v1, "local_account_new_setup_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 480
    const-string v1, "local_account_new_setup_message"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 481
    const-string v1, "local_account_new_setup_action"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;

    invoke-direct {v2, p1, p2, p3, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$6;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 510
    const-string v1, "local_account_retry_recovery"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$5;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 523
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 524
    invoke-virtual {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->show()V

    .line 525
    const/4 p1, 0x1

    sput-boolean p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 526
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 527
    return-void

    .line 477
    :cond_1
    :goto_0
    return-void
.end method

.method private static showRecoveryCode(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V
    .locals 6

    .line 625
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 626
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 627
    iget-object v1, p1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 629
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "font"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mono_bold"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 630
    const-string v3, "monospace"

    if-eqz v2, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    .line 632
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v2

    .line 634
    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 635
    :goto_0
    goto :goto_1

    .line 637
    :cond_1
    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 639
    :goto_1
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 640
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 641
    const v2, 0x3d3851ec    # 0.045f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 642
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f8a3d71    # 1.08f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 643
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {p0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;F)I

    move-result v5

    invoke-static {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dp(Landroid/app/Activity;F)I

    move-result v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 644
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 645
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->themedDialogBuilder(Landroid/app/Activity;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v3

    .line 646
    const-string v4, "local_account_save_recovery_title"

    invoke-static {p0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v3

    .line 647
    const-string v4, "local_account_save_recovery_message"

    invoke-static {p0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v3

    .line 648
    invoke-virtual {v3, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setView(Landroid/view/View;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 649
    const-string v3, "local_account_saved_code_action"

    invoke-static {p0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;

    invoke-direct {v4, p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$8;-><init>(Landroid/app/Activity;Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;)V

    invoke-virtual {v0, v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 655
    const-string v0, "local_account_cancel_setup"

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$7;

    invoke-direct {v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$7;-><init>()V

    invoke-virtual {p1, v0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 661
    invoke-virtual {p1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object p1

    .line 662
    invoke-virtual {p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->show()V

    .line 663
    sput-boolean v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 664
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 665
    return-void

    .line 625
    :cond_2
    :goto_2
    return-void
.end method

.method private static showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 6

    .line 428
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private static showRecoveryPrompt(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 13

    .line 434
    move-object v7, p0

    move-object/from16 v0, p5

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 435
    :cond_0
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 436
    const v1, 0x80091

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 437
    const-string v1, "monospace"

    const/4 v9, 0x0

    invoke-static {v1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 438
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 439
    const v1, 0x3d0f5c29    # 0.035f

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setLetterSpacing(F)V

    .line 440
    const-string v1, "local_account_recovery_code_hint"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 442
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 443
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 444
    if-eqz v0, :cond_1

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :cond_1
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->themedDialogBuilder(Landroid/app/Activity;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 446
    const-string v1, "local_account_restore_title"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 447
    const-string v1, "local_account_restore_message"

    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 448
    invoke-virtual {v0, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setView(Landroid/view/View;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v10

    .line 449
    const-string v0, "local_account_restore_action"

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/json/JSONObject;Landroid/widget/EditText;)V

    invoke-virtual {v10, v11, v12}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v6

    .line 461
    const-string v0, "local_account_new_setup_secondary"

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;

    move-object v0, v11

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$3;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v6, v10, v11}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 468
    invoke-virtual {v0, v9}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->show()V

    .line 470
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 471
    sput-object v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;

    .line 472
    return-void

    .line 434
    :cond_2
    :goto_0
    return-void
.end method

.method private static showSignOutFailure(Landroid/app/Activity;)V
    .locals 3

    .line 1113
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1115
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->themedDialogBuilder(Landroid/app/Activity;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    const-string v1, "local_account_signout_failed_title"

    .line 1116
    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    const-string v1, "local_account_signout_failed_message"

    .line 1117
    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    const-string v1, "local_account_try_again"

    .line 1118
    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;

    invoke-direct {v2, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$12;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    const-string v1, "local_account_stay_signed_in"

    .line 1124
    invoke-static {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$11;

    invoke-direct {v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$11;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 1129
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    move-result-object v0

    .line 1130
    invoke-virtual {v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->show()V

    .line 1131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogOpen:Z

    .line 1132
    sput-object p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->dialogActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    goto :goto_0

    .line 1133
    :catchall_0
    move-exception v0

    .line 1134
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->clearDialogGate()V

    .line 1135
    const-string v0, "local_account_signout_failed_toast"

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1137
    :goto_0
    return-void

    .line 1113
    :cond_1
    :goto_1
    return-void
.end method

.method public static signOut(Landroid/app/Activity;)V
    .locals 2

    .line 206
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeSignOutMarkers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->showSignOutFailure(Landroid/app/Activity;)V

    .line 208
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingUser:Ljava/lang/Object;

    .line 211
    sput-object v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->pendingEnrollment:Lcom/bareapps/barebackup/localaccount/LocalAccountVault$Enrollment;

    .line 212
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->localSelectionPending:Z

    .line 213
    sput-boolean v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->resolutionComplete:Z

    .line 214
    if-eqz p0, :cond_1

    .line 215
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 216
    :goto_0
    nop

    .line 217
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 220
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 221
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 222
    return-void
.end method

.method private static storagePermissionGranted(Landroid/app/Activity;)Z
    .locals 2

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    return p0

    .line 358
    :cond_0
    nop

    .line 359
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 360
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 359
    :goto_0
    return p0
.end method

.method private static storageReady(Landroid/app/Activity;)Z
    .locals 3

    .line 347
    invoke-static {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->storagePermissionGranted(Landroid/app/Activity;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 348
    :cond_0
    const-string p0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 349
    :cond_1
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->rootDirectory()Ljava/io/File;

    move-result-object p0

    .line 350
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

    .line 351
    :cond_3
    nop

    .line 352
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 353
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

.method private static themedDialogBuilder(Landroid/app/Activity;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 1

    .line 1144
    new-instance v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1109
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

    .line 1110
    :goto_0
    return-void
.end method

.method private static uiString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1103
    if-nez p0, :cond_0

    return-object p1

    .line 1104
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1105
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static writeAtomically(Ljava/io/File;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 967
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 968
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

    .line 970
    :try_start_0
    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 971
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 973
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 975
    :cond_0
    return-void

    .line 971
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Atomic rename failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 974
    :cond_2
    throw p0

    .line 967
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Target already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeMarkers(ZZ)Z
    .locals 2

    .line 1072
    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1073
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "local_account_session_active"

    .line 1074
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "local_signout_pending_intro"

    .line 1075
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1076
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    return p0

    .line 1077
    :catchall_0
    move-exception p0

    .line 1078
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

    .line 948
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 949
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

    .line 950
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

    .line 951
    nop

    .line 953
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 954
    invoke-static {v1, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->writeTemp(Ljava/io/File;[B)V

    .line 955
    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 956
    nop

    .line 957
    const/4 v2, 0x1

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 963
    nop

    .line 964
    return-void

    .line 957
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 955
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recovery artifact commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :catchall_0
    move-exception p0

    .line 959
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 960
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 961
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 962
    :cond_2
    throw p0

    .line 948
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Vault target already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeSignOutMarkers()Z
    .locals 4

    .line 1058
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1059
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "local_account_session_active"

    .line 1060
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "local_signout_pending_intro"

    .line 1061
    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "KEY_FIRST_START"

    .line 1062
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED"

    .line 1063
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1064
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    return v0

    .line 1065
    :catchall_0
    move-exception v1

    .line 1066
    return v0
.end method

.method private static writeTemp(Ljava/io/File;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 992
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 994
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 995
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 996
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 999
    nop

    .line 1000
    return-void

    .line 998
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 999
    throw p0
.end method
