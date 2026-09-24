.class public final enum Lb27;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lb27;

.field public static final enum BlockDevice:Lb27;

.field public static final enum CharacterDevice:Lb27;

.field public static final Companion:La27;

.field public static final enum Directory:Lb27;

.field public static final enum Fifo:Lb27;

.field public static final enum File:Lb27;

.field public static final enum Hardlink:Lb27;

.field public static final enum Other:Lb27;

.field public static final enum SymbolicLink:Lb27;


# direct methods
.method private static final synthetic $values()[Lb27;
    .locals 8

    .line 1
    sget-object v0, Lb27;->File:Lb27;

    .line 2
    .line 3
    sget-object v1, Lb27;->Directory:Lb27;

    .line 4
    .line 5
    sget-object v2, Lb27;->SymbolicLink:Lb27;

    .line 6
    .line 7
    sget-object v3, Lb27;->Hardlink:Lb27;

    .line 8
    .line 9
    sget-object v4, Lb27;->Fifo:Lb27;

    .line 10
    .line 11
    sget-object v5, Lb27;->CharacterDevice:Lb27;

    .line 12
    .line 13
    sget-object v6, Lb27;->BlockDevice:Lb27;

    .line 14
    .line 15
    sget-object v7, Lb27;->Other:Lb27;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lb27;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb27;

    .line 2
    .line 3
    const-string v1, "File"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lb27;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lb27;->File:Lb27;

    .line 10
    .line 11
    new-instance v0, Lb27;

    .line 12
    .line 13
    const-string v1, "Directory"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lb27;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lb27;->Directory:Lb27;

    .line 20
    .line 21
    new-instance v0, Lb27;

    .line 22
    .line 23
    const-string v1, "SymbolicLink"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lb27;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lb27;->SymbolicLink:Lb27;

    .line 30
    .line 31
    new-instance v0, Lb27;

    .line 32
    .line 33
    const-string v1, "Hardlink"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lb27;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lb27;->Hardlink:Lb27;

    .line 40
    .line 41
    new-instance v0, Lb27;

    .line 42
    .line 43
    const-string v1, "Fifo"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lb27;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lb27;->Fifo:Lb27;

    .line 50
    .line 51
    new-instance v0, Lb27;

    .line 52
    .line 53
    const-string v1, "CharacterDevice"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lb27;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lb27;->CharacterDevice:Lb27;

    .line 60
    .line 61
    new-instance v0, Lb27;

    .line 62
    .line 63
    const-string v1, "BlockDevice"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lb27;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lb27;->BlockDevice:Lb27;

    .line 70
    .line 71
    new-instance v0, Lb27;

    .line 72
    .line 73
    const-string v1, "Other"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lb27;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lb27;->Other:Lb27;

    .line 80
    .line 81
    invoke-static {}, Lb27;->$values()[Lb27;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lb27;->$VALUES:[Lb27;

    .line 86
    .line 87
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lb27;->$ENTRIES:Ljx2;

    .line 92
    .line 93
    new-instance v0, La27;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lb27;->Companion:La27;

    .line 99
    .line 100
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
    sget-object v0, Lb27;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lb27;
    .locals 1

    .line 1
    const-class v0, Lb27;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lb27;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lb27;
    .locals 1

    .line 1
    sget-object v0, Lb27;->$VALUES:[Lb27;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lb27;

    .line 8
    .line 9
    return-object v0
.end method
