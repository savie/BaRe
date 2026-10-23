.class public final Lwg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwg5$a;,
        Lwg5$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lwg5;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lwg5$a;


# instance fields
.field private addressItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvg5;",
            ">;"
        }
    .end annotation
.end field

.field private box:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "msg_box"
    .end annotation
.end field

.field private contentClass:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "ct_cls"
    .end annotation
.end field

.field private contentLocation:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "ct_l"
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "ct_t"
    .end annotation
.end field

.field private dateInSeconds:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "date"
    .end annotation
.end field

.field private dateSentInSeconds:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "date_sent"
    .end annotation
.end field

.field private deliveryReport:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "d_rpt"
    .end annotation
.end field

.field private deliveryTime:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "d_tm"
    .end annotation
.end field

.field private expiry:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "exp"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "_id"
    .end annotation
.end field

.field private locked:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "locked"
    .end annotation
.end field

.field private messageClass:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "m_cls"
    .end annotation
.end field

.field private messageSize:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "m_size"
    .end annotation
.end field

.field private mmsVersion:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "v"
    .end annotation
.end field

.field private partItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxg5;",
            ">;"
        }
    .end annotation
.end field

.field private priority:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "pri"
    .end annotation
.end field

.field private randomId:Ljava/lang/String;
    .annotation runtime Lx14;
    .end annotation
.end field

.field private read:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "read"
    .end annotation
.end field

.field private readReport:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "rr"
    .end annotation
.end field

.field private readStatus:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "read_status"
    .end annotation
.end field

.field private recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reportAllowed:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "rpt_a"
    .end annotation
.end field

.field private responseStatus:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "resp_st"
    .end annotation
.end field

.field private responseText:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "resp_txt"
    .end annotation
.end field

.field private retrieveStatus:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "retr_st"
    .end annotation
.end field

.field private retrieveText:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "retr_txt"
    .end annotation
.end field

.field private retrieveTextCharset:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "retr_txt_cs"
    .end annotation
.end field

.field private seen:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "seen"
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "st"
    .end annotation
.end field

.field private subId:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "sub_id"
    .end annotation
.end field

.field private subject:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "sub"
    .end annotation
.end field

.field private subjectCharset:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "sub_cs"
    .end annotation
.end field

.field private textOnly:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "text_only"
    .end annotation
.end field

.field private threadId:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "thread_id"
    .end annotation
.end field

