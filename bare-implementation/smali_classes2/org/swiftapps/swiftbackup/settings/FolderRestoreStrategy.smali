.class public final enum Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

.field public static final Companion:Ltn3;

.field public static final enum FULL_RESTORE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

.field public static final enum MISSING_ONLY:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

.field public static final enum OVERWRITE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;


# instance fields
.field private final descriptionStringRes:I

.field private final titleStringRes:I


# direct methods
.method private static final synthetic $values()[Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;
    .locals 3

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->MISSING_ONLY:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->OVERWRITE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 4
    .line 5
    sget-object v2, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->FULL_RESTORE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 2
    .line 3
    const v1, 0x7f130279

    .line 4
    .line 5
    .line 6
    const v2, 0x7f13027a

    .line 7
    .line 8
    .line 9
    const-string v3, "MISSING_ONLY"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;-><init>(Ljava/lang/String;III)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->MISSING_ONLY:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 16
    .line 17
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 18
    .line 19
    const v1, 0x7f13027b

    .line 20
    .line 21
    .line 22
    const v2, 0x7f13027c

    .line 23
    .line 24
    .line 25
    const-string v3, "OVERWRITE"

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;-><init>(Ljava/lang/String;III)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->OVERWRITE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 32
    .line 33
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 34
    .line 35
    const v1, 0x7f130277

    .line 36
    .line 37
    .line 38
    const v2, 0x7f130278

    .line 39
    .line 40
    .line 41
    const-string v3, "FULL_RESTORE"

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;-><init>(Ljava/lang/String;III)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->FULL_RESTORE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 48
    .line 49
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->$values()[Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->$VALUES:[Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 54
    .line 55
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->$ENTRIES:Ljx2;

    .line 60
    .line 61
    new-instance v0, Ltn3;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->Companion:Ltn3;

    .line 67
    .line 68
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->titleStringRes:I

    .line 5
    .line 6
    iput p4, p0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->descriptionStringRes:I

    .line 7
    .line 8
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
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;
    .locals 1

    .line 1
    const-class v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->$VALUES:[Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptionStringRes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->descriptionStringRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTitleStringRes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->titleStringRes:I

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
    const-string v1, "checked_restore_strategy_6_"

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
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->Companion:Ltn3;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->MISSING_ONLY:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

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

.method public final setCheckedInExpansion(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checked_restore_strategy_6_"

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
