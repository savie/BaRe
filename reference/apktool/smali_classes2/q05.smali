.class public final enum Lq05;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lq05;

.field public static final enum CLOUD:Lq05;

.field public static final Companion:Lo05;

.field public static final enum DEVICE:Lq05;


# direct methods
.method private static final synthetic $values()[Lq05;
    .locals 2

    .line 1
    sget-object v0, Lq05;->DEVICE:Lq05;

    .line 2
    .line 3
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lq05;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lq05;

    .line 2
    .line 3
    const-string v1, "DEVICE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lq05;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lq05;->DEVICE:Lq05;

    .line 10
    .line 11
    new-instance v0, Lq05;

    .line 12
    .line 13
    const-string v1, "CLOUD"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lq05;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lq05;->CLOUD:Lq05;

    .line 20
    .line 21
    invoke-static {}, Lq05;->$values()[Lq05;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lq05;->$VALUES:[Lq05;

    .line 26
    .line 27
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lq05;->$ENTRIES:Ljx2;

    .line 32
    .line 33
    new-instance v0, Lo05;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lq05;->Companion:Lo05;

    .line 39
    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
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
    sget-object v0, Lq05;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getIconRes$default(Lq05;ZILjava/lang/Object;)I
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
    invoke-virtual {p0, p1}, Lq05;->getIconRes(Z)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: getIconRes"

    .line 14
    .line 15
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lq05;
    .locals 1

    .line 1
    const-class v0, Lq05;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq05;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lq05;
    .locals 1

    .line 1
    sget-object v0, Lq05;->$VALUES:[Lq05;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lq05;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIconRes(Z)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x7f080129

    .line 3
    .line 4
    .line 5
    const v2, 0x7f080114

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    sget-object p1, Lp05;->a:[I

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    aget p0, p1, p0

    .line 19
    .line 20
    if-eq p0, v4, :cond_1

    .line 21
    .line 22
    if-ne p0, v3, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 26
    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    return v1

    .line 30
    :cond_2
    sget-object p1, Lp05;->a:[I

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    aget p0, p1, p0

    .line 37
    .line 38
    if-eq p0, v4, :cond_4

    .line 39
    .line 40
    if-ne p0, v3, :cond_3

    .line 41
    .line 42
    return v2

    .line 43
    :cond_3
    invoke-static {}, Lq;->j()V

    .line 44
    .line 45
    .line 46
    return v0

    .line 47
    :cond_4
    return v1
.end method

.method public final isCheckedInExpansion(I)Z
    .locals 1

    .line 1
    const-string v0, "checked_location_"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lq05;->isDevice()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    :try_start_0
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "prefs"

    .line 36
    .line 37
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :goto_0
    return p0
.end method

.method public final isCloud()Z
    .locals 1

    .line 1
    sget-object v0, Lq05;->CLOUD:Lq05;

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

.method public final isDevice()Z
    .locals 1

    .line 1
    sget-object v0, Lq05;->DEVICE:Lq05;

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

.method public final setCheckedInExpansion(IZ)V
    .locals 1

    .line 1
    const-string v0, "checked_location_"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const-string p0, "editor"

    .line 35
    .line 36
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    throw p0
.end method

.method public final toDisplayString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lp05;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 16
    .line 17
    const p0, 0x7f130106

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 31
    .line 32
    const p0, 0x7f1301fa

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