.field private transactionId:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "tr_id"
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "m_type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwg5$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lwg5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lwg5;->Companion:Lwg5$a;

    .line 8
    .line 9
    new-instance v0, Lwg5$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lwg5$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lwg5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 40

    const/16 v38, 0xf

    const/16 v39, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, -0x1

    move-object/from16 v0, p0

    .line 39
    invoke-direct/range {v0 .. v39}, Lwg5;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lvg5;",
            ">;",
            "Ljava/util/List<",
            "Lxg5;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lwg5;->id:Ljava/lang/Long;

    .line 4
    iput-object p2, p0, Lwg5;->box:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lwg5;->type:Ljava/lang/Integer;

    .line 6
    iput-object p4, p0, Lwg5;->threadId:Ljava/lang/Long;

    .line 7
    iput-object p5, p0, Lwg5;->dateInSeconds:Ljava/lang/Long;

    .line 8
    iput-object p6, p0, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    .line 9
    iput-object p7, p0, Lwg5;->read:Ljava/lang/Integer;

    .line 10
    iput-object p8, p0, Lwg5;->seen:Ljava/lang/Integer;

    .line 11
    iput-object p9, p0, Lwg5;->textOnly:Ljava/lang/Integer;

    .line 12
    iput-object p10, p0, Lwg5;->subject:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lwg5;->subjectCharset:Ljava/lang/Integer;

    .line 14
    iput-object p12, p0, Lwg5;->contentType:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lwg5;->contentLocation:Ljava/lang/String;

    .line 16
    iput-object p14, p0, Lwg5;->expiry:Ljava/lang/Long;

    .line 17
    iput-object p15, p0, Lwg5;->messageClass:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 18
    iput-object p1, p0, Lwg5;->mmsVersion:Ljava/lang/Integer;

    move-object/from16 p1, p17

    .line 19
    iput-object p1, p0, Lwg5;->messageSize:Ljava/lang/Integer;

    move-object/from16 p1, p18

    .line 20
    iput-object p1, p0, Lwg5;->priority:Ljava/lang/Integer;

    move-object/from16 p1, p19

    .line 21
    iput-object p1, p0, Lwg5;->readReport:Ljava/lang/Integer;

    move-object/from16 p1, p20

    .line 22
    iput-object p1, p0, Lwg5;->reportAllowed:Ljava/lang/Integer;

    move-object/from16 p1, p21

    .line 23
    iput-object p1, p0, Lwg5;->responseStatus:Ljava/lang/Integer;

    move-object/from16 p1, p22

    .line 24
    iput-object p1, p0, Lwg5;->status:Ljava/lang/Integer;

    move-object/from16 p1, p23

    .line 25
    iput-object p1, p0, Lwg5;->transactionId:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 26
    iput-object p1, p0, Lwg5;->retrieveStatus:Ljava/lang/Integer;

    move-object/from16 p1, p25

    .line 27
    iput-object p1, p0, Lwg5;->retrieveText:Ljava/lang/String;

    move-object/from16 p1, p26

    .line 28
    iput-object p1, p0, Lwg5;->retrieveTextCharset:Ljava/lang/Integer;

    move-object/from16 p1, p27

    .line 29
    iput-object p1, p0, Lwg5;->readStatus:Ljava/lang/Integer;

    move-object/from16 p1, p28

    .line 30
    iput-object p1, p0, Lwg5;->contentClass:Ljava/lang/Integer;

    move-object/from16 p1, p29

    .line 31
    iput-object p1, p0, Lwg5;->deliveryReport:Ljava/lang/Integer;

    move-object/from16 p1, p30

    .line 32
    iput-object p1, p0, Lwg5;->deliveryTime:Ljava/lang/Integer;

    move-object/from16 p1, p31

    .line 33
    iput-object p1, p0, Lwg5;->responseText:Ljava/lang/String;

    move-object/from16 p1, p32

    .line 34
    iput-object p1, p0, Lwg5;->locked:Ljava/lang/Integer;

    move-object/from16 p1, p33

    .line 35
    iput-object p1, p0, Lwg5;->subId:Ljava/lang/Integer;

    move-object/from16 p1, p34

    .line 36
    iput-object p1, p0, Lwg5;->recipients:Ljava/util/List;

    move-object/from16 p1, p35

    .line 37
    iput-object p1, p0, Lwg5;->addressItems:Ljava/util/List;

    move-object/from16 p1, p36

    .line 38
    iput-object p1, p0, Lwg5;->partItems:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 36

    move/from16 v0, p37

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_19

    const/16 v26, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v26, p26

    :goto_19
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_1a

    const/16 v27, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v27, p27

    :goto_1a
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v28, p28

    :goto_1b
    const/high16 v29, 0x10000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1c

    const/16 v29, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v29, p29

    :goto_1c
    const/high16 v30, 0x20000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1d

    const/16 v30, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v30, p30

    :goto_1d
    const/high16 v31, 0x40000000    # 2.0f

    and-int v31, v0, v31

    if-eqz v31, :cond_1e

    const/16 v31, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v31, p31

    :goto_1e
    const/high16 v32, -0x80000000

    and-int v0, v0, v32

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p32

    :goto_1f
    and-int/lit8 v32, p38, 0x1

    if-eqz v32, :cond_20

    const/16 v32, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v32, p33

    :goto_20
    and-int/lit8 v33, p38, 0x2

    if-eqz v33, :cond_21

    const/16 v33, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v33, p34

    :goto_21
    and-int/lit8 v34, p38, 0x4

    if-eqz v34, :cond_22

    const/16 v34, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 v34, p35

    :goto_22
    and-int/lit8 v35, p38, 0x8

    if-eqz v35, :cond_23

    const/16 p37, 0x0

    :goto_23
    move-object/from16 p1, p0

    move-object/from16 p33, v0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move-object/from16 p28, v27

    move-object/from16 p29, v28

    move-object/from16 p30, v29

    move-object/from16 p31, v30

    move-object/from16 p32, v31

    move-object/from16 p34, v32

    move-object/from16 p35, v33

    move-object/from16 p36, v34

    goto :goto_24

    :cond_23
    move-object/from16 p37, p36

    goto :goto_23

    .line 1
    :goto_24
    invoke-direct/range {p1 .. p37}, Lwg5;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lwg5;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lwg5;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p37

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 1
    iget-object v2, v0, Lwg5;->id:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lwg5;->box:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lwg5;->type:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lwg5;->threadId:Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lwg5;->dateInSeconds:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lwg5;->read:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lwg5;->seen:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lwg5;->textOnly:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lwg5;->subject:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lwg5;->subjectCharset:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lwg5;->contentType:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lwg5;->contentLocation:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lwg5;->expiry:Ljava/lang/Long;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lwg5;->messageClass:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lwg5;->mmsVersion:Ljava/lang/Integer;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p37, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lwg5;->messageSize:Ljava/lang/Integer;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p37, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lwg5;->priority:Ljava/lang/Integer;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p37, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lwg5;->readReport:Ljava/lang/Integer;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p37, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lwg5;->reportAllowed:Ljava/lang/Integer;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p37, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    iget-object v1, v0, Lwg5;->responseStatus:Ljava/lang/Integer;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p37, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_15

    iget-object v1, v0, Lwg5;->status:Ljava/lang/Integer;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p37, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    iget-object v1, v0, Lwg5;->transactionId:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p37, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_17

    iget-object v1, v0, Lwg5;->retrieveStatus:Ljava/lang/Integer;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p37, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_18

    iget-object v1, v0, Lwg5;->retrieveText:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p37, v16

    move-object/from16 p11, v1

    if-eqz v16, :cond_19

    iget-object v1, v0, Lwg5;->retrieveTextCharset:Ljava/lang/Integer;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p37, v16

    move-object/from16 p12, v1

    if-eqz v16, :cond_1a

    iget-object v1, v0, Lwg5;->readStatus:Ljava/lang/Integer;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, p37, v16

    move-object/from16 p13, v1

    if-eqz v16, :cond_1b

    iget-object v1, v0, Lwg5;->contentClass:Ljava/lang/Integer;

    goto :goto_1b

    :cond_1b
    move-object/from16 v1, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, p37, v16

    move-object/from16 p14, v1

    if-eqz v16, :cond_1c

    iget-object v1, v0, Lwg5;->deliveryReport:Ljava/lang/Integer;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, p37, v16

    move-object/from16 p15, v1

    if-eqz v16, :cond_1d

    iget-object v1, v0, Lwg5;->deliveryTime:Ljava/lang/Integer;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, p37, v16

    move-object/from16 p16, v1

    if-eqz v16, :cond_1e

    iget-object v1, v0, Lwg5;->responseText:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p31

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v16, p37, v16

    move-object/from16 p17, v1

    if-eqz v16, :cond_1f

    iget-object v1, v0, Lwg5;->locked:Ljava/lang/Integer;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v16, p38, 0x1

    move-object/from16 p18, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lwg5;->subId:Ljava/lang/Integer;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v16, p38, 0x2

    move-object/from16 p19, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lwg5;->recipients:Ljava/util/List;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v16, p38, 0x4

    move-object/from16 p20, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lwg5;->addressItems:Ljava/util/List;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v16, p38, 0x8

    if-eqz v16, :cond_23

    move-object/from16 p21, v1

    iget-object v1, v0, Lwg5;->partItems:Ljava/util/List;

    move-object/from16 p36, p21

    move-object/from16 p37, v1

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move-object/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move-object/from16 p33, p18

    move-object/from16 p34, p19

    move-object/from16 p35, p20

    move-object/from16 p16, v2

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    :goto_23
    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_24

    :cond_23
    move-object/from16 p37, p36

    move-object/from16 p36, v1

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move-object/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move-object/from16 p33, p18

    move-object/from16 p34, p19

    move-object/from16 p35, p20

    move-object/from16 p16, v2

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    goto :goto_23

    :goto_24
    invoke-virtual/range {p1 .. p37}, Lwg5;->copy(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lwg5;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic getRandomId$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->subjectCharset:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->contentLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component14()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->expiry:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component15()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->messageClass:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component16()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->mmsVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component17()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->messageSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component18()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->priority:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component19()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->readReport:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->box:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component20()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->reportAllowed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component21()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->responseStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component22()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component23()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->transactionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component24()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->retrieveStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component25()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->retrieveText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component26()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->retrieveTextCharset:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component27()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->readStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component28()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->contentClass:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component29()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->deliveryReport:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component30()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->deliveryTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component31()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->responseText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component32()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->locked:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component33()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->subId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component34()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lwg5;->recipients:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component35()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvg5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lwg5;->addressItems:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component36()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxg5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lwg5;->partItems:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->threadId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->dateInSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->read:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->seen:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->textOnly:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lwg5;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lvg5;",
            ">;",
            "Ljava/util/List<",
            "Lxg5;",
            ">;)",
            "Lwg5;"
        }
    .end annotation

    .line 1
    new-instance v0, Lwg5;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    invoke-direct/range {v0 .. v36}, Lwg5;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

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
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lwg5;

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
    check-cast p1, Lwg5;

    .line 12
    .line 13
    iget-object v1, p0, Lwg5;->id:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v3, p1, Lwg5;->id:Ljava/lang/Long;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lwg5;->box:Ljava/lang/Integer;

    .line 25
    .line 26
    iget-object v3, p1, Lwg5;->box:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lwg5;->type:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v3, p1, Lwg5;->type:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lwg5;->threadId:Ljava/lang/Long;

    .line 47
    .line 48
    iget-object v3, p1, Lwg5;->threadId:Ljava/lang/Long;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lwg5;->dateInSeconds:Ljava/lang/Long;

    .line 58
    .line 59
    iget-object v3, p1, Lwg5;->dateInSeconds:Ljava/lang/Long;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    .line 69
    .line 70
    iget-object v3, p1, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lwg5;->read:Ljava/lang/Integer;

    .line 80
    .line 81
    iget-object v3, p1, Lwg5;->read:Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lwg5;->seen:Ljava/lang/Integer;

    .line 91
    .line 92
    iget-object v3, p1, Lwg5;->seen:Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lwg5;->textOnly:Ljava/lang/Integer;

    .line 102
    .line 103
    iget-object v3, p1, Lwg5;->textOnly:Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lwg5;->subject:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lwg5;->subject:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lwg5;->subjectCharset:Ljava/lang/Integer;

    .line 124
    .line 125
    iget-object v3, p1, Lwg5;->subjectCharset:Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lwg5;->contentType:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lwg5;->contentType:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lwg5;->contentLocation:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v3, p1, Lwg5;->contentLocation:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lwg5;->expiry:Ljava/lang/Long;

    .line 157
    .line 158
    iget-object v3, p1, Lwg5;->expiry:Ljava/lang/Long;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lwg5;->messageClass:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v3, p1, Lwg5;->messageClass:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lwg5;->mmsVersion:Ljava/lang/Integer;

    .line 179
    .line 180
    iget-object v3, p1, Lwg5;->mmsVersion:Ljava/lang/Integer;

    .line 181
    .line 182
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    iget-object v1, p0, Lwg5;->messageSize:Ljava/lang/Integer;

    .line 190
    .line 191
    iget-object v3, p1, Lwg5;->messageSize:Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    iget-object v1, p0, Lwg5;->priority:Ljava/lang/Integer;

    .line 201
    .line 202
    iget-object v3, p1, Lwg5;->priority:Ljava/lang/Integer;

    .line 203
    .line 204
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_13

    .line 209
    .line 210
    return v2

    .line 211
    :cond_13
    iget-object v1, p0, Lwg5;->readReport:Ljava/lang/Integer;

    .line 212
    .line 213
    iget-object v3, p1, Lwg5;->readReport:Ljava/lang/Integer;

    .line 214
    .line 215
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_14

    .line 220
    .line 221
    return v2

    .line 222
    :cond_14
    iget-object v1, p0, Lwg5;->reportAllowed:Ljava/lang/Integer;

    .line 223
    .line 224
    iget-object v3, p1, Lwg5;->reportAllowed:Ljava/lang/Integer;

    .line 225
    .line 226
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_15

    .line 231
    .line 232
    return v2

    .line 233
    :cond_15
    iget-object v1, p0, Lwg5;->responseStatus:Ljava/lang/Integer;

    .line 234
    .line 235
    iget-object v3, p1, Lwg5;->responseStatus:Ljava/lang/Integer;

    .line 236
    .line 237
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_16

    .line 242
    .line 243
    return v2

    .line 244
    :cond_16
    iget-object v1, p0, Lwg5;->status:Ljava/lang/Integer;

    .line 245
    .line 246
    iget-object v3, p1, Lwg5;->status:Ljava/lang/Integer;

    .line 247
    .line 248
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_17

    .line 253
    .line 254
    return v2

    .line 255
    :cond_17
    iget-object v1, p0, Lwg5;->transactionId:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v3, p1, Lwg5;->transactionId:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_18

    .line 264
    .line 265
    return v2

    .line 266
    :cond_18
    iget-object v1, p0, Lwg5;->retrieveStatus:Ljava/lang/Integer;

    .line 267
    .line 268
    iget-object v3, p1, Lwg5;->retrieveStatus:Ljava/lang/Integer;

    .line 269
    .line 270
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-nez v1, :cond_19

    .line 275
    .line 276
    return v2

    .line 277
    :cond_19
    iget-object v1, p0, Lwg5;->retrieveText:Ljava/lang/String;

    .line 278
    .line 279
    iget-object v3, p1, Lwg5;->retrieveText:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_1a

    .line 286
    .line 287
    return v2

    .line 288
    :cond_1a
    iget-object v1, p0, Lwg5;->retrieveTextCharset:Ljava/lang/Integer;

    .line 289
    .line 290
    iget-object v3, p1, Lwg5;->retrieveTextCharset:Ljava/lang/Integer;

    .line 291
    .line 292
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_1b

    .line 297
    .line 298
    return v2

    .line 299
    :cond_1b
    iget-object v1, p0, Lwg5;->readStatus:Ljava/lang/Integer;

    .line 300
    .line 301
    iget-object v3, p1, Lwg5;->readStatus:Ljava/lang/Integer;

    .line 302
    .line 303
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_1c

    .line 308
    .line 309
    return v2

    .line 310
    :cond_1c
    iget-object v1, p0, Lwg5;->contentClass:Ljava/lang/Integer;

    .line 311
    .line 312
    iget-object v3, p1, Lwg5;->contentClass:Ljava/lang/Integer;

    .line 313
    .line 314
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_1d

    .line 319
    .line 320
    return v2

    .line 321
    :cond_1d
    iget-object v1, p0, Lwg5;->deliveryReport:Ljava/lang/Integer;

    .line 322
    .line 323
    iget-object v3, p1, Lwg5;->deliveryReport:Ljava/lang/Integer;

    .line 324
    .line 325
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_1e

    .line 330
    .line 331
    return v2

    .line 332
    :cond_1e
    iget-object v1, p0, Lwg5;->deliveryTime:Ljava/lang/Integer;

    .line 333
    .line 334
    iget-object v3, p1, Lwg5;->deliveryTime:Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_1f

    .line 341
    .line 342
    return v2

    .line 343
    :cond_1f
    iget-object v1, p0, Lwg5;->responseText:Ljava/lang/String;

    .line 344
    .line 345
    iget-object v3, p1, Lwg5;->responseText:Ljava/lang/String;

    .line 346
    .line 347
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-nez v1, :cond_20

    .line 352
    .line 353
    return v2

    .line 354
    :cond_20
    iget-object v1, p0, Lwg5;->locked:Ljava/lang/Integer;

    .line 355
    .line 356
    iget-object v3, p1, Lwg5;->locked:Ljava/lang/Integer;

    .line 357
    .line 358
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_21

    .line 363
    .line 364
    return v2

    .line 365
    :cond_21
    iget-object v1, p0, Lwg5;->subId:Ljava/lang/Integer;

    .line 366
    .line 367
    iget-object v3, p1, Lwg5;->subId:Ljava/lang/Integer;

    .line 368
    .line 369
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-nez v1, :cond_22

    .line 374
    .line 375
    return v2

    .line 376
    :cond_22
    iget-object v1, p0, Lwg5;->recipients:Ljava/util/List;

    .line 377
    .line 378
    iget-object v3, p1, Lwg5;->recipients:Ljava/util/List;

    .line 379
    .line 380
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_23

    .line 385
    .line 386
    return v2

    .line 387
    :cond_23
    iget-object v1, p0, Lwg5;->addressItems:Ljava/util/List;

    .line 388
    .line 389
    iget-object v3, p1, Lwg5;->addressItems:Ljava/util/List;

    .line 390
    .line 391
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-nez v1, :cond_24

    .line 396
    .line 397
    return v2

    .line 398
    :cond_24
    iget-object p0, p0, Lwg5;->partItems:Ljava/util/List;

    .line 399
    .line 400
    iget-object p1, p1, Lwg5;->partItems:Ljava/util/List;

    .line 401
    .line 402
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result p0

    .line 406
    if-nez p0, :cond_25

    .line 407
    .line 408
    return v2

    .line 409
    :cond_25
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lwg5;->addressItems:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lvg5;

    .line 22
    .line 23
    invoke-virtual {v2}, Lvg5;->getAddress()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v2}, Lvg5;->getType()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Lvg5;->Companion:Lvg5$a;

    .line 41
    .line 42
    invoke-virtual {v3}, Lvg5$a;->getPDU_HEADERS_TO()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ne v2, v3, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move-object v1, v0

    .line 57
    :goto_1
    check-cast v1, Lvg5;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v1}, Lvg5;->getAddress()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_4
    return-object v0
