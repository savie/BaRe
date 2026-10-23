.class public final enum Lw37;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lw37;

.field public static final enum AllowedApps:Lw37;

.field public static final enum AppParts:Lw37;

.field public static final enum BackupStrategy:Lw37;

.field public static final enum Config:Lw37;

.field public static final enum FolderMode:Lw37;

.field public static final enum Folders:Lw37;

.field public static final enum Labels:Lw37;

.field public static final enum Locations:Lw37;

.field public static final enum QuickActions:Lw37;

.field public static final enum RepeatDays:Lw37;

.field public static final enum SyncOptions:Lw37;


# direct methods
.method private static final synthetic $values()[Lw37;
    .locals 11

    .line 1
    sget-object v0, Lw37;->QuickActions:Lw37;

    .line 2
    .line 3
    sget-object v1, Lw37;->Labels:Lw37;

    .line 4
    .line 5
    sget-object v2, Lw37;->Config:Lw37;

    .line 6
    .line 7
    sget-object v3, Lw37;->AllowedApps:Lw37;

    .line 8
    .line 9
    sget-object v4, Lw37;->AppParts:Lw37;

    .line 10
    .line 11
    sget-object v5, Lw37;->Locations:Lw37;

    .line 12
    .line 13
    sget-object v6, Lw37;->SyncOptions:Lw37;

    .line 14
    .line 15
    sget-object v7, Lw37;->RepeatDays:Lw37;

    .line 16
    .line 17
    sget-object v8, Lw37;->Folders:Lw37;

    .line 18
    .line 19
    sget-object v9, Lw37;->FolderMode:Lw37;

    .line 20
    .line 21
    sget-object v10, Lw37;->BackupStrategy:Lw37;

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Lw37;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lw37;

    .line 2
    .line 3
    const-string v1, "QuickActions"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lw37;->QuickActions:Lw37;

    .line 10
    .line 11
    new-instance v0, Lw37;

    .line 12
    .line 13
    const-string v1, "Labels"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lw37;->Labels:Lw37;

    .line 20
    .line 21
    new-instance v0, Lw37;

    .line 22
    .line 23
    const-string v1, "Config"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lw37;->Config:Lw37;

    .line 30
    .line 31
    new-instance v0, Lw37;

    .line 32
    .line 33
    const-string v1, "AllowedApps"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lw37;->AllowedApps:Lw37;

    .line 40
    .line 41
    new-instance v0, Lw37;

    .line 42
    .line 43
    const-string v1, "AppParts"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lw37;->AppParts:Lw37;

    .line 50
    .line 51
    new-instance v0, Lw37;

    .line 52
    .line 53
    const-string v1, "Locations"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lw37;->Locations:Lw37;

    .line 60
    .line 61
    new-instance v0, Lw37;

    .line 62
    .line 63
    const-string v1, "SyncOptions"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lw37;->SyncOptions:Lw37;

    .line 70
    .line 71
    new-instance v0, Lw37;

    .line 72
    .line 73
    const-string v1, "RepeatDays"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lw37;->RepeatDays:Lw37;

    .line 80
    .line 81
    new-instance v0, Lw37;

    .line 82
    .line 83
    const-string v1, "Folders"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lw37;->Folders:Lw37;

    .line 91
    .line 92
    new-instance v0, Lw37;

    .line 93
    .line 94
    const-string v1, "FolderMode"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lw37;->FolderMode:Lw37;

    .line 102
    .line 103
    new-instance v0, Lw37;

    .line 104
    .line 105
    const-string v1, "BackupStrategy"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lw37;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lw37;->BackupStrategy:Lw37;

    .line 113
    .line 114
    invoke-static {}, Lw37;->$values()[Lw37;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lw37;->$VALUES:[Lw37;

    .line 119
    .line 120
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sput-object v0, Lw37;->$ENTRIES:Ljx2;

    .line 125
    .line 126
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
    sget-object v0, Lw37;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lw37;
    .locals 1

    .line 1
    const-class v0, Lw37;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lw37;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lw37;
    .locals 1

    .line 1
    sget-object v0, Lw37;->$VALUES:[Lw37;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lw37;

    .line 8
    .line 9
    return-object v0
.end method
