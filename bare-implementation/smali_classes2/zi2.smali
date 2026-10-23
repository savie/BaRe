.class public abstract synthetic Lzi2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Liu;->values()[Liu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    sget-object v2, Liu;->APP:Liu;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    sput-object v0, Lzi2;->a:[I

    .line 18
    .line 19
    invoke-static {}, Lq05;->values()[Lq05;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    array-length v0, v0

    .line 24
    new-array v0, v0, [I

    .line 25
    .line 26
    :try_start_1
    sget-object v2, Lq05;->DEVICE:Lq05;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    :catch_1
    const/4 v2, 0x2

    .line 35
    :try_start_2
    sget-object v3, Lq05;->CLOUD:Lq05;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    aput v2, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 42
    .line 43
    :catch_2
    sput-object v0, Lzi2;->b:[I

    .line 44
    .line 45
    invoke-static {}, Lhk0;->values()[Lhk0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    array-length v0, v0

    .line 50
    new-array v0, v0, [I

    .line 51
    .line 52
    :try_start_3
    sget-object v3, Lhk0;->Apk:Lhk0;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    aput v1, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 59
    .line 60
    :catch_3
    :try_start_4
    sget-object v1, Lhk0;->SplitApks:Lhk0;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 67
    .line 68
    :catch_4
    :try_start_5
    sget-object v1, Lhk0;->SharedLibs:Lhk0;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/4 v2, 0x3

    .line 75
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 76
    .line 77
    :catch_5
    :try_start_6
    sget-object v1, Lhk0;->Data:Lhk0;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v2, 0x4

    .line 84
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 85
    .line 86
    :catch_6
    :try_start_7
    sget-object v1, Lhk0;->ExtData:Lhk0;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v2, 0x5

    .line 93
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 94
    .line 95
    :catch_7
    :try_start_8
    sget-object v1, Lhk0;->Media:Lhk0;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/4 v2, 0x6

    .line 102
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 103
    .line 104
    :catch_8
    :try_start_9
    sget-object v1, Lhk0;->Expansion:Lhk0;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const/4 v2, 0x7

    .line 111
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 112
    .line 113
    :catch_9
    :try_start_a
    sget-object v1, Lhk0;->SpecialData:Lhk0;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/16 v2, 0x8

    .line 120
    .line 121
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 122
    .line 123
    :catch_a
    sput-object v0, Lzi2;->c:[I

    .line 124
    .line 125
    return-void
.end method
