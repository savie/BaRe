.class public final enum Lar;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lar;

.field public static final enum STATUS_FAILURE:Lar;

.field public static final enum STATUS_FAILURE_ABORTED:Lar;

.field public static final enum STATUS_FAILURE_BLOCKED:Lar;

.field public static final enum STATUS_FAILURE_CONFLICT:Lar;

.field public static final enum STATUS_FAILURE_INCOMPATIBLE:Lar;

.field public static final enum STATUS_FAILURE_INVALID:Lar;

.field public static final enum STATUS_FAILURE_STORAGE:Lar;

.field public static final enum STATUS_PENDING_USER_ACTION:Lar;

.field public static final enum STATUS_SUCCESS:Lar;

.field public static final enum UNKNOWN:Lar;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lar;
    .locals 10

    .line 1
    sget-object v0, Lar;->UNKNOWN:Lar;

    .line 2
    .line 3
    sget-object v1, Lar;->STATUS_PENDING_USER_ACTION:Lar;

    .line 4
    .line 5
    sget-object v2, Lar;->STATUS_SUCCESS:Lar;

    .line 6
    .line 7
    sget-object v3, Lar;->STATUS_FAILURE:Lar;

    .line 8
    .line 9
    sget-object v4, Lar;->STATUS_FAILURE_BLOCKED:Lar;

    .line 10
    .line 11
    sget-object v5, Lar;->STATUS_FAILURE_ABORTED:Lar;

    .line 12
    .line 13
    sget-object v6, Lar;->STATUS_FAILURE_INVALID:Lar;

    .line 14
    .line 15
    sget-object v7, Lar;->STATUS_FAILURE_CONFLICT:Lar;

    .line 16
    .line 17
    sget-object v8, Lar;->STATUS_FAILURE_STORAGE:Lar;

    .line 18
    .line 19
    sget-object v9, Lar;->STATUS_FAILURE_INCOMPATIBLE:Lar;

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Lar;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lar;

    .line 2
    .line 3
    const/16 v1, -0x3e7

    .line 4
    .line 5
    const-string v2, "UNKNOWN"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lar;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lar;->UNKNOWN:Lar;

    .line 12
    .line 13
    new-instance v0, Lar;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    const-string v2, "STATUS_PENDING_USER_ACTION"

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v0, v2, v4, v1}, Lar;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lar;->STATUS_PENDING_USER_ACTION:Lar;

    .line 23
    .line 24
    new-instance v0, Lar;

    .line 25
    .line 26
    const-string v1, "STATUS_SUCCESS"

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-direct {v0, v1, v2, v3}, Lar;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lar;->STATUS_SUCCESS:Lar;

    .line 33
    .line 34
    new-instance v0, Lar;

    .line 35
    .line 36
    const-string v1, "STATUS_FAILURE"

    .line 37
    .line 38
    const/4 v3, 0x3

    .line 39
    invoke-direct {v0, v1, v3, v4}, Lar;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lar;->STATUS_FAILURE:Lar;

    .line 43
    .line 44
    new-instance v0, Lar;

    .line 45
    .line 46
    const-string v1, "STATUS_FAILURE_BLOCKED"

    .line 47
    .line 48
    const/4 v4, 0x4

    .line 49
    invoke-direct {v0, v1, v4, v2}, Lar;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lar;->STATUS_FAILURE_BLOCKED:Lar;

    .line 53
    .line 54
    new-instance v0, Lar;

    .line 55
    .line 56
    const-string v1, "STATUS_FAILURE_ABORTED"

    .line 57
    .line 58
    const/4 v2, 0x5

    .line 59
    invoke-direct {v0, v1, v2, v3}, Lar;-><init>(Ljava/lang/String;II)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lar;->STATUS_FAILURE_ABORTED:Lar;

    .line 63
    .line 64
    new-instance v0, Lar;

    .line 65
    .line 66
    const-string v1, "STATUS_FAILURE_INVALID"

    .line 67
    .line 68
    const/4 v3, 0x6

    .line 69
    invoke-direct {v0, v1, v3, v4}, Lar;-><init>(Ljava/lang/String;II)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lar;->STATUS_FAILURE_INVALID:Lar;

    .line 73
    .line 74
    new-instance v0, Lar;

    .line 75
    .line 76
    const-string v1, "STATUS_FAILURE_CONFLICT"

    .line 77
    .line 78
    const/4 v4, 0x7

    .line 79
    invoke-direct {v0, v1, v4, v2}, Lar;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lar;->STATUS_FAILURE_CONFLICT:Lar;

    .line 83
    .line 84
    new-instance v0, Lar;

    .line 85
    .line 86
    const-string v1, "STATUS_FAILURE_STORAGE"

    .line 87
    .line 88
    const/16 v2, 0x8

    .line 89
    .line 90
    invoke-direct {v0, v1, v2, v3}, Lar;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lar;->STATUS_FAILURE_STORAGE:Lar;

    .line 94
    .line 95
    new-instance v0, Lar;

    .line 96
    .line 97
    const-string v1, "STATUS_FAILURE_INCOMPATIBLE"

    .line 98
    .line 99
    const/16 v2, 0x9

    .line 100
    .line 101
    invoke-direct {v0, v1, v2, v4}, Lar;-><init>(Ljava/lang/String;II)V

    .line 102
    .line 103
    .line 104
    sput-object v0, Lar;->STATUS_FAILURE_INCOMPATIBLE:Lar;

    .line 105
    .line 106
    invoke-static {}, Lar;->$values()[Lar;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Lar;->$VALUES:[Lar;

    .line 111
    .line 112
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lar;->$ENTRIES:Ljx2;

    .line 117
    .line 118
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
    iput p3, p0, Lar;->code:I

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
    sget-object v0, Lar;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lar;
    .locals 1

    .line 1
    const-class v0, Lar;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lar;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lar;
    .locals 1

    .line 1
    sget-object v0, Lar;->$VALUES:[Lar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lar;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    .line 1
    iget p0, p0, Lar;->code:I

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget p0, p0, Lar;->code:I

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "("

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
