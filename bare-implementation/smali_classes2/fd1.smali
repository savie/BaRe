.class public final enum Lfd1;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lfd1;

.field public static final enum FTP:Lfd1;

.field public static final enum FTPS_EXPLICIT:Lfd1;

.field public static final enum FTPS_IMPLICIT:Lfd1;

.field public static final enum HTTP:Lfd1;

.field public static final enum HTTPS:Lfd1;

.field public static final enum SFTP:Lfd1;

.field public static final enum SMB:Lfd1;


# instance fields
.field private final defPort:I

.field private final displayName:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lfd1;
    .locals 7

    .line 1
    sget-object v0, Lfd1;->HTTP:Lfd1;

    .line 2
    .line 3
    sget-object v1, Lfd1;->HTTPS:Lfd1;

    .line 4
    .line 5
    sget-object v2, Lfd1;->FTP:Lfd1;

    .line 6
    .line 7
    sget-object v3, Lfd1;->FTPS_IMPLICIT:Lfd1;

    .line 8
    .line 9
    sget-object v4, Lfd1;->FTPS_EXPLICIT:Lfd1;

    .line 10
    .line 11
    sget-object v5, Lfd1;->SFTP:Lfd1;

    .line 12
    .line 13
    sget-object v6, Lfd1;->SMB:Lfd1;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lfd1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lfd1;

    .line 2
    .line 3
    const-string v4, "HTTP"

    .line 4
    .line 5
    const/16 v5, 0x50

    .line 6
    .line 7
    const-string v1, "HTTP"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "http"

    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Lfd1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lfd1;->HTTP:Lfd1;

    .line 16
    .line 17
    new-instance v1, Lfd1;

    .line 18
    .line 19
    const-string v5, "HTTPS"

    .line 20
    .line 21
    const/16 v6, 0x1bb

    .line 22
    .line 23
    const-string v2, "HTTPS"

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const-string v4, "https"

    .line 27
    .line 28
    invoke-direct/range {v1 .. v6}, Lfd1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lfd1;->HTTPS:Lfd1;

    .line 32
    .line 33
    new-instance v2, Lfd1;

    .line 34
    .line 35
    const-string v6, "FTP"

    .line 36
    .line 37
    const/16 v7, 0x15

    .line 38
    .line 39
    const-string v3, "FTP"

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    const-string v5, "ftp"

    .line 43
    .line 44
    invoke-direct/range {v2 .. v7}, Lfd1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v2, Lfd1;->FTP:Lfd1;

    .line 48
    .line 49
    new-instance v3, Lfd1;

    .line 50
    .line 51
    const-string v7, "FTPS (Implicit)"

    .line 52
    .line 53
    const/16 v8, 0x3de

    .line 54
    .line 55
    const-string v4, "FTPS_IMPLICIT"

    .line 56
    .line 57
    const/4 v5, 0x3

    .line 58
    const-string v6, "ftps"

    .line 59
    .line 60
    invoke-direct/range {v3 .. v8}, Lfd1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    sput-object v3, Lfd1;->FTPS_IMPLICIT:Lfd1;

    .line 64
    .line 65
    new-instance v4, Lfd1;

    .line 66
    .line 67
    const-string v8, "FTPES (Explicit)"

    .line 68
    .line 69
    const/16 v9, 0x15

    .line 70
    .line 71
    const-string v5, "FTPS_EXPLICIT"

    .line 72
    .line 73
    const/4 v6, 0x4

    .line 74
    const-string v7, "ftps"

    .line 75
    .line 76
    invoke-direct/range {v4 .. v9}, Lfd1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v4, Lfd1;->FTPS_EXPLICIT:Lfd1;

    .line 80
    .line 81
    new-instance v5, Lfd1;

    .line 82
    .line 83
    const-string v9, "SFTP"

    .line 84
    .line 85
    const/16 v10, 0x16

    .line 86
    .line 87
    const-string v6, "SFTP"

    .line 88
    .line 89
    const/4 v7, 0x5

    .line 90
    const-string v8, "sftp"

    .line 91
    .line 92
    invoke-direct/range {v5 .. v10}, Lfd1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    sput-object v5, Lfd1;->SFTP:Lfd1;

    .line 96
    .line 97
    new-instance v6, Lfd1;

    .line 98
    .line 99
    const-string v10, "SMB"

    .line 100
    .line 101
    const/16 v11, 0x1bd

    .line 102
    .line 103
    const-string v7, "SMB"

    .line 104
    .line 105
    const/4 v8, 0x6

    .line 106
    const-string v9, "smb"

    .line 107
    .line 108
    invoke-direct/range {v6 .. v11}, Lfd1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sput-object v6, Lfd1;->SMB:Lfd1;

    .line 112
    .line 113
    invoke-static {}, Lfd1;->$values()[Lfd1;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lfd1;->$VALUES:[Lfd1;

    .line 118
    .line 119
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sput-object v0, Lfd1;->$ENTRIES:Ljx2;

    .line 124
    .line 125
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lfd1;->scheme:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lfd1;->displayName:Ljava/lang/String;

    .line 7
    .line 8
    iput p5, p0, Lfd1;->defPort:I

    .line 9
    .line 10
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
    sget-object v0, Lfd1;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfd1;
    .locals 1

    .line 1
    const-class v0, Lfd1;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfd1;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lfd1;
    .locals 1

    .line 1
    sget-object v0, Lfd1;->$VALUES:[Lfd1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lfd1;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDefPort()I
    .locals 0

    .line 1
    iget p0, p0, Lfd1;->defPort:I

    .line 2
    .line 3
    return p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfd1;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfd1;->scheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