.end method

.method public final getAddressItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvg5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lwg5;->addressItems:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBox()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->box:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentClass()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->contentClass:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentLocation()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->contentLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getCopy()Ljl0;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lwg5;->getCopy()Lwg5;

    move-result-object p0

    return-object p0
.end method

.method public getCopy()Lwg5;
    .locals 41

    .line 1
    const/16 v39, 0xf

    .line 2
    .line 3
    const/16 v40, 0x0

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

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
    const/4 v13, 0x0

    .line 17
    const/4 v14, 0x0

    .line 18
    const/4 v15, 0x0

    .line 19
    const/16 v16, 0x0

    .line 20
    .line 21
    const/16 v17, 0x0

    .line 22
    .line 23
    const/16 v18, 0x0

    .line 24
    .line 25
    const/16 v19, 0x0

    .line 26
    .line 27
    const/16 v20, 0x0

    .line 28
    .line 29
    const/16 v21, 0x0

    .line 30
    .line 31
    const/16 v22, 0x0

    .line 32
    .line 33
    const/16 v23, 0x0

    .line 34
    .line 35
    const/16 v24, 0x0

    .line 36
    .line 37
    const/16 v25, 0x0

    .line 38
    .line 39
    const/16 v26, 0x0

    .line 40
    .line 41
    const/16 v27, 0x0

    .line 42
    .line 43
    const/16 v28, 0x0

    .line 44
    .line 45
    const/16 v29, 0x0

    .line 46
    .line 47
    const/16 v30, 0x0

    .line 48
    .line 49
    const/16 v31, 0x0

    .line 50
    .line 51
    const/16 v32, 0x0

    .line 52
    .line 53
    const/16 v33, 0x0

    .line 54
    .line 55
    const/16 v34, 0x0

    .line 56
    .line 57
    const/16 v35, 0x0

    .line 58
    .line 59
    const/16 v36, 0x0

    .line 60
    .line 61
    const/16 v37, 0x0

    .line 62
    .line 63
    const/16 v38, -0x1

    .line 64
    .line 65
    move-object/from16 v1, p0

    .line 66
    .line 67
    invoke-static/range {v1 .. v40}, Lwg5;->copy$default(Lwg5;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;IILjava/lang/Object;)Lwg5;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, v1, Lwg5;->randomId:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v1, v0, Lwg5;->randomId:Ljava/lang/String;

    .line 74
    .line 75
    return-object v0
