.class public final enum Lhk0;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lhk0;

.field public static final enum Apk:Lhk0;

.field public static final enum Data:Lhk0;

.field public static final enum Expansion:Lhk0;

.field public static final enum ExtData:Lhk0;

.field public static final enum Media:Lhk0;

.field public static final enum SharedLibs:Lhk0;

.field public static final enum SpecialData:Lhk0;

.field public static final enum SplitApks:Lhk0;


# direct methods
.method private static final synthetic $values()[Lhk0;
    .locals 8

    .line 1
    sget-object v0, Lhk0;->Apk:Lhk0;

    .line 2
    .line 3
    sget-object v1, Lhk0;->SplitApks:Lhk0;

    .line 4
    .line 5
    sget-object v2, Lhk0;->SharedLibs:Lhk0;

    .line 6
    .line 7
    sget-object v3, Lhk0;->Data:Lhk0;

    .line 8
    .line 9
    sget-object v4, Lhk0;->ExtData:Lhk0;

    .line 10
    .line 11
    sget-object v5, Lhk0;->Media:Lhk0;

    .line 12
    .line 13
    sget-object v6, Lhk0;->Expansion:Lhk0;

    .line 14
    .line 15
    sget-object v7, Lhk0;->SpecialData:Lhk0;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lhk0;

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
    new-instance v0, Lhk0;

    .line 2
    .line 3
    const-string v1, "Apk"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lhk0;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lhk0;->Apk:Lhk0;

    .line 10
    .line 11
    new-instance v0, Lhk0;

    .line 12
    .line 13
    const-string v1, "SplitApks"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lhk0;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lhk0;->SplitApks:Lhk0;

    .line 20
    .line 21
    new-instance v0, Lhk0;

    .line 22
    .line 23
    const-string v1, "SharedLibs"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lhk0;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lhk0;->SharedLibs:Lhk0;

    .line 30
    .line 31
    new-instance v0, Lhk0;

    .line 32
    .line 33
    const-string v1, "Data"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lhk0;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lhk0;->Data:Lhk0;

    .line 40
    .line 41
    new-instance v0, Lhk0;

    .line 42
    .line 43
    const-string v1, "ExtData"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lhk0;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lhk0;->ExtData:Lhk0;

    .line 50
    .line 51
    new-instance v0, Lhk0;

    .line 52
    .line 53
    const-string v1, "Media"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lhk0;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lhk0;->Media:Lhk0;

    .line 60
    .line 61
    new-instance v0, Lhk0;

    .line 62
    .line 63
    const-string v1, "Expansion"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lhk0;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lhk0;->Expansion:Lhk0;

    .line 70
    .line 71
    new-instance v0, Lhk0;

    .line 72
    .line 73
    const-string v1, "SpecialData"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lhk0;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lhk0;->SpecialData:Lhk0;

    .line 80
    .line 81
    invoke-static {}, Lhk0;->$values()[Lhk0;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lhk0;->$VALUES:[Lhk0;

    .line 86
    .line 87
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lhk0;->$ENTRIES:Ljx2;

    .line 92
    .line 93
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
    sget-object v0, Lhk0;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lhk0;
    .locals 1

    .line 1
    const-class v0, Lhk0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhk0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lhk0;
    .locals 1

    .line 1
    sget-object v0, Lhk0;->$VALUES:[Lhk0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lhk0;

    .line 8
    .line 9
    return-object v0
.end method
