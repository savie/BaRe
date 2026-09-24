.class public abstract Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Representation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;,
        Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;,
        Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$SingleBackup;
    }
.end annotation


# instance fields
.field private final maxNumOfBackups:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->maxNumOfBackups:I

    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;-><init>(I)V

    return-void
.end method

.method public static synthetic displaySubtitle$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->displaySubtitle(Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: displaySubtitle"

    .line 14
    .line 15
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public static synthetic displayTitle$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->displayTitle(Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: displayTitle"

    .line 14
    .line 15
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method


# virtual methods
.method public final displaySubtitle(Z)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$SingleBackup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const p0, 0x7f1303a4

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const p0, 0x7f1303a0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    instance-of p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;

    .line 18
    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    const p0, 0x7f1303a2

    .line 22
    .line 23
    .line 24
    :goto_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 27
    .line 28
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Lsz8;->u(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 50
    .line 51
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method

.method public final displayTitle(Z)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$SingleBackup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const p0, 0x7f1303a5

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const p0, 0x7f1303a1

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    instance-of p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;

    .line 18
    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    const p0, 0x7f1303a3

    .line 22
    .line 23
    .line 24
    :goto_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 27
    .line 28
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Lsz8;->u(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 50
    .line 51
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method

.method public getMaxNumOfBackups()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->maxNumOfBackups:I

    .line 2
    .line 3
    return p0
.end method

.method public final isMultipleBackups()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->isSingleBackup()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public final isPremium()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->isMultipleBackups()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->b()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/settings/f;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final isSingleBackup()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$SingleBackup;

    .line 2
    .line 3
    return p0
.end method

.method public final preferenceSummary()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->displayTitle$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;ZILjava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
