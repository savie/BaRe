.class public final enum Lbd4;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lbd4;

.field public static final enum Internal:Lbd4;

.field public static final enum PackageInstaller:Lbd4;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lbd4;
    .locals 2

    .line 1
    sget-object v0, Lbd4;->PackageInstaller:Lbd4;

    .line 2
    .line 3
    sget-object v1, Lbd4;->Internal:Lbd4;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lbd4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lbd4;

    .line 2
    .line 3
    const-string v1, "PackageInstaller"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lbd4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lbd4;->PackageInstaller:Lbd4;

    .line 10
    .line 11
    new-instance v0, Lbd4;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const-string v2, "SwiftBackup"

    .line 15
    .line 16
    const-string v3, "Internal"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lbd4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lbd4;->Internal:Lbd4;

    .line 22
    .line 23
    invoke-static {}, Lbd4;->$values()[Lbd4;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lbd4;->$VALUES:[Lbd4;

    .line 28
    .line 29
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lbd4;->$ENTRIES:Ljx2;

    .line 34
    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lbd4;->displayName:Ljava/lang/String;

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
    sget-object v0, Lbd4;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbd4;
    .locals 1

    .line 1
    const-class v0, Lbd4;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbd4;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lbd4;
    .locals 1

    .line 1
    sget-object v0, Lbd4;->$VALUES:[Lbd4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lbd4;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lbd4;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
