.class public final enum Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

.field public static final Companion:Lfk3;

.field public static final enum Incremental:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

.field public static final enum Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;


# instance fields
.field private final descriptionStringRes:I

.field private final isPremium:Z

.field private final titleStringRes:I


# direct methods
.method private static final synthetic $values()[Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Incremental:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 2
    .line 3
    const v4, 0x7f130269

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v1, "Single"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const v3, 0x7f13026a

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;-><init>(Ljava/lang/String;IIIZ)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 17
    .line 18
    new-instance v1, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 19
    .line 20
    const v5, 0x7f130267

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    const-string v2, "Incremental"

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const v4, 0x7f130268

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;-><init>(Ljava/lang/String;IIIZ)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Incremental:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 34
    .line 35
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->$values()[Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->$VALUES:[Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 40
    .line 41
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->$ENTRIES:Ljx2;

    .line 46
    .line 47
    new-instance v0, Lfk3;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Companion:Lfk3;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->titleStringRes:I

    .line 5
    .line 6
    iput p4, p0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->descriptionStringRes:I

    .line 7
    .line 8
    iput-boolean p5, p0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->isPremium:Z

    .line 9
    .line 10
    return-void
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;
    .locals 1

    .line 1
    const-class v0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->$VALUES:[Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptionStringRes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->descriptionStringRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTitleStringRes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->titleStringRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final isCheckedInExpansion()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checked_backup_strategy_6_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Companion:Lfk3;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 21
    .line 22
    if-ne p0, v1, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    :try_start_0
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v0, "prefs"

    .line 37
    .line 38
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    :goto_1
    return p0
.end method

.method public final isPremium()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->isPremium:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSingleBackup()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final setCheckedInExpansion(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checked_backup_strategy_6_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "editor"

    .line 28
    .line 29
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method
