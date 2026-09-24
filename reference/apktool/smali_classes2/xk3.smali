.class public final enum Lxk3;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lxk3;

.field public static final enum BackupDate:Lxk3;

.field public static final Companion:Lwk3;

.field public static final enum Name:Lxk3;

.field public static final enum SetupDate:Lxk3;

.field private static final default:Lxk3;


# instance fields
.field private final stringRes:I


# direct methods
.method private static final synthetic $values()[Lxk3;
    .locals 3

    .line 1
    sget-object v0, Lxk3;->Name:Lxk3;

    .line 2
    .line 3
    sget-object v1, Lxk3;->BackupDate:Lxk3;

    .line 4
    .line 5
    sget-object v2, Lxk3;->SetupDate:Lxk3;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lxk3;

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
    new-instance v0, Lxk3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x7f1303a8

    .line 5
    .line 6
    .line 7
    const-string v3, "Name"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lxk3;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lxk3;->Name:Lxk3;

    .line 13
    .line 14
    new-instance v1, Lxk3;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const v3, 0x7f13009a

    .line 18
    .line 19
    .line 20
    const-string v4, "BackupDate"

    .line 21
    .line 22
    invoke-direct {v1, v4, v2, v3}, Lxk3;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lxk3;->BackupDate:Lxk3;

    .line 26
    .line 27
    new-instance v1, Lxk3;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const v3, 0x7f13027e

    .line 31
    .line 32
    .line 33
    const-string v4, "SetupDate"

    .line 34
    .line 35
    invoke-direct {v1, v4, v2, v3}, Lxk3;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lxk3;->SetupDate:Lxk3;

    .line 39
    .line 40
    invoke-static {}, Lxk3;->$values()[Lxk3;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sput-object v1, Lxk3;->$VALUES:[Lxk3;

    .line 45
    .line 46
    invoke-static {v1}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sput-object v1, Lxk3;->$ENTRIES:Ljx2;

    .line 51
    .line 52
    new-instance v1, Lwk3;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v1, Lxk3;->Companion:Lwk3;

    .line 58
    .line 59
    sput-object v0, Lxk3;->default:Lxk3;

    .line 60
    .line 61
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
    iput p3, p0, Lxk3;->stringRes:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getDefault$cp()Lxk3;
    .locals 1

    .line 1
    sget-object v0, Lxk3;->default:Lxk3;

    .line 2
    .line 3
    return-object v0
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
    sget-object v0, Lxk3;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lxk3;
    .locals 1

    .line 1
    const-class v0, Lxk3;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxk3;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lxk3;
    .locals 1

    .line 1
    sget-object v0, Lxk3;->$VALUES:[Lxk3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lxk3;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final displayString()Ljava/lang/String;
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
    iget p0, p0, Lxk3;->stringRes:I

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

.method public final getStringRes()I
    .locals 0

    .line 1
    iget p0, p0, Lxk3;->stringRes:I

    .line 2
    .line 3
    return p0
.end method