.end method

.method public final getDateInMillis()Ljava/lang/Long;
    .locals 4

    .line 1
    iget-object v0, p0, Lwg5;->dateInSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    .line 11
    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    if-ne p0, v2, :cond_1

    .line 29
    .line 30
    const-wide/16 v2, 0x3e8

    .line 31
    .line 32
    mul-long/2addr v0, v2

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public final getDateInSeconds()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->dateInSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateSentInSeconds()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDeliveryReport()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->deliveryReport:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDeliveryTime()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->deliveryTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExpiry()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->expiry:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFile()Lq63;
    .locals 3

    .line 1
    iget-object p0, p0, Lwg5;->partItems:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lxg5;

    .line 22
    .line 23
    invoke-virtual {v2}, Lxg5;->getCachedFileName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v1, v0

    .line 37
    :cond_2
    check-cast v1, Lxg5;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lxg5;->getCachedFileName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-nez p0, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-static {}, Lud5;->g()Lq63;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_4
    :goto_1
    return-object v0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lwg5;->randomId:Ljava/lang/String;

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
    iput-object v0, p0, Lwg5;->randomId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v0
.end method

.method public final getLocked()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->locked:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMessageClass()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->messageClass:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMessageSize()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->messageSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMmsVersion()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->mmsVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPartItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxg5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lwg5;->partItems:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPriority()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->priority:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProperFileName()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lwg5;->partItems:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v3, v2

    .line 21
    check-cast v3, Lxg5;

    .line 22
    .line 23
    invoke-virtual {v3}, Lxg5;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v3}, Lxg5;->isText()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3}, Lxg5;->isSmil()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v2, v1

    .line 50
    :goto_1
    check-cast v2, Lxg5;

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2}, Lxg5;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move-object v0, v1

    .line 60
    :goto_2
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    return-object v0

    .line 70
    :cond_5
    :goto_3
    iget-object p0, p0, Lwg5;->partItems:Ljava/util/List;

    .line 71
    .line 72
    if-eqz p0, :cond_8

    .line 73
    .line 74
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object v2, v0

    .line 89
    check-cast v2, Lxg5;

    .line 90
    .line 91
    invoke-virtual {v2}, Lxg5;->isSmil()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_7
    move-object v0, v1

    .line 99
    :goto_4
    check-cast v0, Lxg5;

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_8
    move-object v0, v1

    .line 103
    :goto_5
    if-eqz v0, :cond_a

    .line 104
    .line 105
    invoke-virtual {v0}, Lxg5;->getText()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-nez p0, :cond_9

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    const-string v0, "src=\""

    .line 113
    .line 114
    const-string v1, "\""

    .line 115
    .line 116
    invoke-static {p0, v0, v1}, Ljq7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :cond_a
    :goto_6
    return-object v1
