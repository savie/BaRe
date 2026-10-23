.class public final enum Lnc1;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lnc1;

.field public static final enum KEY_BASED:Lnc1;

.field public static final enum USERNAME_PASSWORD:Lnc1;


# direct methods
.method private static final synthetic $values()[Lnc1;
    .locals 2

    .line 1
    sget-object v0, Lnc1;->USERNAME_PASSWORD:Lnc1;

    .line 2
    .line 3
    sget-object v1, Lnc1;->KEY_BASED:Lnc1;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lnc1;

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
    new-instance v0, Lnc1;

    .line 2
    .line 3
    const-string v1, "USERNAME_PASSWORD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lnc1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnc1;->USERNAME_PASSWORD:Lnc1;

    .line 10
    .line 11
    new-instance v0, Lnc1;

    .line 12
    .line 13
    const-string v1, "KEY_BASED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lnc1;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lnc1;->KEY_BASED:Lnc1;

    .line 20
    .line 21
    invoke-static {}, Lnc1;->$values()[Lnc1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lnc1;->$VALUES:[Lnc1;

    .line 26
    .line 27
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lnc1;->$ENTRIES:Ljx2;

    .line 32
    .line 33
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

.method private final getDisplayNameRes()I
    .locals 1

    .line 1
    sget-object v0, Lmc1;->a:[I

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
    const p0, 0x7f130082

    .line 16
    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    const p0, 0x7f130083

    .line 25
    .line 26
    .line 27
    return p0
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
    sget-object v0, Lnc1;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnc1;
    .locals 1

    .line 1
    const-class v0, Lnc1;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnc1;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnc1;
    .locals 1

    .line 1
    sget-object v0, Lnc1;->$VALUES:[Lnc1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnc1;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

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
    invoke-direct {p0}, Lnc1;->getDisplayNameRes()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method
