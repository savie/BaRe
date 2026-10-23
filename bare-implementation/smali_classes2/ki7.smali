.class public final Lki7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lki7$a;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lki7;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lki7$a;

.field private static final logTag:Ljava/lang/String; = "SmsItem"


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "address"
    .end annotation
.end field

.field private body:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "body"
    .end annotation
.end field

.field private creator:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "creator"
    .end annotation
.end field

.field private date:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "date"
    .end annotation
.end field

.field private dateSent:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "date_sent"
    .end annotation
.end field

.field private errorCode:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "error_code"
    .end annotation
.end field

.field private locked:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "locked"
    .end annotation
.end field

.field private person:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "person"
    .end annotation
.end field

.field private protocol:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "protocol"
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

.field private replyPathPresent:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "reply_path_present"
    .end annotation
.end field

.field private seen:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "seen"
    .end annotation
.end field

.field private serviceCenter:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "service_center"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "status"
    .end annotation
.end field

.field private subject:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "subject"
    .end annotation
.end field

.field private threadId:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "thread_id"
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lki7$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lki7$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lki7;->Companion:Lki7$a;

    .line 8
    .line 9
    new-instance v0, Lki7$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lki7$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lki7;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sput-object v0, Lki7;->CONTENT_URI:Landroid/net/Uri;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 20

    const v18, 0x1ffff

    const/16 v19, 0x0

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

    move-object/from16 v0, p0

    .line 20
    invoke-direct/range {v0 .. v19}, Lki7;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lki7;->type:Ljava/lang/Integer;

    .line 4
    iput-object p2, p0, Lki7;->threadId:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Lki7;->address:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lki7;->date:Ljava/lang/Long;

    .line 7
    iput-object p5, p0, Lki7;->dateSent:Ljava/lang/Long;

    .line 8
    iput-object p6, p0, Lki7;->read:Ljava/lang/Integer;

    .line 9
    iput-object p7, p0, Lki7;->seen:Ljava/lang/Integer;

    .line 10
    iput-object p8, p0, Lki7;->status:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lki7;->subject:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lki7;->body:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lki7;->person:Ljava/lang/Integer;

    .line 14
    iput-object p12, p0, Lki7;->protocol:Ljava/lang/Integer;

    .line 15
    iput-object p13, p0, Lki7;->replyPathPresent:Ljava/lang/Integer;

    .line 16
    iput-object p14, p0, Lki7;->serviceCenter:Ljava/lang/String;

    .line 17
    iput-object p15, p0, Lki7;->locked:Ljava/lang/Integer;

    move-object/from16 p1, p16

    .line 18
    iput-object p1, p0, Lki7;->errorCode:Ljava/lang/Integer;

    move-object/from16 p1, p17

    .line 19
    iput-object p1, p0, Lki7;->creator:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p18

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

    and-int v0, v0, v17

    if-eqz v0, :cond_10

    const/16 p18, 0x0

    :goto_10
    move-object/from16 p1, p0

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

    goto :goto_11

    :cond_10
    move-object/from16 p18, p17

    goto :goto_10

    .line 1
    :goto_11
    invoke-direct/range {p1 .. p18}, Lki7;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCONTENT_URI$cp()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lki7;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic copy$default(Lki7;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lki7;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 1
    iget-object v2, v0, Lki7;->type:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lki7;->threadId:Ljava/lang/Long;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lki7;->address:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lki7;->date:Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lki7;->dateSent:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lki7;->read:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lki7;->seen:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lki7;->status:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lki7;->subject:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lki7;->body:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lki7;->person:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lki7;->protocol:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lki7;->replyPathPresent:Ljava/lang/Integer;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lki7;->serviceCenter:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lki7;->locked:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lki7;->errorCode:Ljava/lang/Integer;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p18, v16

    if-eqz v16, :cond_10

    move-object/from16 p2, v1

    iget-object v1, v0, Lki7;->creator:Ljava/lang/String;

    move-object/from16 p17, p2

    move-object/from16 p18, v1

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

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_10

    :cond_10
    move-object/from16 p18, p17

    move-object/from16 p17, v1

    move-object/from16 p2, p1

    move-object/from16 p1, v0

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

    :goto_10
    invoke-virtual/range {p1 .. p18}, Lki7;->copy(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lki7;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic getRandomId$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->body:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->person:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->protocol:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component13()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->replyPathPresent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component14()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->serviceCenter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->locked:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component16()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->errorCode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component17()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->creator:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->threadId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->address:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->date:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->dateSent:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->read:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->seen:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lki7;
    .locals 18

    .line 1
    new-instance v0, Lki7;

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

    invoke-direct/range {v0 .. v17}, Lki7;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

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
    instance-of v1, p1, Lki7;

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
    check-cast p1, Lki7;

    .line 12
    .line 13
    iget-object v1, p0, Lki7;->type:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v3, p1, Lki7;->type:Ljava/lang/Integer;

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
    iget-object v1, p0, Lki7;->threadId:Ljava/lang/Long;

    .line 25
    .line 26
    iget-object v3, p1, Lki7;->threadId:Ljava/lang/Long;

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
    iget-object v1, p0, Lki7;->address:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lki7;->address:Ljava/lang/String;

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
    iget-object v1, p0, Lki7;->date:Ljava/lang/Long;

    .line 47
    .line 48
    iget-object v3, p1, Lki7;->date:Ljava/lang/Long;

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
    iget-object v1, p0, Lki7;->dateSent:Ljava/lang/Long;

    .line 58
    .line 59
    iget-object v3, p1, Lki7;->dateSent:Ljava/lang/Long;

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
    iget-object v1, p0, Lki7;->read:Ljava/lang/Integer;

    .line 69
    .line 70
    iget-object v3, p1, Lki7;->read:Ljava/lang/Integer;

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
    iget-object v1, p0, Lki7;->seen:Ljava/lang/Integer;

    .line 80
    .line 81
    iget-object v3, p1, Lki7;->seen:Ljava/lang/Integer;

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
    iget-object v1, p0, Lki7;->status:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lki7;->status:Ljava/lang/String;

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
    iget-object v1, p0, Lki7;->subject:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lki7;->subject:Ljava/lang/String;

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
    iget-object v1, p0, Lki7;->body:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lki7;->body:Ljava/lang/String;

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
    iget-object v1, p0, Lki7;->person:Ljava/lang/Integer;

    .line 124
    .line 125
    iget-object v3, p1, Lki7;->person:Ljava/lang/Integer;

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
    iget-object v1, p0, Lki7;->protocol:Ljava/lang/Integer;

    .line 135
    .line 136
    iget-object v3, p1, Lki7;->protocol:Ljava/lang/Integer;

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
    iget-object v1, p0, Lki7;->replyPathPresent:Ljava/lang/Integer;

    .line 146
    .line 147
    iget-object v3, p1, Lki7;->replyPathPresent:Ljava/lang/Integer;

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
    iget-object v1, p0, Lki7;->serviceCenter:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p1, Lki7;->serviceCenter:Ljava/lang/String;

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
    iget-object v1, p0, Lki7;->locked:Ljava/lang/Integer;

    .line 168
    .line 169
    iget-object v3, p1, Lki7;->locked:Ljava/lang/Integer;

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
    iget-object v1, p0, Lki7;->errorCode:Ljava/lang/Integer;

    .line 179
    .line 180
    iget-object v3, p1, Lki7;->errorCode:Ljava/lang/Integer;

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
    iget-object p0, p0, Lki7;->creator:Ljava/lang/String;

    .line 190
    .line 191
    iget-object p1, p1, Lki7;->creator:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-nez p0, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->address:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->body:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getCopy()Ljl0;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lki7;->getCopy()Lki7;

    move-result-object p0

    return-object p0
.end method

.method public getCopy()Lki7;
    .locals 21

    .line 1
    const v19, 0x1ffff

    .line 2
    .line 3
    .line 4
    const/16 v20, 0x0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v10, 0x0

    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v12, 0x0

    .line 17
    const/4 v13, 0x0

    .line 18
    const/4 v14, 0x0

    .line 19
    const/4 v15, 0x0

    .line 20
    const/16 v16, 0x0

    .line 21
    .line 22
    const/16 v17, 0x0

    .line 23
    .line 24
    const/16 v18, 0x0

    .line 25
    .line 26
    move-object/from16 v1, p0

    .line 27
    .line 28
    invoke-static/range {v1 .. v20}, Lki7;->copy$default(Lki7;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lki7;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, v1, Lki7;->randomId:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, v0, Lki7;->randomId:Ljava/lang/String;

    .line 35
    .line 36
    return-object v0
.end method

.method public final getCreator()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->creator:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDate()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->date:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateSent()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->dateSent:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getErrorCode()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->errorCode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lki7;->randomId:Ljava/lang/String;

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
    iput-object v0, p0, Lki7;->randomId:Ljava/lang/String;

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
    iget-object p0, p0, Lki7;->locked:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPerson()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->person:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProtocol()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->protocol:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRead()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->read:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReplyPathPresent()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->replyPathPresent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSeen()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->seen:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServiceCenter()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->serviceCenter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThreadId()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->threadId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lki7;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lki7;->type:Ljava/lang/Integer;

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
    iget-object v2, p0, Lki7;->threadId:Ljava/lang/Long;

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
    iget-object v2, p0, Lki7;->address:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lki7;->date:Ljava/lang/Long;

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
    iget-object v2, p0, Lki7;->dateSent:Ljava/lang/Long;

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
    iget-object v2, p0, Lki7;->read:Ljava/lang/Integer;

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
    iget-object v2, p0, Lki7;->seen:Ljava/lang/Integer;

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
    iget-object v2, p0, Lki7;->status:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lki7;->subject:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lki7;->body:Ljava/lang/String;

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
    iget-object v2, p0, Lki7;->person:Ljava/lang/Integer;

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
    iget-object v2, p0, Lki7;->protocol:Ljava/lang/Integer;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lki7;->replyPathPresent:Ljava/lang/Integer;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lki7;->serviceCenter:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lki7;->locked:Ljava/lang/Integer;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lki7;->errorCode:Ljava/lang/Integer;

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
    iget-object p0, p0, Lki7;->creator:Ljava/lang/String;

    .line 210
    .line 211
    if-nez p0, :cond_10

    .line 212
    .line 213
    goto :goto_10

    .line 214
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    :goto_10
    add-int/2addr v0, v1

    .line 219
    return v0
.end method

.method public final isInbox()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lki7;->type:Ljava/lang/Integer;

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

.method public final setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->address:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->body:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCreator(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->creator:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->date:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateSent(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->dateSent:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorCode(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->errorCode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocked(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->locked:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setPerson(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->person:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setProtocol(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->protocol:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setRead(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->read:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setReplyPathPresent(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->replyPathPresent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setSeen(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->seen:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setServiceCenter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->serviceCenter:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setThreadId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->threadId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki7;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lki7;->type:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, v0, Lki7;->threadId:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, v0, Lki7;->address:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lki7;->date:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v5, v0, Lki7;->dateSent:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v6, v0, Lki7;->read:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v7, v0, Lki7;->seen:Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v8, v0, Lki7;->status:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lki7;->subject:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lki7;->body:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lki7;->person:Ljava/lang/Integer;

    .line 24
    .line 25
    iget-object v12, v0, Lki7;->protocol:Ljava/lang/Integer;

    .line 26
    .line 27
    iget-object v13, v0, Lki7;->replyPathPresent:Ljava/lang/Integer;

    .line 28
    .line 29
    iget-object v14, v0, Lki7;->serviceCenter:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lki7;->locked:Ljava/lang/Integer;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lki7;->errorCode:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v0, v0, Lki7;->creator:Ljava/lang/String;

    .line 38
    .line 39
    move-object/from16 p0, v0

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    move-object/from16 v17, v15

    .line 44
    .line 45
    const-string v15, "SmsItem(type="

    .line 46
    .line 47
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", threadId="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", address="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ", date="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", dateSent="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ", read="

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", seen="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", status="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ", subject="

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", body="

    .line 115
    .line 116
    const-string v2, ", person="

    .line 117
    .line 118
    invoke-static {v0, v9, v1, v10, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", protocol="

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", replyPathPresent="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", serviceCenter="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", locked="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    move-object/from16 v1, v16

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, ", errorCode="

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-object/from16 v1, v17

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ", creator="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, ")"

    .line 174
    .line 175
    move-object/from16 v2, p0

    .line 176
    .line 177
    invoke-static {v0, v2, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lki7;->type:Ljava/lang/Integer;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p2, p0, Lki7;->threadId:Ljava/lang/Long;

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    :goto_1
    iget-object p2, p0, Lki7;->address:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lki7;->date:Ljava/lang/Long;

    .line 34
    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    iget-object p2, p0, Lki7;->dateSent:Ljava/lang/Long;

    .line 45
    .line 46
    if-nez p2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 53
    .line 54
    .line 55
    :goto_3
    iget-object p2, p0, Lki7;->read:Ljava/lang/Integer;

    .line 56
    .line 57
    if-nez p2, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_4
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 64
    .line 65
    .line 66
    :goto_4
    iget-object p2, p0, Lki7;->seen:Ljava/lang/Integer;

    .line 67
    .line 68
    if-nez p2, :cond_5

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_5
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 75
    .line 76
    .line 77
    :goto_5
    iget-object p2, p0, Lki7;->status:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lki7;->subject:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lki7;->body:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lki7;->person:Ljava/lang/Integer;

    .line 93
    .line 94
    if-nez p2, :cond_6

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_6
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 101
    .line 102
    .line 103
    :goto_6
    iget-object p2, p0, Lki7;->protocol:Ljava/lang/Integer;

    .line 104
    .line 105
    if-nez p2, :cond_7

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_7
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 112
    .line 113
    .line 114
    :goto_7
    iget-object p2, p0, Lki7;->replyPathPresent:Ljava/lang/Integer;

    .line 115
    .line 116
    if-nez p2, :cond_8

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_8

    .line 122
    :cond_8
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 123
    .line 124
    .line 125
    :goto_8
    iget-object p2, p0, Lki7;->serviceCenter:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lki7;->locked:Ljava/lang/Integer;

    .line 131
    .line 132
    if-nez p2, :cond_9

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_9

    .line 138
    :cond_9
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 139
    .line 140
    .line 141
    :goto_9
    iget-object p2, p0, Lki7;->errorCode:Ljava/lang/Integer;

    .line 142
    .line 143
    if-nez p2, :cond_a

    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_a

    .line 149
    :cond_a
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 150
    .line 151
    .line 152
    :goto_a
    iget-object p0, p0, Lki7;->creator:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method
