.class public final Lqx;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqx$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lqx;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lqx$a;


# instance fields
.field private final apkSize:J

.field private final cacheSize:J

.field private final dataSize:J

.field private final dataSizeNoCache$delegate:Los4;
    .annotation runtime Lx14;
    .end annotation
.end field

.field private final deDataCacheSize:J

.field private final deDataSize:J

.field private final deDataSizeNoCache$delegate:Los4;
    .annotation runtime Lx14;
    .end annotation
.end field

.field private final externalCacheSize:J

.field private final externalDataSize:J

.field private final externalDataSizeNoCache$delegate:Los4;
    .annotation runtime Lx14;
    .end annotation
.end field

.field private final externalObbSize:J

.field private final hasExternalData$delegate:Los4;
    .annotation runtime Lx14;
    .end annotation
.end field

.field private final hasMedia$delegate:Los4;
    .annotation runtime Lx14;
    .end annotation
.end field

.field private final mediaSize:J

.field private final sharedLibsSize:J

.field private final splitApksSize:J

.field private final total$delegate:Los4;
    .annotation runtime Lx14;
    .end annotation
.end field

.field private final totalSizeString$delegate:Los4;
    .annotation runtime Lx14;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqx$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lqx$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lqx;->Companion:Lqx$a;

    .line 8
    .line 9
    new-instance v0, Lqx$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lqx$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lqx;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 25

    const/16 v23, 0x7ff

    const/16 v24, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    .line 125
    invoke-direct/range {v0 .. v24}, Lqx;-><init>(JJJJJJJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lqx;->apkSize:J

    .line 5
    .line 6
    iput-wide p3, p0, Lqx;->splitApksSize:J

    .line 7
    .line 8
    iput-wide p5, p0, Lqx;->sharedLibsSize:J

    .line 9
    .line 10
    iput-wide p7, p0, Lqx;->dataSize:J

    .line 11
    .line 12
    iput-wide p9, p0, Lqx;->cacheSize:J

    .line 13
    .line 14
    iput-wide p11, p0, Lqx;->deDataSize:J

    .line 15
    .line 16
    iput-wide p13, p0, Lqx;->deDataCacheSize:J

    .line 17
    .line 18
    move-wide p1, p15

    .line 19
    iput-wide p1, p0, Lqx;->externalDataSize:J

    .line 20
    .line 21
    move-wide/from16 p1, p17

    .line 22
    .line 23
    iput-wide p1, p0, Lqx;->externalCacheSize:J

    .line 24
    .line 25
    move-wide/from16 p1, p19

    .line 26
    .line 27
    iput-wide p1, p0, Lqx;->mediaSize:J

    .line 28
    .line 29
    move-wide/from16 p1, p21

    .line 30
    .line 31
    iput-wide p1, p0, Lqx;->externalObbSize:J

    .line 32
    .line 33
    new-instance p1, Lbk;

    .line 34
    .line 35
    const/4 p2, 0x4

    .line 36
    invoke-direct {p1, p0, p2}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lgv7;

    .line 40
    .line 41
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lqx;->dataSizeNoCache$delegate:Los4;

    .line 45
    .line 46
    new-instance p1, Lck;

    .line 47
    .line 48
    const/4 p2, 0x6

    .line 49
    invoke-direct {p1, p0, p2}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Lgv7;

    .line 53
    .line 54
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Lqx;->deDataSizeNoCache$delegate:Los4;

    .line 58
    .line 59
    new-instance p1, Ldk;

    .line 60
    .line 61
    const/4 p2, 0x7

    .line 62
    invoke-direct {p1, p0, p2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Lgv7;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, Lqx;->externalDataSizeNoCache$delegate:Los4;

    .line 71
    .line 72
    new-instance p1, Lek;

    .line 73
    .line 74
    const/4 p2, 0x7

    .line 75
    invoke-direct {p1, p0, p2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Lgv7;

    .line 79
    .line 80
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lqx;->totalSizeString$delegate:Los4;

    .line 84
    .line 85
    new-instance p1, Lah;

    .line 86
    .line 87
    const/4 p2, 0x7

    .line 88
    invoke-direct {p1, p0, p2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    new-instance p2, Lgv7;

    .line 92
    .line 93
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 94
    .line 95
    .line 96
    iput-object p2, p0, Lqx;->total$delegate:Los4;

    .line 97
    .line 98
    new-instance p1, Lbh;

    .line 99
    .line 100
    const/4 p2, 0x7

    .line 101
    invoke-direct {p1, p0, p2}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    new-instance p2, Lgv7;

    .line 105
    .line 106
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 107
    .line 108
    .line 109
    iput-object p2, p0, Lqx;->hasExternalData$delegate:Los4;

    .line 110
    .line 111
    new-instance p1, Ld76;

    .line 112
    .line 113
    const/4 p2, 0x4

    .line 114
    invoke-direct {p1, p0, p2}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 115
    .line 116
    .line 117
    new-instance p2, Lgv7;

    .line 118
    .line 119
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 120
    .line 121
    .line 122
    iput-object p2, p0, Lqx;->hasMedia$delegate:Los4;

    .line 123
    .line 124
    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-wide v8, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-wide v10, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p7

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-wide v12, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v12, p9

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-wide v14, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v14, p11

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move-wide/from16 v16, v2

    goto :goto_6

    :cond_6
    move-wide/from16 v16, p13

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move-wide/from16 v18, v2

    goto :goto_7

    :cond_7
    move-wide/from16 v18, p15

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move-wide/from16 v20, v2

    goto :goto_8

    :cond_8
    move-wide/from16 v20, p17

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    move-wide/from16 v22, v2

    goto :goto_9

    :cond_9
    move-wide/from16 v22, p19

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    move-wide/from16 p22, v2

    :goto_a
    move-object/from16 p1, p0

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    move-wide/from16 p6, v8

    move-wide/from16 p8, v10

    move-wide/from16 p10, v12

    move-wide/from16 p12, v14

    move-wide/from16 p14, v16

    move-wide/from16 p16, v18

    move-wide/from16 p18, v20

    move-wide/from16 p20, v22

    goto :goto_b

    :cond_a
    move-wide/from16 p22, p21

    goto :goto_a

    .line 126
    :goto_b
    invoke-direct/range {p1 .. p23}, Lqx;-><init>(JJJJJJJJJJJ)V

    return-void
.end method

.method public static synthetic c(Lqx;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lqx;->hasMedia_delegate$lambda$0(Lqx;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic copy$default(Lqx;JJJJJJJJJJJILjava/lang/Object;)Lqx;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p23

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, v0, Lqx;->apkSize:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    iget-wide v4, v0, Lqx;->splitApksSize:J

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide/from16 v4, p3

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v6, v1, 0x4

    .line 24
    .line 25
    if-eqz v6, :cond_2

    .line 26
    .line 27
    iget-wide v6, v0, Lqx;->sharedLibsSize:J

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-wide/from16 v6, p5

    .line 31
    .line 32
    :goto_2
    and-int/lit8 v8, v1, 0x8

    .line 33
    .line 34
    if-eqz v8, :cond_3

    .line 35
    .line 36
    iget-wide v8, v0, Lqx;->dataSize:J

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move-wide/from16 v8, p7

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v10, v1, 0x10

    .line 42
    .line 43
    if-eqz v10, :cond_4

    .line 44
    .line 45
    iget-wide v10, v0, Lqx;->cacheSize:J

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move-wide/from16 v10, p9

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v12, v1, 0x20

    .line 51
    .line 52
    if-eqz v12, :cond_5

    .line 53
    .line 54
    iget-wide v12, v0, Lqx;->deDataSize:J

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-wide/from16 v12, p11

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v14, v1, 0x40

    .line 60
    .line 61
    if-eqz v14, :cond_6

    .line 62
    .line 63
    iget-wide v14, v0, Lqx;->deDataCacheSize:J

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move-wide/from16 v14, p13

    .line 67
    .line 68
    :goto_6
    move-wide/from16 v16, v2

    .line 69
    .line 70
    and-int/lit16 v2, v1, 0x80

    .line 71
    .line 72
    if-eqz v2, :cond_7

    .line 73
    .line 74
    iget-wide v2, v0, Lqx;->externalDataSize:J

    .line 75
    .line 76
    goto :goto_7

    .line 77
    :cond_7
    move-wide/from16 v2, p15

    .line 78
    .line 79
    :goto_7
    move-wide/from16 p1, v2

    .line 80
    .line 81
    and-int/lit16 v2, v1, 0x100

    .line 82
    .line 83
    if-eqz v2, :cond_8

    .line 84
    .line 85
    iget-wide v2, v0, Lqx;->externalCacheSize:J

    .line 86
    .line 87
    goto :goto_8

    .line 88
    :cond_8
    move-wide/from16 v2, p17

    .line 89
    .line 90
    :goto_8
    move-wide/from16 p3, v2

    .line 91
    .line 92
    and-int/lit16 v2, v1, 0x200

    .line 93
    .line 94
    if-eqz v2, :cond_9

    .line 95
    .line 96
    iget-wide v2, v0, Lqx;->mediaSize:J

    .line 97
    .line 98
    goto :goto_9

    .line 99
    :cond_9
    move-wide/from16 v2, p19

    .line 100
    .line 101
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 102
    .line 103
    if-eqz v1, :cond_a

    .line 104
    .line 105
    move-wide/from16 p5, v2

    .line 106
    .line 107
    iget-wide v1, v0, Lqx;->externalObbSize:J

    .line 108
    .line 109
    move-wide/from16 p20, p5

    .line 110
    .line 111
    move-wide/from16 p22, v1

    .line 112
    .line 113
    :goto_a
    move-wide/from16 p16, p1

    .line 114
    .line 115
    move-wide/from16 p18, p3

    .line 116
    .line 117
    move-object/from16 p1, v0

    .line 118
    .line 119
    move-wide/from16 p4, v4

    .line 120
    .line 121
    move-wide/from16 p6, v6

    .line 122
    .line 123
    move-wide/from16 p8, v8

    .line 124
    .line 125
    move-wide/from16 p10, v10

    .line 126
    .line 127
    move-wide/from16 p12, v12

    .line 128
    .line 129
    move-wide/from16 p14, v14

    .line 130
    .line 131
    move-wide/from16 p2, v16

    .line 132
    .line 133
    goto :goto_b

    .line 134
    :cond_a
    move-wide/from16 p22, p21

    .line 135
    .line 136
    move-wide/from16 p20, v2

    .line 137
    .line 138
    goto :goto_a

    .line 139
    :goto_b
    invoke-virtual/range {p1 .. p23}, Lqx;->copy(JJJJJJJJJJJ)Lqx;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0
.end method

.method private static final dataSizeNoCache_delegate$lambda$0(Lqx;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->dataSize:J

    .line 2
    .line 3
    iget-wide v2, p0, Lqx;->cacheSize:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method private static final deDataSizeNoCache_delegate$lambda$0(Lqx;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->deDataSize:J

    .line 2
    .line 3
    iget-wide v2, p0, Lqx;->deDataCacheSize:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public static synthetic e(Lqx;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lqx;->deDataSizeNoCache_delegate$lambda$0(Lqx;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private static final externalDataSizeNoCache_delegate$lambda$0(Lqx;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->externalDataSize:J

    .line 2
    .line 3
    iget-wide v2, p0, Lqx;->externalCacheSize:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public static synthetic g(Lqx;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lqx;->total_delegate$lambda$0(Lqx;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private final getDataSizeNoCache()J
    .locals 2

    .line 1
    iget-object p0, p0, Lqx;->dataSizeNoCache$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method private static synthetic getDataSizeNoCache$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getDeDataSizeNoCache()J
    .locals 2

    .line 1
    iget-object p0, p0, Lqx;->deDataSizeNoCache$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method private static synthetic getDeDataSizeNoCache$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getExternalDataSizeNoCache()J
    .locals 2

    .line 1
    iget-object p0, p0, Lqx;->externalDataSizeNoCache$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method private static synthetic getExternalDataSizeNoCache$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getHasExternalData$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getHasMedia$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTotal$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTotalSizeString$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final hasExternalData_delegate$lambda$0(Lqx;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->externalDataSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method private static final hasMedia_delegate$lambda$0(Lqx;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->mediaSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static synthetic l(Lqx;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lqx;->dataSizeNoCache_delegate$lambda$0(Lqx;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic m(Lqx;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lqx;->externalDataSizeNoCache_delegate$lambda$0(Lqx;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic n(Lqx;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lqx;->totalSizeString_delegate$lambda$0(Lqx;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lqx;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lqx;->hasExternalData_delegate$lambda$0(Lqx;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final totalSizeString_delegate$lambda$0(Lqx;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lp93;->a:Lp93;

    .line 2
    .line 3
    invoke-virtual {p0}, Lqx;->getTotal()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static final total_delegate$lambda$0(Lqx;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->apkSize:J

    .line 2
    .line 3
    iget-wide v2, p0, Lqx;->splitApksSize:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lqx;->sharedLibsSize:J

    .line 7
    .line 8
    add-long/2addr v0, v2

    .line 9
    iget-wide v2, p0, Lqx;->dataSize:J

    .line 10
    .line 11
    add-long/2addr v0, v2

    .line 12
    iget-wide v2, p0, Lqx;->deDataSize:J

    .line 13
    .line 14
    add-long/2addr v0, v2

    .line 15
    iget-wide v2, p0, Lqx;->externalDataSize:J

    .line 16
    .line 17
    add-long/2addr v0, v2

    .line 18
    iget-wide v2, p0, Lqx;->mediaSize:J

    .line 19
    .line 20
    add-long/2addr v0, v2

    .line 21
    iget-wide v2, p0, Lqx;->externalObbSize:J

    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    return-wide v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->apkSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component10()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->mediaSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component11()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->externalObbSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->splitApksSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->sharedLibsSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->dataSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->cacheSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component6()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->deDataSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component7()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->deDataCacheSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component8()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->externalDataSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component9()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->externalCacheSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(JJJJJJJJJJJ)Lqx;
    .locals 23

    .line 1
    new-instance v0, Lqx;

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    move-wide/from16 v5, p5

    .line 8
    .line 9
    move-wide/from16 v7, p7

    .line 10
    .line 11
    move-wide/from16 v9, p9

    .line 12
    .line 13
    move-wide/from16 v11, p11

    .line 14
    .line 15
    move-wide/from16 v13, p13

    .line 16
    .line 17
    move-wide/from16 v15, p15

    .line 18
    .line 19
    move-wide/from16 v17, p17

    .line 20
    .line 21
    move-wide/from16 v19, p19

    .line 22
    .line 23
    move-wide/from16 v21, p21

    .line 24
    .line 25
    invoke-direct/range {v0 .. v22}, Lqx;-><init>(JJJJJJJJJJJ)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lqx;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lqx;

    .line 12
    .line 13
    iget-wide v3, p0, Lqx;->apkSize:J

    .line 14
    .line 15
    iget-wide v5, p1, Lqx;->apkSize:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-wide v3, p0, Lqx;->splitApksSize:J

    .line 23
    .line 24
    iget-wide v5, p1, Lqx;->splitApksSize:J

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lqx;->sharedLibsSize:J

    .line 32
    .line 33
    iget-wide v5, p1, Lqx;->sharedLibsSize:J

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-wide v3, p0, Lqx;->dataSize:J

    .line 41
    .line 42
    iget-wide v5, p1, Lqx;->dataSize:J

    .line 43
    .line 44
    cmp-long v1, v3, v5

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-wide v3, p0, Lqx;->cacheSize:J

    .line 50
    .line 51
    iget-wide v5, p1, Lqx;->cacheSize:J

    .line 52
    .line 53
    cmp-long v1, v3, v5

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-wide v3, p0, Lqx;->deDataSize:J

    .line 59
    .line 60
    iget-wide v5, p1, Lqx;->deDataSize:J

    .line 61
    .line 62
    cmp-long v1, v3, v5

    .line 63
    .line 64
    if-eqz v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-wide v3, p0, Lqx;->deDataCacheSize:J

    .line 68
    .line 69
    iget-wide v5, p1, Lqx;->deDataCacheSize:J

    .line 70
    .line 71
    cmp-long v1, v3, v5

    .line 72
    .line 73
    if-eqz v1, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    iget-wide v3, p0, Lqx;->externalDataSize:J

    .line 77
    .line 78
    iget-wide v5, p1, Lqx;->externalDataSize:J

    .line 79
    .line 80
    cmp-long v1, v3, v5

    .line 81
    .line 82
    if-eqz v1, :cond_9

    .line 83
    .line 84
    return v2

    .line 85
    :cond_9
    iget-wide v3, p0, Lqx;->externalCacheSize:J

    .line 86
    .line 87
    iget-wide v5, p1, Lqx;->externalCacheSize:J

    .line 88
    .line 89
    cmp-long v1, v3, v5

    .line 90
    .line 91
    if-eqz v1, :cond_a

    .line 92
    .line 93
    return v2

    .line 94
    :cond_a
    iget-wide v3, p0, Lqx;->mediaSize:J

    .line 95
    .line 96
    iget-wide v5, p1, Lqx;->mediaSize:J

    .line 97
    .line 98
    cmp-long v1, v3, v5

    .line 99
    .line 100
    if-eqz v1, :cond_b

    .line 101
    .line 102
    return v2

    .line 103
    :cond_b
    iget-wide v3, p0, Lqx;->externalObbSize:J

    .line 104
    .line 105
    iget-wide p0, p1, Lqx;->externalObbSize:J

    .line 106
    .line 107
    cmp-long p0, v3, p0

    .line 108
    .line 109
    if-eqz p0, :cond_c

    .line 110
    .line 111
    return v2

    .line 112
    :cond_c
    return v0
.end method

.method public final getApkSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->apkSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getCacheSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->cacheSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDataSize()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lqx;->dataSize:J

    return-wide v0
.end method

.method public final getDataSize(Z)J
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Lqx;->dataSize:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    invoke-direct {p0}, Lqx;->getDataSizeNoCache()J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public final getDeDataCacheSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->deDataCacheSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDeDataSize()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lqx;->deDataSize:J

    return-wide v0
.end method

.method public final getDeDataSize(Z)J
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Lqx;->deDataSize:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    invoke-direct {p0}, Lqx;->getDeDataSizeNoCache()J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public final getExtDataSize(Z)J
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Lqx;->externalDataSize:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    invoke-direct {p0}, Lqx;->getExternalDataSizeNoCache()J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public final getExternalCacheSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->externalCacheSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getExternalDataSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->externalDataSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getExternalObbSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->externalObbSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getHasExternalData()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqx;->hasExternalData$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getHasMedia()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqx;->hasMedia$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getMediaSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->mediaSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSharedLibsSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->sharedLibsSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSplitApksSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->splitApksSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTotal()J
    .locals 2

    .line 1
    iget-object p0, p0, Lqx;->total$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final getTotalApkSize()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->apkSize:J

    .line 2
    .line 3
    iget-wide v2, p0, Lqx;->splitApksSize:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lqx;->sharedLibsSize:J

    .line 7
    .line 8
    add-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public final getTotalCacheSizes()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->cacheSize:J

    .line 2
    .line 3
    iget-wide v2, p0, Lqx;->deDataCacheSize:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lqx;->externalCacheSize:J

    .line 7
    .line 8
    add-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public final getTotalCacheSizesString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lp93;->a:Lp93;

    .line 2
    .line 3
    invoke-virtual {p0}, Lqx;->getTotalCacheSizes()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final getTotalDataSize(Z)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lqx;->getDataSize(Z)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, p1}, Lqx;->getDeDataSize(Z)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    add-long/2addr p0, v0

    .line 10
    return-wide p0
.end method

.method public final getTotalSize(Z)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lqx;->getTotalApkSize()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, p1}, Lqx;->getTotalDataSize(Z)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, p1}, Lqx;->getExtDataSize(Z)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-wide v2, p0, Lqx;->mediaSize:J

    .line 26
    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-wide v3, p0, Lqx;->externalObbSize:J

    .line 32
    .line 33
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    filled-new-array {v0, v1, p1, v2, p0}, [Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lel1;->o1(Ljava/util/Collection;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    return-wide p0
.end method

.method public final getTotalSizeString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqx;->totalSizeString$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public final hasSharedLibs()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->sharedLibsSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final hasSplits()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->splitApksSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lqx;->apkSize:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-wide v2, p0, Lqx;->splitApksSize:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-wide v2, p0, Lqx;->sharedLibsSize:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-wide v2, p0, Lqx;->dataSize:J

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-wide v2, p0, Lqx;->cacheSize:J

    .line 29
    .line 30
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-wide v2, p0, Lqx;->deDataSize:J

    .line 35
    .line 36
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-wide v2, p0, Lqx;->deDataCacheSize:J

    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-wide v2, p0, Lqx;->externalDataSize:J

    .line 47
    .line 48
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-wide v2, p0, Lqx;->externalCacheSize:J

    .line 53
    .line 54
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-wide v2, p0, Lqx;->mediaSize:J

    .line 59
    .line 60
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-wide v1, p0, Lqx;->externalObbSize:J

    .line 65
    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    add-int/2addr p0, v0

    .line 71
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lqx;->apkSize:J

    .line 4
    .line 5
    iget-wide v3, v0, Lqx;->splitApksSize:J

    .line 6
    .line 7
    iget-wide v5, v0, Lqx;->sharedLibsSize:J

    .line 8
    .line 9
    iget-wide v7, v0, Lqx;->dataSize:J

    .line 10
    .line 11
    iget-wide v9, v0, Lqx;->cacheSize:J

    .line 12
    .line 13
    iget-wide v11, v0, Lqx;->deDataSize:J

    .line 14
    .line 15
    iget-wide v13, v0, Lqx;->deDataCacheSize:J

    .line 16
    .line 17
    move-wide v15, v13

    .line 18
    iget-wide v13, v0, Lqx;->externalDataSize:J

    .line 19
    .line 20
    move-wide/from16 v17, v13

    .line 21
    .line 22
    iget-wide v13, v0, Lqx;->externalCacheSize:J

    .line 23
    .line 24
    move-wide/from16 v19, v13

    .line 25
    .line 26
    iget-wide v13, v0, Lqx;->mediaSize:J

    .line 27
    .line 28
    move-wide/from16 v21, v13

    .line 29
    .line 30
    iget-wide v13, v0, Lqx;->externalObbSize:J

    .line 31
    .line 32
    const-string v0, "AppSizeInfo(apkSize="

    .line 33
    .line 34
    move-wide/from16 v23, v15

    .line 35
    .line 36
    const-string v15, ", splitApksSize="

    .line 37
    .line 38
    invoke-static {v0, v15, v1, v2}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", sharedLibsSize="

    .line 46
    .line 47
    const-string v2, ", dataSize="

    .line 48
    .line 49
    invoke-static {v0, v1, v5, v6, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", cacheSize="

    .line 56
    .line 57
    const-string v2, ", deDataSize="

    .line 58
    .line 59
    invoke-static {v0, v1, v9, v10, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", deDataCacheSize="

    .line 66
    .line 67
    const-string v2, ", externalDataSize="

    .line 68
    .line 69
    move-wide/from16 v3, v23

    .line 70
    .line 71
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-wide/from16 v1, v17

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", externalCacheSize="

    .line 80
    .line 81
    const-string v2, ", mediaSize="

    .line 82
    .line 83
    move-wide/from16 v3, v19

    .line 84
    .line 85
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move-wide/from16 v1, v21

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", externalObbSize="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ")"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lqx;->apkSize:J

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Lqx;->splitApksSize:J

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lqx;->sharedLibsSize:J

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p0, Lqx;->dataSize:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lqx;->cacheSize:J

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    .line 28
    .line 29
    iget-wide v0, p0, Lqx;->deDataSize:J

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Lqx;->deDataCacheSize:J

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    .line 38
    .line 39
    iget-wide v0, p0, Lqx;->externalDataSize:J

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Lqx;->externalCacheSize:J

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    .line 48
    .line 49
    iget-wide v0, p0, Lqx;->mediaSize:J

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    .line 53
    .line 54
    iget-wide v0, p0, Lqx;->externalObbSize:J

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
