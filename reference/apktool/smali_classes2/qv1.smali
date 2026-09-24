.class public final Lqv1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqv1$a;,
        Lqv1$c;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lqv1;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lqv1$a;

.field private static final logTag$delegate:Los4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Los4;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private date:J
    .annotation runtime Lzl1;
        value = "date"
    .end annotation
.end field

.field private displayName:Ljava/lang/String;

.field private id:J
    .annotation runtime Lzl1;
        value = "_id"
    .end annotation
.end field

.field private lastSmsDate:J

.field private messageCount:I

.field private mmsItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwg5;",
            ">;"
        }
    .end annotation
.end field

.field private photoUri:Ljava/lang/String;

.field private randomId:Ljava/lang/String;
    .annotation runtime Lx14;
    .end annotation
.end field

.field private smsItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lki7;",
            ">;"
        }
    .end annotation
.end field

.field private snippet:Ljava/lang/String;

.field private threadId:J
    .annotation runtime Lzl1;
        value = "thread_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqv1$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lqv1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lqv1;->Companion:Lqv1$a;

    .line 8
    .line 9
    new-instance v0, Lqv1$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lqv1$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lqv1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    new-instance v0, Lb7;

    .line 17
    .line 18
    const/16 v1, 0xc

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lqv1;->logTag$delegate:Los4;

    .line 29
    .line 30
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sput-object v0, Lqv1;->CONTENT_URI:Landroid/net/Uri;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 18

    const/16 v16, 0x7ff

    const/16 v17, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    .line 141
    invoke-direct/range {v0 .. v17}, Lqv1;-><init>(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lki7;",
            ">;",
            "Ljava/util/List<",
            "Lwg5;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-wide p1, p0, Lqv1;->id:J

    .line 131
    iput-wide p3, p0, Lqv1;->threadId:J

    .line 132
    iput-wide p5, p0, Lqv1;->date:J

    .line 133
    iput p7, p0, Lqv1;->messageCount:I

    .line 134
    iput-object p8, p0, Lqv1;->snippet:Ljava/lang/String;

    .line 135
    iput-object p9, p0, Lqv1;->address:Ljava/lang/String;

    .line 136
    iput-object p10, p0, Lqv1;->smsItemList:Ljava/util/List;

    .line 137
    iput-object p11, p0, Lqv1;->mmsItemList:Ljava/util/List;

    .line 138
    iput-wide p12, p0, Lqv1;->lastSmsDate:J

    .line 139
    iput-object p14, p0, Lqv1;->displayName:Ljava/lang/String;

    .line 140
    iput-object p15, p0, Lqv1;->photoUri:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    .line 1
    move/from16 v0, p16

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-wide v4, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-wide/from16 v4, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-wide v6, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-wide/from16 v6, p3

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x4

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move-wide v8, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-wide/from16 v8, p5

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v1, v0, 0x8

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v1, p7

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v10, v0, 0x10

    .line 38
    .line 39
    const/4 v11, 0x0

    .line 40
    if-eqz v10, :cond_4

    .line 41
    .line 42
    move-object v10, v11

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v10, p8

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v12, v0, 0x20

    .line 47
    .line 48
    if-eqz v12, :cond_5

    .line 49
    .line 50
    move-object v12, v11

    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move-object/from16 v12, p9

    .line 53
    .line 54
    :goto_5
    and-int/lit8 v13, v0, 0x40

    .line 55
    .line 56
    if-eqz v13, :cond_6

    .line 57
    .line 58
    new-instance v13, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    goto :goto_6

    .line 64
    :cond_6
    move-object/from16 v13, p10

    .line 65
    .line 66
    :goto_6
    and-int/lit16 v14, v0, 0x80

    .line 67
    .line 68
    if-eqz v14, :cond_7

    .line 69
    .line 70
    new-instance v14, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    goto :goto_7

    .line 76
    :cond_7
    move-object/from16 v14, p11

    .line 77
    .line 78
    :goto_7
    and-int/lit16 v15, v0, 0x100

    .line 79
    .line 80
    if-eqz v15, :cond_8

    .line 81
    .line 82
    goto :goto_8

    .line 83
    :cond_8
    move-wide/from16 v2, p12

    .line 84
    .line 85
    :goto_8
    and-int/lit16 v15, v0, 0x200

    .line 86
    .line 87
    if-eqz v15, :cond_9

    .line 88
    .line 89
    move-object v15, v11

    .line 90
    goto :goto_9

    .line 91
    :cond_9
    move-object/from16 v15, p14

    .line 92
    .line 93
    :goto_9
    and-int/lit16 v0, v0, 0x400

    .line 94
    .line 95
    if-eqz v0, :cond_a

    .line 96
    .line 97
    move-object/from16 p16, v11

    .line 98
    .line 99
    :goto_a
    move-object/from16 p1, p0

    .line 100
    .line 101
    move/from16 p8, v1

    .line 102
    .line 103
    move-wide/from16 p13, v2

    .line 104
    .line 105
    move-wide/from16 p2, v4

    .line 106
    .line 107
    move-wide/from16 p4, v6

    .line 108
    .line 109
    move-wide/from16 p6, v8

    .line 110
    .line 111
    move-object/from16 p9, v10

    .line 112
    .line 113
    move-object/from16 p10, v12

    .line 114
    .line 115
    move-object/from16 p11, v13

    .line 116
    .line 117
    move-object/from16 p12, v14

    .line 118
    .line 119
    move-object/from16 p15, v15

    .line 120
    .line 121
    goto :goto_b

    .line 122
    :cond_a
    move-object/from16 p16, p15

    .line 123
    .line 124
    goto :goto_a

    .line 125
    :goto_b
    invoke-direct/range {p1 .. p16}, Lqv1;-><init>(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public static final synthetic access$getCONTENT_URI$cp()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lqv1;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getLogTag$delegate$cp()Los4;
    .locals 1

    .line 1
    sget-object v0, Lqv1;->logTag$delegate:Los4;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lqv1;->logTag_delegate$lambda$0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqv1;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic copy$default(Lqv1;JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lqv1;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p16

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, v0, Lqv1;->id:J

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
    iget-wide v4, v0, Lqv1;->threadId:J

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
    iget-wide v6, v0, Lqv1;->date:J

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
    iget v8, v0, Lqv1;->messageCount:I

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move/from16 v8, p7

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v9, v1, 0x10

    .line 42
    .line 43
    if-eqz v9, :cond_4

    .line 44
    .line 45
    iget-object v9, v0, Lqv1;->snippet:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move-object/from16 v9, p8

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v10, v1, 0x20

    .line 51
    .line 52
    if-eqz v10, :cond_5

    .line 53
    .line 54
    iget-object v10, v0, Lqv1;->address:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-object/from16 v10, p9

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v11, v1, 0x40

    .line 60
    .line 61
    if-eqz v11, :cond_6

    .line 62
    .line 63
    iget-object v11, v0, Lqv1;->smsItemList:Ljava/util/List;

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move-object/from16 v11, p10

    .line 67
    .line 68
    :goto_6
    and-int/lit16 v12, v1, 0x80

    .line 69
    .line 70
    if-eqz v12, :cond_7

    .line 71
    .line 72
    iget-object v12, v0, Lqv1;->mmsItemList:Ljava/util/List;

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move-object/from16 v12, p11

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v13, v1, 0x100

    .line 78
    .line 79
    if-eqz v13, :cond_8

    .line 80
    .line 81
    iget-wide v13, v0, Lqv1;->lastSmsDate:J

    .line 82
    .line 83
    goto :goto_8

    .line 84
    :cond_8
    move-wide/from16 v13, p12

    .line 85
    .line 86
    :goto_8
    and-int/lit16 v15, v1, 0x200

    .line 87
    .line 88
    if-eqz v15, :cond_9

    .line 89
    .line 90
    iget-object v15, v0, Lqv1;->displayName:Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_9

    .line 93
    :cond_9
    move-object/from16 v15, p14

    .line 94
    .line 95
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 96
    .line 97
    if-eqz v1, :cond_a

    .line 98
    .line 99
    iget-object v1, v0, Lqv1;->photoUri:Ljava/lang/String;

    .line 100
    .line 101
    move-object/from16 p16, v1

    .line 102
    .line 103
    :goto_a
    move-object/from16 p1, v0

    .line 104
    .line 105
    move-wide/from16 p2, v2

    .line 106
    .line 107
    move-wide/from16 p4, v4

    .line 108
    .line 109
    move-wide/from16 p6, v6

    .line 110
    .line 111
    move/from16 p8, v8

    .line 112
    .line 113
    move-object/from16 p9, v9

    .line 114
    .line 115
    move-object/from16 p10, v10

    .line 116
    .line 117
    move-object/from16 p11, v11

    .line 118
    .line 119
    move-object/from16 p12, v12

    .line 120
    .line 121
    move-wide/from16 p13, v13

    .line 122
    .line 123
    move-object/from16 p15, v15

    .line 124
    .line 125
    goto :goto_b

    .line 126
    :cond_a
    move-object/from16 p16, p15

    .line 127
    .line 128
    goto :goto_a

    .line 129
    :goto_b
    invoke-virtual/range {p1 .. p16}, Lqv1;->copy(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lqv1;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0
.end method

.method private static synthetic getRandomId$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final logTag_delegate$lambda$0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ConversationItem"

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqv1;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqv1;->photoUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqv1;->threadId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqv1;->date:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lqv1;->messageCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqv1;->snippet:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqv1;->address:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lki7;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lqv1;->smsItemList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwg5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lqv1;->mmsItemList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqv1;->lastSmsDate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lqv1;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lki7;",
            ">;",
            "Ljava/util/List<",
            "Lwg5;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lqv1;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lqv1;

    .line 8
    .line 9
    move-wide/from16 v1, p1

    .line 10
    .line 11
    move-wide/from16 v3, p3

    .line 12
    .line 13
    move-wide/from16 v5, p5

    .line 14
    .line 15
    move/from16 v7, p7

    .line 16
    .line 17
    move-object/from16 v8, p8

    .line 18
    .line 19
    move-object/from16 v9, p9

    .line 20
    .line 21
    move-object/from16 v10, p10

    .line 22
    .line 23
    move-object/from16 v11, p11

    .line 24
    .line 25
    move-wide/from16 v12, p12

    .line 26
    .line 27
    move-object/from16 v14, p14

    .line 28
    .line 29
    move-object/from16 v15, p15

    .line 30
    .line 31
    invoke-direct/range {v0 .. v15}, Lqv1;-><init>(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
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
    instance-of v1, p1, Lqv1;

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
    check-cast p1, Lqv1;

    .line 12
    .line 13
    iget-wide v3, p0, Lqv1;->id:J

    .line 14
    .line 15
    iget-wide v5, p1, Lqv1;->id:J

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
    iget-wide v3, p0, Lqv1;->threadId:J

    .line 23
    .line 24
    iget-wide v5, p1, Lqv1;->threadId:J

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
    iget-wide v3, p0, Lqv1;->date:J

    .line 32
    .line 33
    iget-wide v5, p1, Lqv1;->date:J

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
    iget v1, p0, Lqv1;->messageCount:I

    .line 41
    .line 42
    iget v3, p1, Lqv1;->messageCount:I

    .line 43
    .line 44
    if-eq v1, v3, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget-object v1, p0, Lqv1;->snippet:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p1, Lqv1;->snippet:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lqv1;->address:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p1, Lqv1;->address:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-object v1, p0, Lqv1;->smsItemList:Ljava/util/List;

    .line 70
    .line 71
    iget-object v3, p1, Lqv1;->smsItemList:Ljava/util/List;

    .line 72
    .line 73
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_8

    .line 78
    .line 79
    return v2

    .line 80
    :cond_8
    iget-object v1, p0, Lqv1;->mmsItemList:Ljava/util/List;

    .line 81
    .line 82
    iget-object v3, p1, Lqv1;->mmsItemList:Ljava/util/List;

    .line 83
    .line 84
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_9

    .line 89
    .line 90
    return v2

    .line 91
    :cond_9
    iget-wide v3, p0, Lqv1;->lastSmsDate:J

    .line 92
    .line 93
    iget-wide v5, p1, Lqv1;->lastSmsDate:J

    .line 94
    .line 95
    cmp-long v1, v3, v5

    .line 96
    .line 97
    if-eqz v1, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    iget-object v1, p0, Lqv1;->displayName:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, p1, Lqv1;->displayName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object p0, p0, Lqv1;->photoUri:Ljava/lang/String;

    .line 112
    .line 113
    iget-object p1, p1, Lqv1;->photoUri:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-nez p0, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqv1;->address:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getCopy()Ljl0;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lqv1;->getCopy()Lqv1;

    move-result-object p0

    return-object p0
.end method

.method public getCopy()Lqv1;
    .locals 19

    .line 1
    const/16 v17, 0x7ff

    .line 2
    .line 3
    const/16 v18, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    const-wide/16 v6, 0x0

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v12, 0x0

    .line 16
    const-wide/16 v13, 0x0

    .line 17
    .line 18
    const/4 v15, 0x0

    .line 19
    const/16 v16, 0x0

    .line 20
    .line 21
    move-object/from16 v1, p0

    .line 22
    .line 23
    invoke-static/range {v1 .. v18}, Lqv1;->copy$default(Lqv1;JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lqv1;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, v1, Lqv1;->randomId:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v1, v0, Lqv1;->randomId:Ljava/lang/String;

    .line 30
    .line 31
    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqv1;->date:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqv1;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lqv1;->address:Ljava/lang/String;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "Name not found"

    .line 10
    .line 11
    :cond_0
    return-object p0

    .line 12
    :cond_1
    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqv1;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lqv1;->randomId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lnh4;->d:Lnh4;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2, v2}, Lnh4;->i(IZZ)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lqv1;->randomId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v0
.end method

.method public final getLastSmsDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqv1;->lastSmsDate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMessageCount()I
    .locals 0

    .line 1
    iget p0, p0, Lqv1;->messageCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMmsItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwg5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lqv1;->mmsItemList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPhotoUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqv1;->photoUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSmsItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lki7;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lqv1;->smsItemList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqv1;->snippet:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThreadId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqv1;->threadId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lqv1;->id:J

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
    iget-wide v2, p0, Lqv1;->threadId:J

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-wide v2, p0, Lqv1;->date:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lqv1;->messageCount:I

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lqv1;->snippet:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    move v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :goto_0
    add-int/2addr v0, v2

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-object v2, p0, Lqv1;->address:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    move v2, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_1
    add-int/2addr v0, v2

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-object v2, p0, Lqv1;->smsItemList:Ljava/util/List;

    .line 54
    .line 55
    invoke-static {v2, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v2, p0, Lqv1;->mmsItemList:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {v2, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-wide v4, p0, Lqv1;->lastSmsDate:J

    .line 66
    .line 67
    invoke-static {v4, v5, v0, v1}, Lxs1;->f(JII)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v2, p0, Lqv1;->displayName:Ljava/lang/String;

    .line 72
    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    move v2, v3

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :goto_2
    add-int/2addr v0, v2

    .line 82
    mul-int/2addr v0, v1

    .line 83
    iget-object p0, p0, Lqv1;->photoUri:Ljava/lang/String;

    .line 84
    .line 85
    if-nez p0, :cond_3

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    :goto_3
    add-int/2addr v0, v3

    .line 93
    return v0
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqv1;->address:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lqv1;->date:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqv1;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lqv1;->id:J

    .line 2
    .line 3
    return-void
.end method

.method public final setLastSmsDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lqv1;->lastSmsDate:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMessageCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lqv1;->messageCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMmsItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lwg5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqv1;->mmsItemList:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method

.method public final setPhotoUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqv1;->photoUri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSmsItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lki7;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqv1;->smsItemList:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqv1;->snippet:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setThreadId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lqv1;->threadId:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lqv1;->id:J

    .line 4
    .line 5
    iget-wide v3, v0, Lqv1;->threadId:J

    .line 6
    .line 7
    iget-wide v5, v0, Lqv1;->date:J

    .line 8
    .line 9
    iget v7, v0, Lqv1;->messageCount:I

    .line 10
    .line 11
    iget-object v8, v0, Lqv1;->snippet:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v9, v0, Lqv1;->address:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v10, v0, Lqv1;->smsItemList:Ljava/util/List;

    .line 16
    .line 17
    iget-object v11, v0, Lqv1;->mmsItemList:Ljava/util/List;

    .line 18
    .line 19
    iget-wide v12, v0, Lqv1;->lastSmsDate:J

    .line 20
    .line 21
    iget-object v14, v0, Lqv1;->displayName:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, v0, Lqv1;->photoUri:Ljava/lang/String;

    .line 24
    .line 25
    const-string v15, "ConversationItem(id="

    .line 26
    .line 27
    move-object/from16 p0, v0

    .line 28
    .line 29
    const-string v0, ", threadId="

    .line 30
    .line 31
    invoke-static {v15, v0, v1, v2}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", date="

    .line 39
    .line 40
    const-string v2, ", messageCount="

    .line 41
    .line 42
    invoke-static {v0, v1, v5, v6, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", snippet="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", address="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", smsItemList="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", mmsItemList="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", lastSmsDate="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", displayName="

    .line 89
    .line 90
    const-string v2, ", photoUri="

    .line 91
    .line 92
    move-object/from16 v3, p0

    .line 93
    .line 94
    invoke-static {v0, v1, v14, v2, v3}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v1, ")"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lqv1;->id:J

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Lqv1;->threadId:J

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lqv1;->date:J

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lqv1;->messageCount:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lqv1;->snippet:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lqv1;->address:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lqv1;->smsItemList:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lki7;

    .line 58
    .line 59
    invoke-virtual {v1, p1, p2}, Lki7;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lqv1;->mmsItemList:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lwg5;

    .line 87
    .line 88
    invoke-virtual {v1, p1, p2}, Lwg5;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    iget-wide v0, p0, Lqv1;->lastSmsDate:J

    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lqv1;->displayName:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lqv1;->photoUri:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
