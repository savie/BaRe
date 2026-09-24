.class public final enum Lds8;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lds8;

.field public static final enum ACCESS_UNAVAILABLE:Lds8;

.field public static final enum API_INCOMPATIBLE:Lds8;

.field public static final enum BINDER_DEAD:Lds8;

.field public static final enum INCOMPLETE_CREDENTIALS:Lds8;

.field public static final enum LEGACY_READ_FAILED:Lds8;

.field public static final enum MAPPING_FAILED:Lds8;

.field public static final enum REMOTE_FAILURE:Lds8;

.field public static final enum RESULT_DECODE_FAILED:Lds8;

.field public static final enum ROOT_COPY_FAILED:Lds8;

.field public static final enum ROOT_PARSE_FAILED:Lds8;

.field public static final enum SECURITY_REJECTED:Lds8;

.field public static final enum SHIZUKU_PERMISSION_DENIED:Lds8;

.field public static final enum SHIZUKU_STOPPED:Lds8;

.field public static final enum SHIZUKU_UID_UNSUPPORTED:Lds8;


# direct methods
.method private static final synthetic $values()[Lds8;
    .locals 14

    .line 1
    sget-object v0, Lds8;->ACCESS_UNAVAILABLE:Lds8;

    .line 2
    .line 3
    sget-object v1, Lds8;->SHIZUKU_STOPPED:Lds8;

    .line 4
    .line 5
    sget-object v2, Lds8;->SHIZUKU_PERMISSION_DENIED:Lds8;

    .line 6
    .line 7
    sget-object v3, Lds8;->SHIZUKU_UID_UNSUPPORTED:Lds8;

    .line 8
    .line 9
    sget-object v4, Lds8;->BINDER_DEAD:Lds8;

    .line 10
    .line 11
    sget-object v5, Lds8;->SECURITY_REJECTED:Lds8;

    .line 12
    .line 13
    sget-object v6, Lds8;->API_INCOMPATIBLE:Lds8;

    .line 14
    .line 15
    sget-object v7, Lds8;->REMOTE_FAILURE:Lds8;

    .line 16
    .line 17
    sget-object v8, Lds8;->RESULT_DECODE_FAILED:Lds8;

    .line 18
    .line 19
    sget-object v9, Lds8;->LEGACY_READ_FAILED:Lds8;

    .line 20
    .line 21
    sget-object v10, Lds8;->ROOT_COPY_FAILED:Lds8;

    .line 22
    .line 23
    sget-object v11, Lds8;->ROOT_PARSE_FAILED:Lds8;

    .line 24
    .line 25
    sget-object v12, Lds8;->MAPPING_FAILED:Lds8;

    .line 26
    .line 27
    sget-object v13, Lds8;->INCOMPLETE_CREDENTIALS:Lds8;

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Lds8;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lds8;

    .line 2
    .line 3
    const-string v1, "ACCESS_UNAVAILABLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lds8;->ACCESS_UNAVAILABLE:Lds8;

    .line 10
    .line 11
    new-instance v0, Lds8;

    .line 12
    .line 13
    const-string v1, "SHIZUKU_STOPPED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lds8;->SHIZUKU_STOPPED:Lds8;

    .line 20
    .line 21
    new-instance v0, Lds8;

    .line 22
    .line 23
    const-string v1, "SHIZUKU_PERMISSION_DENIED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lds8;->SHIZUKU_PERMISSION_DENIED:Lds8;

    .line 30
    .line 31
    new-instance v0, Lds8;

    .line 32
    .line 33
    const-string v1, "SHIZUKU_UID_UNSUPPORTED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lds8;->SHIZUKU_UID_UNSUPPORTED:Lds8;

    .line 40
    .line 41
    new-instance v0, Lds8;

    .line 42
    .line 43
    const-string v1, "BINDER_DEAD"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lds8;->BINDER_DEAD:Lds8;

    .line 50
    .line 51
    new-instance v0, Lds8;

    .line 52
    .line 53
    const-string v1, "SECURITY_REJECTED"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lds8;->SECURITY_REJECTED:Lds8;

    .line 60
    .line 61
    new-instance v0, Lds8;

    .line 62
    .line 63
    const-string v1, "API_INCOMPATIBLE"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lds8;->API_INCOMPATIBLE:Lds8;

    .line 70
    .line 71
    new-instance v0, Lds8;

    .line 72
    .line 73
    const-string v1, "REMOTE_FAILURE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lds8;->REMOTE_FAILURE:Lds8;

    .line 80
    .line 81
    new-instance v0, Lds8;

    .line 82
    .line 83
    const-string v1, "RESULT_DECODE_FAILED"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lds8;->RESULT_DECODE_FAILED:Lds8;

    .line 91
    .line 92
    new-instance v0, Lds8;

    .line 93
    .line 94
    const-string v1, "LEGACY_READ_FAILED"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lds8;->LEGACY_READ_FAILED:Lds8;

    .line 102
    .line 103
    new-instance v0, Lds8;

    .line 104
    .line 105
    const-string v1, "ROOT_COPY_FAILED"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lds8;->ROOT_COPY_FAILED:Lds8;

    .line 113
    .line 114
    new-instance v0, Lds8;

    .line 115
    .line 116
    const-string v1, "ROOT_PARSE_FAILED"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lds8;->ROOT_PARSE_FAILED:Lds8;

    .line 124
    .line 125
    new-instance v0, Lds8;

    .line 126
    .line 127
    const-string v1, "MAPPING_FAILED"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lds8;->MAPPING_FAILED:Lds8;

    .line 135
    .line 136
    new-instance v0, Lds8;

    .line 137
    .line 138
    const-string v1, "INCOMPLETE_CREDENTIALS"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lds8;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lds8;->INCOMPLETE_CREDENTIALS:Lds8;

    .line 146
    .line 147
    invoke-static {}, Lds8;->$values()[Lds8;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, Lds8;->$VALUES:[Lds8;

    .line 152
    .line 153
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sput-object v0, Lds8;->$ENTRIES:Ljx2;

    .line 158
    .line 159
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
    sget-object v0, Lds8;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lds8;
    .locals 1

    .line 1
    const-class v0, Lds8;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lds8;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lds8;
    .locals 1

    .line 1
    sget-object v0, Lds8;->$VALUES:[Lds8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lds8;

    .line 8
    .line 9
    return-object v0
.end method
