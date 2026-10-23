.class public final enum Lyu;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lyu;

.field public static final enum All:Lyu;

.field public static final Companion:Lwu;

.field public static final enum Granted:Lyu;

.field public static final enum None:Lyu;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Lyu;
    .locals 3

    .line 1
    sget-object v0, Lyu;->Granted:Lyu;

    .line 2
    .line 3
    sget-object v1, Lyu;->All:Lyu;

    .line 4
    .line 5
    sget-object v2, Lyu;->None:Lyu;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lyu;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lyu;

    .line 2
    .line 3
    const-string v1, "Granted"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lyu;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lyu;->Granted:Lyu;

    .line 10
    .line 11
    new-instance v0, Lyu;

    .line 12
    .line 13
    const-string v1, "All"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lyu;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lyu;->All:Lyu;

    .line 20
    .line 21
    new-instance v0, Lyu;

    .line 22
    .line 23
    const-string v1, "None"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lyu;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lyu;->None:Lyu;

    .line 30
    .line 31
    invoke-static {}, Lyu;->$values()[Lyu;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lyu;->$VALUES:[Lyu;

    .line 36
    .line 37
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lyu;->$ENTRIES:Ljx2;

    .line 42
    .line 43
    new-instance v0, Lwu;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lyu;->Companion:Lwu;

    .line 49
    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lyu;->id:I

    .line 5
    .line 6
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
    sget-object v0, Lyu;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lyu;
    .locals 1

    .line 1
    const-class v0, Lyu;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lyu;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lyu;
    .locals 1

    .line 1
    sget-object v0, Lyu;->$VALUES:[Lyu;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lyu;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final asDisplayString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lxu;->a:[I

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    aget p0, v1, p0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq p0, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq p0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne p0, v1, :cond_0

    .line 23
    .line 24
    const p0, 0x7f130470

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_1
    const p0, 0x7f13046e

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const p0, 0x7f13046f

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public final getGrantsAllSupportedPermissions()Z
    .locals 1

    .line 1
    sget-object v0, Lyu;->All:Lyu;

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

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lyu;->id:I

    .line 2
    .line 3
    return p0
.end method

.method public final getRestoresAnyPermissions()Z
    .locals 1

    .line 1
    sget-object v0, Lyu;->None:Lyu;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

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

.method public final getRestoresBackedUpPermissionChoices()Z
    .locals 1

    .line 1
    sget-object v0, Lyu;->Granted:Lyu;

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

.method public final getRestoresDeniedRuntimePermissionStates()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lyu;->getRestoresBackedUpPermissionChoices()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
