.class public final enum Lis0;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lis0;

.field public static final Companion:Lhs0;

.field public static final enum Hide:Lis0;

.field public static final enum NoData:Lis0;


# instance fields
.field private final displayStringRes:I


# direct methods
.method private static final synthetic $values()[Lis0;
    .locals 2

    .line 1
    sget-object v0, Lis0;->Hide:Lis0;

    .line 2
    .line 3
    sget-object v1, Lis0;->NoData:Lis0;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lis0;

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
    new-instance v0, Lis0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x7f1300ca

    .line 5
    .line 6
    .line 7
    const-string v3, "Hide"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lis0;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lis0;->Hide:Lis0;

    .line 13
    .line 14
    new-instance v0, Lis0;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const v2, 0x7f1300cb

    .line 18
    .line 19
    .line 20
    const-string v3, "NoData"

    .line 21
    .line 22
    invoke-direct {v0, v3, v1, v2}, Lis0;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lis0;->NoData:Lis0;

    .line 26
    .line 27
    invoke-static {}, Lis0;->$values()[Lis0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lis0;->$VALUES:[Lis0;

    .line 32
    .line 33
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lis0;->$ENTRIES:Ljx2;

    .line 38
    .line 39
    new-instance v0, Lhs0;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lis0;->Companion:Lhs0;

    .line 45
    .line 46
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
    iput p3, p0, Lis0;->displayStringRes:I

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
    sget-object v0, Lis0;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lis0;
    .locals 1

    .line 1
    const-class v0, Lis0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lis0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lis0;
    .locals 1

    .line 1
    sget-object v0, Lis0;->$VALUES:[Lis0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lis0;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDisplayString()Ljava/lang/String;
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
    iget p0, p0, Lis0;->displayStringRes:I

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-object p0
.end method
