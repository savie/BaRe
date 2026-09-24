.class public final enum Lh28;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lh28;

.field public static final Companion:Lf28;

.field public static final enum DARK:Lh28;

.field private static final DEFAULT_THEME_MODE:Lh28;

.field public static final enum LIGHT:Lh28;

.field public static final enum SYSTEM_DEFAULT:Lh28;


# instance fields
.field private final themeId:I


# direct methods
.method private static final synthetic $values()[Lh28;
    .locals 3

    .line 1
    sget-object v0, Lh28;->LIGHT:Lh28;

    .line 2
    .line 3
    sget-object v1, Lh28;->DARK:Lh28;

    .line 4
    .line 5
    sget-object v2, Lh28;->SYSTEM_DEFAULT:Lh28;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lh28;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lh28;

    .line 2
    .line 3
    const-string v1, "LIGHT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lh28;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lh28;->LIGHT:Lh28;

    .line 10
    .line 11
    new-instance v0, Lh28;

    .line 12
    .line 13
    const-string v1, "DARK"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lh28;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lh28;->DARK:Lh28;

    .line 20
    .line 21
    new-instance v0, Lh28;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x3

    .line 25
    const-string v3, "SYSTEM_DEFAULT"

    .line 26
    .line 27
    invoke-direct {v0, v3, v1, v2}, Lh28;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lh28;->SYSTEM_DEFAULT:Lh28;

    .line 31
    .line 32
    invoke-static {}, Lh28;->$values()[Lh28;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sput-object v1, Lh28;->$VALUES:[Lh28;

    .line 37
    .line 38
    invoke-static {v1}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sput-object v1, Lh28;->$ENTRIES:Ljx2;

    .line 43
    .line 44
    new-instance v1, Lf28;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lh28;->Companion:Lf28;

    .line 50
    .line 51
    invoke-direct {v0}, Lh28;->getValidatedMode()Lh28;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lh28;->DEFAULT_THEME_MODE:Lh28;

    .line 56
    .line 57
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
    iput p3, p0, Lh28;->themeId:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getDEFAULT_THEME_MODE$cp()Lh28;
    .locals 1

    .line 1
    sget-object v0, Lh28;->DEFAULT_THEME_MODE:Lh28;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getValidatedMode(Lh28;)Lh28;
    .locals 0

    .line 1
    invoke-direct {p0}, Lh28;->getValidatedMode()Lh28;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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
    sget-object v0, Lh28;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method private final getValidatedMode()Lh28;
    .locals 2

    .line 1
    sget-object v0, Lh28;->SYSTEM_DEFAULT:Lh28;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1c

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lh28;->LIGHT:Lh28;

    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lh28;
    .locals 1

    .line 1
    const-class v0, Lh28;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lh28;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lh28;
    .locals 1

    .line 1
    sget-object v0, Lh28;->$VALUES:[Lh28;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lh28;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
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
    sget-object v1, Lg28;->a:[I

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
    const p0, 0x7f130566

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
    const p0, 0x7f1301d7

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const p0, 0x7f1302f3

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

.method public final getThemeId()I
    .locals 0

    .line 1
    iget p0, p0, Lh28;->themeId:I

    .line 2
    .line 3
    return p0
.end method