.end method

.method public final getRead()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->read:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReadReport()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->readReport:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReadStatus()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->readStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRecipients()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lwg5;->recipients:Ljava/util/List;

    return-object p0
.end method

.method public final getRecipients()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwg5;->recipients:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v3, v1

    .line 17
    :goto_1
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_2

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    move-object v0, v4

    .line 22
    :goto_2
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_3
    iget-object p0, p0, Lwg5;->addressItems:Ljava/util/List;

    .line 30
    .line 31
    if-eqz p0, :cond_c

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_6

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    move-object v5, v3

    .line 53
    check-cast v5, Lvg5;

    .line 54
    .line 55
    invoke-virtual {v5}, Lvg5;->getType()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    sget-object v6, Lvg5;->Companion:Lvg5$a;

    .line 60
    .line 61
    invoke-virtual {v6}, Lvg5$a;->getPDU_HEADERS_TO()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v5, :cond_5

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-ne v5, v6, :cond_4

    .line 73
    .line 74
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_b

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lvg5;

    .line 98
    .line 99
    invoke-virtual {v3}, Lvg5;->getAddress()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_9

    .line 104
    .line 105
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_8

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_8
    move v5, v2

    .line 113
    goto :goto_6

    .line 114
    :cond_9
    :goto_5
    move v5, v1

    .line 115
    :goto_6
    if-nez v5, :cond_a

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_a
    move-object v3, v4

    .line 119
    :goto_7
    if-eqz v3, :cond_7

    .line 120
    .line 121
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_b
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :cond_c
    return-object v4
.end method

.method public final getReportAllowed()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->reportAllowed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getResponseStatus()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->responseStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getResponseText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->responseText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRetrieveStatus()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->retrieveStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRetrieveText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->retrieveText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRetrieveTextCharset()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->retrieveTextCharset:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSeen()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->seen:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatus()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubId()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->subId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubjectCharset()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->subjectCharset:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lwg5;->partItems:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lxg5;

    .line 22
    .line 23
    invoke-virtual {v2}, Lxg5;->isText()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v0

    .line 31
    :goto_0
    check-cast v1, Lxg5;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lxg5;->getText()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_2
    return-object v0
.end method

