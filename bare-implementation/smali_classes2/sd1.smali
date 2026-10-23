.class public final enum Lsd1;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lsd1;

.field public static final enum ACCESS:Lsd1;

.field public static final enum BACKUP_SCAN:Lsd1;

.field public static final enum FIREBASE_BACKEND_ACCESS:Lsd1;

.field public static final enum INTERNET_CONNECTIVITY:Lsd1;

.field public static final enum LARGE_ROUND_TRIP:Lsd1;

.field public static final enum MULTITHREADED_DOWNLOAD:Lsd1;

.field public static final enum PROVIDER_TRANSFER_PIPELINE:Lsd1;

.field public static final enum SMALL_ROUND_TRIP:Lsd1;

.field public static final enum THUMBNAIL_DOWNLOAD:Lsd1;

.field public static final enum VERSION_UPLOAD:Lsd1;


# direct methods
.method private static final synthetic $values()[Lsd1;
    .locals 10

    .line 1
    sget-object v0, Lsd1;->INTERNET_CONNECTIVITY:Lsd1;

    .line 2
    .line 3
    sget-object v1, Lsd1;->FIREBASE_BACKEND_ACCESS:Lsd1;

    .line 4
    .line 5
    sget-object v2, Lsd1;->ACCESS:Lsd1;

    .line 6
    .line 7
    sget-object v3, Lsd1;->BACKUP_SCAN:Lsd1;

    .line 8
    .line 9
    sget-object v4, Lsd1;->SMALL_ROUND_TRIP:Lsd1;

    .line 10
    .line 11
    sget-object v5, Lsd1;->LARGE_ROUND_TRIP:Lsd1;

    .line 12
    .line 13
    sget-object v6, Lsd1;->PROVIDER_TRANSFER_PIPELINE:Lsd1;

    .line 14
    .line 15
    sget-object v7, Lsd1;->MULTITHREADED_DOWNLOAD:Lsd1;

    .line 16
    .line 17
    sget-object v8, Lsd1;->THUMBNAIL_DOWNLOAD:Lsd1;

    .line 18
    .line 19
    sget-object v9, Lsd1;->VERSION_UPLOAD:Lsd1;

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Lsd1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lsd1;

    .line 2
    .line 3
    const-string v1, "INTERNET_CONNECTIVITY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lsd1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lsd1;->INTERNET_CONNECTIVITY:Lsd1;

    .line 10
    .line 11
    new-instance v0, Lsd1;

    .line 12
    .line 13
    const-string v1, "FIREBASE_BACKEND_ACCESS"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lsd1;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lsd1;->FIREBASE_BACKEND_ACCESS:Lsd1;

    .line 20
    .line 21
    new-instance v0, Lsd1;

    .line 22
    .line 23
    const-string v1, "ACCESS"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lsd1;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lsd1;->ACCESS:Lsd1;

    .line 30
    .line 31
    new-instance v0, Lsd1;

    .line 32
    .line 33
    const-string v1, "BACKUP_SCAN"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lsd1;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lsd1;->BACKUP_SCAN:Lsd1;

    .line 40
    .line 41
    new-instance v0, Lsd1;

    .line 42
    .line 43
    const-string v1, "SMALL_ROUND_TRIP"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lsd1;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lsd1;->SMALL_ROUND_TRIP:Lsd1;

    .line 50
    .line 51
    new-instance v0, Lsd1;

    .line 52
    .line 53
    const-string v1, "LARGE_ROUND_TRIP"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lsd1;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lsd1;->LARGE_ROUND_TRIP:Lsd1;

    .line 60
    .line 61
    new-instance v0, Lsd1;

    .line 62
    .line 63
    const-string v1, "PROVIDER_TRANSFER_PIPELINE"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lsd1;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lsd1;->PROVIDER_TRANSFER_PIPELINE:Lsd1;

    .line 70
    .line 71
    new-instance v0, Lsd1;

    .line 72
    .line 73
    const-string v1, "MULTITHREADED_DOWNLOAD"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lsd1;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lsd1;->MULTITHREADED_DOWNLOAD:Lsd1;

    .line 80
    .line 81
    new-instance v0, Lsd1;

    .line 82
    .line 83
    const-string v1, "THUMBNAIL_DOWNLOAD"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lsd1;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lsd1;->THUMBNAIL_DOWNLOAD:Lsd1;

    .line 91
    .line 92
    new-instance v0, Lsd1;

    .line 93
    .line 94
    const-string v1, "VERSION_UPLOAD"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lsd1;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lsd1;->VERSION_UPLOAD:Lsd1;

    .line 102
    .line 103
    invoke-static {}, Lsd1;->$values()[Lsd1;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lsd1;->$VALUES:[Lsd1;

    .line 108
    .line 109
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sput-object v0, Lsd1;->$ENTRIES:Ljx2;

    .line 114
    .line 115
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
    sget-object v0, Lsd1;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsd1;
    .locals 1

    .line 1
    const-class v0, Lsd1;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lsd1;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lsd1;
    .locals 1

    .line 1
    sget-object v0, Lsd1;->$VALUES:[Lsd1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lsd1;

    .line 8
    .line 9
    return-object v0
.end method