.method public final getTextOnly()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->textOnly:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThreadId()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->threadId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTransactionId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->transactionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lwg5;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lwg5;->id:Ljava/lang/Long;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lwg5;->box:Ljava/lang/Integer;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lwg5;->type:Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lwg5;->threadId:Ljava/lang/Long;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lwg5;->dateInSeconds:Ljava/lang/Long;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lwg5;->read:Ljava/lang/Integer;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v1

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lwg5;->seen:Ljava/lang/Integer;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    move v2, v1

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lwg5;->textOnly:Ljava/lang/Integer;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    move v2, v1

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lwg5;->subject:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    move v2, v1

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lwg5;->subjectCharset:Ljava/lang/Integer;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    move v2, v1

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lwg5;->contentType:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    move v2, v1

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lwg5;->contentLocation:Ljava/lang/String;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    move v2, v1

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lwg5;->expiry:Ljava/lang/Long;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    move v2, v1

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lwg5;->messageClass:Ljava/lang/String;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    move v2, v1

    .line 188
    goto :goto_e

    .line 189
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lwg5;->mmsVersion:Ljava/lang/Integer;

    .line 197
    .line 198
    if-nez v2, :cond_f

    .line 199
    .line 200
    move v2, v1

    .line 201
    goto :goto_f

    .line 202
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    :goto_f
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lwg5;->messageSize:Ljava/lang/Integer;

    .line 210
    .line 211
    if-nez v2, :cond_10

    .line 212
    .line 213
    move v2, v1

    .line 214
    goto :goto_10

    .line 215
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    :goto_10
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    .line 221
    .line 222
    iget-object v2, p0, Lwg5;->priority:Ljava/lang/Integer;

    .line 223
    .line 224
    if-nez v2, :cond_11

    .line 225
    .line 226
    move v2, v1

    .line 227
    goto :goto_11

    .line 228
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    :goto_11
    add-int/2addr v0, v2

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    .line 234
    .line 235
    iget-object v2, p0, Lwg5;->readReport:Ljava/lang/Integer;

    .line 236
    .line 237
    if-nez v2, :cond_12

    .line 238
    .line 239
    move v2, v1

    .line 240
    goto :goto_12

    .line 241
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    :goto_12
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    .line 247
    .line 248
    iget-object v2, p0, Lwg5;->reportAllowed:Ljava/lang/Integer;

    .line 249
    .line 250
    if-nez v2, :cond_13

    .line 251
    .line 252
    move v2, v1

    .line 253
    goto :goto_13

    .line 254
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    :goto_13
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v0, v0, 0x1f

    .line 260
    .line 261
    iget-object v2, p0, Lwg5;->responseStatus:Ljava/lang/Integer;

    .line 262
    .line 263
    if-nez v2, :cond_14

    .line 264
    .line 265
    move v2, v1

    .line 266
    goto :goto_14

    .line 267
    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    :goto_14
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    .line 273
    .line 274
    iget-object v2, p0, Lwg5;->status:Ljava/lang/Integer;

    .line 275
    .line 276
    if-nez v2, :cond_15

    .line 277
    .line 278
    move v2, v1

    .line 279
    goto :goto_15

    .line 280
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    :goto_15
    add-int/2addr v0, v2

    .line 285
    mul-int/lit8 v0, v0, 0x1f

    .line 286
    .line 287
    iget-object v2, p0, Lwg5;->transactionId:Ljava/lang/String;

    .line 288
    .line 289
    if-nez v2, :cond_16

    .line 290
    .line 291
    move v2, v1

    .line 292
    goto :goto_16

    .line 293
    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    :goto_16
    add-int/2addr v0, v2

    .line 298
    mul-int/lit8 v0, v0, 0x1f

    .line 299
    .line 300
    iget-object v2, p0, Lwg5;->retrieveStatus:Ljava/lang/Integer;

    .line 301
    .line 302
    if-nez v2, :cond_17

    .line 303
    .line 304
    move v2, v1

    .line 305
    goto :goto_17

    .line 306
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    :goto_17
    add-int/2addr v0, v2

    .line 311
    mul-int/lit8 v0, v0, 0x1f

    .line 312
    .line 313
    iget-object v2, p0, Lwg5;->retrieveText:Ljava/lang/String;

    .line 314
    .line 315
    if-nez v2, :cond_18

    .line 316
    .line 317
    move v2, v1

    .line 318
    goto :goto_18

    .line 319
    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    :goto_18
    add-int/2addr v0, v2

    .line 324
    mul-int/lit8 v0, v0, 0x1f

    .line 325
    .line 326
    iget-object v2, p0, Lwg5;->retrieveTextCharset:Ljava/lang/Integer;

    .line 327
    .line 328
    if-nez v2, :cond_19

    .line 329
    .line 330
    move v2, v1

    .line 331
    goto :goto_19

    .line 332
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    :goto_19
    add-int/2addr v0, v2

    .line 337
    mul-int/lit8 v0, v0, 0x1f

    .line 338
    .line 339
    iget-object v2, p0, Lwg5;->readStatus:Ljava/lang/Integer;

    .line 340
    .line 341
    if-nez v2, :cond_1a

    .line 342
    .line 343
    move v2, v1

    .line 344
    goto :goto_1a

    .line 345
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    :goto_1a
    add-int/2addr v0, v2

    .line 350
    mul-int/lit8 v0, v0, 0x1f

    .line 351
    .line 352
    iget-object v2, p0, Lwg5;->contentClass:Ljava/lang/Integer;

    .line 353
    .line 354
    if-nez v2, :cond_1b

    .line 355
    .line 356
    move v2, v1

    .line 357
    goto :goto_1b

    .line 358
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    :goto_1b
    add-int/2addr v0, v2

    .line 363
    mul-int/lit8 v0, v0, 0x1f

    .line 364
    .line 365
    iget-object v2, p0, Lwg5;->deliveryReport:Ljava/lang/Integer;

    .line 366
    .line 367
    if-nez v2, :cond_1c

    .line 368
    .line 369
    move v2, v1

    .line 370
    goto :goto_1c

    .line 371
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    :goto_1c
    add-int/2addr v0, v2

    .line 376
    mul-int/lit8 v0, v0, 0x1f

    .line 377
    .line 378
    iget-object v2, p0, Lwg5;->deliveryTime:Ljava/lang/Integer;

    .line 379
    .line 380
    if-nez v2, :cond_1d

    .line 381
    .line 382
    move v2, v1

    .line 383
    goto :goto_1d

    .line 384
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    :goto_1d
    add-int/2addr v0, v2

    .line 389
    mul-int/lit8 v0, v0, 0x1f

    .line 390
    .line 391
    iget-object v2, p0, Lwg5;->responseText:Ljava/lang/String;

    .line 392
    .line 393
    if-nez v2, :cond_1e

    .line 394
    .line 395
    move v2, v1

    .line 396
    goto :goto_1e

    .line 397
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    :goto_1e
    add-int/2addr v0, v2

    .line 402
    mul-int/lit8 v0, v0, 0x1f

    .line 403
    .line 404
    iget-object v2, p0, Lwg5;->locked:Ljava/lang/Integer;

    .line 405
    .line 406
    if-nez v2, :cond_1f

    .line 407
    .line 408
    move v2, v1

    .line 409
    goto :goto_1f

    .line 410
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    :goto_1f
    add-int/2addr v0, v2

    .line 415
    mul-int/lit8 v0, v0, 0x1f

    .line 416
    .line 417
    iget-object v2, p0, Lwg5;->subId:Ljava/lang/Integer;

    .line 418
    .line 419
    if-nez v2, :cond_20

    .line 420
    .line 421
    move v2, v1

    .line 422
    goto :goto_20

    .line 423
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    :goto_20
    add-int/2addr v0, v2

    .line 428
    mul-int/lit8 v0, v0, 0x1f

    .line 429
    .line 430
    iget-object v2, p0, Lwg5;->recipients:Ljava/util/List;

    .line 431
    .line 432
    if-nez v2, :cond_21

    .line 433
    .line 434
    move v2, v1

    .line 435
    goto :goto_21

    .line 436
    :cond_21
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    :goto_21
    add-int/2addr v0, v2

    .line 441
    mul-int/lit8 v0, v0, 0x1f

    .line 442
    .line 443
    iget-object v2, p0, Lwg5;->addressItems:Ljava/util/List;

    .line 444
    .line 445
    if-nez v2, :cond_22

    .line 446
    .line 447
    move v2, v1

    .line 448
    goto :goto_22

    .line 449
    :cond_22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    :goto_22
    add-int/2addr v0, v2

    .line 454
    mul-int/lit8 v0, v0, 0x1f

    .line 455
    .line 456
    iget-object p0, p0, Lwg5;->partItems:Ljava/util/List;

    .line 457
    .line 458
    if-nez p0, :cond_23

    .line 459
    .line 460
    goto :goto_23

    .line 461
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    :goto_23
    add-int/2addr v0, v1

    .line 466
    return v0
.end method

.method public final isInbox()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lwg5;->box:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final openFile(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lwg5;->partItems:Ljava/util/List;

    .line 5
    .line 6
    if-eqz p0, :cond_5

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Lxg5;

    .line 24
    .line 25
    invoke-virtual {v1}, Lxg5;->isText()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lxg5;->isSmil()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lxg5;->isImage()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    check-cast v0, Lxg5;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v0}, Lxg5;->getCachedFileName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-static {}, Lud5;->g()Lq63;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, p0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0}, Lxg5;->getContentType()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 73
    .line 74
    const-string v2, "android.intent.action.VIEW"

    .line 75
    .line 76
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Lf93;->a(Lq63;)Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const p0, 0x10000001

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    sget-object p1, Lzn4;->a:Lzn4;

    .line 104
    .line 105
    new-instance p1, Ll30;

    .line 106
    .line 107
    const/16 v0, 0xf

    .line 108
    .line 109
    const-string v1, "No handler activity for this type of file."

    .line 110
    .line 111
    invoke-direct {p1, v0, p0, v1}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_1
    return-void
.end method

.method public final setAddressItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvg5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lwg5;->addressItems:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setBox(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->box:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentClass(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->contentClass:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->contentLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateInSeconds(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->dateInSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateSentInSeconds(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeliveryReport(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->deliveryReport:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeliveryTime(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->deliveryTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpiry(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->expiry:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocked(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->locked:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setMessageClass(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->messageClass:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMessageSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->messageSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setMmsVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->mmsVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPartItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lxg5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lwg5;->partItems:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setPriority(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->priority:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setRead(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->read:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setReadReport(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->readReport:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setReadStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->readStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setRecipients(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lwg5;->recipients:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setReportAllowed(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->reportAllowed:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setResponseStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->responseStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setResponseText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->responseText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRetrieveStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->retrieveStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setRetrieveText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->retrieveText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRetrieveTextCharset(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->retrieveTextCharset:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setSeen(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->seen:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->subId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectCharset(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->subjectCharset:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setTextOnly(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->textOnly:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setThreadId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->threadId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setTransactionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->transactionId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwg5;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lwg5;->id:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, v0, Lwg5;->box:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v3, v0, Lwg5;->type:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v4, v0, Lwg5;->threadId:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v5, v0, Lwg5;->dateInSeconds:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v6, v0, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v7, v0, Lwg5;->read:Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v8, v0, Lwg5;->seen:Ljava/lang/Integer;

    .line 18
    .line 19
    iget-object v9, v0, Lwg5;->textOnly:Ljava/lang/Integer;

    .line 20
    .line 21
    iget-object v10, v0, Lwg5;->subject:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lwg5;->subjectCharset:Ljava/lang/Integer;

    .line 24
    .line 25
    iget-object v12, v0, Lwg5;->contentType:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lwg5;->contentLocation:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lwg5;->expiry:Ljava/lang/Long;

    .line 30
    .line 31
    iget-object v15, v0, Lwg5;->messageClass:Ljava/lang/String;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lwg5;->mmsVersion:Ljava/lang/Integer;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lwg5;->messageSize:Ljava/lang/Integer;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lwg5;->priority:Ljava/lang/Integer;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lwg5;->readReport:Ljava/lang/Integer;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lwg5;->reportAllowed:Ljava/lang/Integer;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lwg5;->responseStatus:Ljava/lang/Integer;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lwg5;->status:Ljava/lang/Integer;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lwg5;->transactionId:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lwg5;->retrieveStatus:Ljava/lang/Integer;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lwg5;->retrieveText:Ljava/lang/String;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lwg5;->retrieveTextCharset:Ljava/lang/Integer;

    .line 76
    .line 77
    move-object/from16 v27, v15

    .line 78
    .line 79
    iget-object v15, v0, Lwg5;->readStatus:Ljava/lang/Integer;

    .line 80
    .line 81
    move-object/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lwg5;->contentClass:Ljava/lang/Integer;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-object v15, v0, Lwg5;->deliveryReport:Ljava/lang/Integer;

    .line 88
    .line 89
    move-object/from16 v30, v15

    .line 90
    .line 91
    iget-object v15, v0, Lwg5;->deliveryTime:Ljava/lang/Integer;

    .line 92
    .line 93
    move-object/from16 v31, v15

    .line 94
    .line 95
    iget-object v15, v0, Lwg5;->responseText:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v32, v15

    .line 98
    .line 99
    iget-object v15, v0, Lwg5;->locked:Ljava/lang/Integer;

    .line 100
    .line 101
    move-object/from16 v33, v15

    .line 102
    .line 103
    iget-object v15, v0, Lwg5;->subId:Ljava/lang/Integer;

    .line 104
    .line 105
    move-object/from16 v34, v15

    .line 106
    .line 107
    iget-object v15, v0, Lwg5;->recipients:Ljava/util/List;

    .line 108
    .line 109
    move-object/from16 v35, v15

    .line 110
    .line 111
    iget-object v15, v0, Lwg5;->addressItems:Ljava/util/List;

    .line 112
    .line 113
    iget-object v0, v0, Lwg5;->partItems:Ljava/util/List;

    .line 114
    .line 115
    move-object/from16 p0, v0

    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    move-object/from16 v36, v15

    .line 120
    .line 121
    const-string v15, "MmsItem(id="

    .line 122
    .line 123
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, ", box="

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, ", type="

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, ", threadId="

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", dateInSeconds="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, ", dateSentInSeconds="

    .line 159
    .line 160
    const-string v2, ", read="

    .line 161
    .line 162
    invoke-static {v0, v5, v1, v6, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ", seen="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", textOnly="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, ", subject="

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", subjectCharset="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", contentType="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v1, ", contentLocation="

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", expiry="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ", messageClass="

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    move-object/from16 v1, v16

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, ", mmsVersion="

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    move-object/from16 v1, v17

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", messageSize="

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    move-object/from16 v1, v18

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v1, ", priority="

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    move-object/from16 v1, v19

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v1, ", readReport="

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    move-object/from16 v1, v20

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, ", reportAllowed="

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-object/from16 v1, v21

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v1, ", responseStatus="

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    move-object/from16 v1, v22

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v1, ", status="

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    move-object/from16 v1, v23

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v1, ", transactionId="

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    move-object/from16 v1, v24

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v1, ", retrieveStatus="

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    move-object/from16 v1, v25

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v1, ", retrieveText="

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    move-object/from16 v1, v26

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v1, ", retrieveTextCharset="

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    move-object/from16 v1, v27

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v1, ", readStatus="

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    move-object/from16 v1, v28

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v1, ", contentClass="

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    move-object/from16 v1, v29

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v1, ", deliveryReport="

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    move-object/from16 v1, v30

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v1, ", deliveryTime="

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    move-object/from16 v1, v31

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v1, ", responseText="

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    move-object/from16 v1, v32

    .line 390
    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v1, ", locked="

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    move-object/from16 v1, v33

    .line 400
    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v1, ", subId="

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    move-object/from16 v1, v34

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v1, ", recipients="

    .line 415
    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    move-object/from16 v1, v35

    .line 420
    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v1, ", addressItems="

    .line 425
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    move-object/from16 v1, v36

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    const-string v1, ", partItems="

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    move-object/from16 v1, p0

    .line 440
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v1, ")"

    .line 445
    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lwg5;->id:Ljava/lang/Long;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, v1, v0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lwg5;->box:Ljava/lang/Integer;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 26
    .line 27
    .line 28
    :goto_1
    iget-object v0, p0, Lwg5;->type:Ljava/lang/Integer;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 37
    .line 38
    .line 39
    :goto_2
    iget-object v0, p0, Lwg5;->threadId:Ljava/lang/Long;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    invoke-static {p1, v1, v0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 48
    .line 49
    .line 50
    :goto_3
    iget-object v0, p0, Lwg5;->dateInSeconds:Ljava/lang/Long;

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    invoke-static {p1, v1, v0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 59
    .line 60
    .line 61
    :goto_4
    iget-object v0, p0, Lwg5;->dateSentInSeconds:Ljava/lang/Long;

    .line 62
    .line 63
    if-nez v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_5
    invoke-static {p1, v1, v0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 70
    .line 71
    .line 72
    :goto_5
    iget-object v0, p0, Lwg5;->read:Ljava/lang/Integer;

    .line 73
    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_6

    .line 80
    :cond_6
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 81
    .line 82
    .line 83
    :goto_6
    iget-object v0, p0, Lwg5;->seen:Ljava/lang/Integer;

    .line 84
    .line 85
    if-nez v0, :cond_7

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_7

    .line 91
    :cond_7
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 92
    .line 93
    .line 94
    :goto_7
    iget-object v0, p0, Lwg5;->textOnly:Ljava/lang/Integer;

    .line 95
    .line 96
    if-nez v0, :cond_8

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_8

    .line 102
    :cond_8
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 103
    .line 104
    .line 105
    :goto_8
    iget-object v0, p0, Lwg5;->subject:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lwg5;->subjectCharset:Ljava/lang/Integer;

    .line 111
    .line 112
    if-nez v0, :cond_9

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_9

    .line 118
    :cond_9
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 119
    .line 120
    .line 121
    :goto_9
    iget-object v0, p0, Lwg5;->contentType:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lwg5;->contentLocation:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lwg5;->expiry:Ljava/lang/Long;

    .line 132
    .line 133
    if-nez v0, :cond_a

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_a

    .line 139
    :cond_a
    invoke-static {p1, v1, v0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 140
    .line 141
    .line 142
    :goto_a
    iget-object v0, p0, Lwg5;->messageClass:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lwg5;->mmsVersion:Ljava/lang/Integer;

    .line 148
    .line 149
    if-nez v0, :cond_b

    .line 150
    .line 151
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_b

    .line 155
    :cond_b
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 156
    .line 157
    .line 158
    :goto_b
    iget-object v0, p0, Lwg5;->messageSize:Ljava/lang/Integer;

    .line 159
    .line 160
    if-nez v0, :cond_c

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_c

    .line 166
    :cond_c
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 167
    .line 168
    .line 169
    :goto_c
    iget-object v0, p0, Lwg5;->priority:Ljava/lang/Integer;

    .line 170
    .line 171
    if-nez v0, :cond_d

    .line 172
    .line 173
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_d

    .line 177
    :cond_d
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 178
    .line 179
    .line 180
    :goto_d
    iget-object v0, p0, Lwg5;->readReport:Ljava/lang/Integer;

    .line 181
    .line 182
    if-nez v0, :cond_e

    .line 183
    .line 184
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    .line 186
    .line 187
    goto :goto_e

    .line 188
    :cond_e
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 189
    .line 190
    .line 191
    :goto_e
    iget-object v0, p0, Lwg5;->reportAllowed:Ljava/lang/Integer;

    .line 192
    .line 193
    if-nez v0, :cond_f

    .line 194
    .line 195
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_f

    .line 199
    :cond_f
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 200
    .line 201
    .line 202
    :goto_f
    iget-object v0, p0, Lwg5;->responseStatus:Ljava/lang/Integer;

    .line 203
    .line 204
    if-nez v0, :cond_10

    .line 205
    .line 206
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_10

    .line 210
    :cond_10
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 211
    .line 212
    .line 213
    :goto_10
    iget-object v0, p0, Lwg5;->status:Ljava/lang/Integer;

    .line 214
    .line 215
    if-nez v0, :cond_11

    .line 216
    .line 217
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_11

    .line 221
    :cond_11
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 222
    .line 223
    .line 224
    :goto_11
    iget-object v0, p0, Lwg5;->transactionId:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lwg5;->retrieveStatus:Ljava/lang/Integer;

    .line 230
    .line 231
    if-nez v0, :cond_12

    .line 232
    .line 233
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    .line 235
    .line 236
    goto :goto_12

    .line 237
    :cond_12
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 238
    .line 239
    .line 240
    :goto_12
    iget-object v0, p0, Lwg5;->retrieveText:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lwg5;->retrieveTextCharset:Ljava/lang/Integer;

    .line 246
    .line 247
    if-nez v0, :cond_13

    .line 248
    .line 249
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_13

    .line 253
    :cond_13
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 254
    .line 255
    .line 256
    :goto_13
    iget-object v0, p0, Lwg5;->readStatus:Ljava/lang/Integer;

    .line 257
    .line 258
    if-nez v0, :cond_14

    .line 259
    .line 260
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    .line 262
    .line 263
    goto :goto_14

    .line 264
    :cond_14
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 265
    .line 266
    .line 267
    :goto_14
    iget-object v0, p0, Lwg5;->contentClass:Ljava/lang/Integer;

    .line 268
    .line 269
    if-nez v0, :cond_15

    .line 270
    .line 271
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    .line 273
    .line 274
    goto :goto_15

    .line 275
    :cond_15
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 276
    .line 277
    .line 278
    :goto_15
    iget-object v0, p0, Lwg5;->deliveryReport:Ljava/lang/Integer;

    .line 279
    .line 280
    if-nez v0, :cond_16

    .line 281
    .line 282
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    .line 284
    .line 285
    goto :goto_16

    .line 286
    :cond_16
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 287
    .line 288
    .line 289
    :goto_16
    iget-object v0, p0, Lwg5;->deliveryTime:Ljava/lang/Integer;

    .line 290
    .line 291
    if-nez v0, :cond_17

    .line 292
    .line 293
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    .line 295
    .line 296
    goto :goto_17

    .line 297
    :cond_17
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 298
    .line 299
    .line 300
    :goto_17
    iget-object v0, p0, Lwg5;->responseText:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lwg5;->locked:Ljava/lang/Integer;

    .line 306
    .line 307
    if-nez v0, :cond_18

    .line 308
    .line 309
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_18

    .line 313
    :cond_18
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 314
    .line 315
    .line 316
    :goto_18
    iget-object v0, p0, Lwg5;->subId:Ljava/lang/Integer;

    .line 317
    .line 318
    if-nez v0, :cond_19

    .line 319
    .line 320
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_19

    .line 324
    :cond_19
    invoke-static {p1, v1, v0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 325
    .line 326
    .line 327
    :goto_19
    iget-object v0, p0, Lwg5;->recipients:Ljava/util/List;

    .line 328
    .line 329
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 330
    .line 331
    .line 332
    iget-object v0, p0, Lwg5;->addressItems:Ljava/util/List;

    .line 333
    .line 334
    if-nez v0, :cond_1a

    .line 335
    .line 336
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    .line 338
    .line 339
    goto :goto_1b

    .line 340
    :cond_1a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    .line 349
    .line 350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-eqz v3, :cond_1b

    .line 359
    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    check-cast v3, Lvg5;

    .line 365
    .line 366
    invoke-virtual {v3, p1, p2}, Lvg5;->writeToParcel(Landroid/os/Parcel;I)V

    .line 367
    .line 368
    .line 369
    goto :goto_1a

    .line 370
    :cond_1b
    :goto_1b
    iget-object p0, p0, Lwg5;->partItems:Ljava/util/List;

    .line 371
    .line 372
    if-nez p0, :cond_1c

    .line 373
    .line 374
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :cond_1c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    .line 380
    .line 381
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    .line 387
    .line 388
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_1d

    .line 397
    .line 398
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    check-cast v0, Lxg5;

    .line 403
    .line 404
    invoke-virtual {v0, p1, p2}, Lxg5;->writeToParcel(Landroid/os/Parcel;I)V

    .line 405
    .line 406
    .line 407
    goto :goto_1c

    .line 408
    :cond_1d
    return-void
.end method
