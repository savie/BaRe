.class public final Lxg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxg5$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lxg5;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lxg5$a;

.field private static final logTag$delegate:Los4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Los4;"
        }
    .end annotation
.end field


# instance fields
.field private cachedFileName:Ljava/lang/String;

.field private charset:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "chset"
    .end annotation
.end field

.field private contentDisposition:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "cd"
    .end annotation
.end field

.field private contentId:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "cid"
    .end annotation
.end field

.field private contentLocation:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "cl"
    .end annotation
.end field

.field private contentStartType:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "ctt_s"
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "ct"
    .end annotation
.end field

.field private contentTypeType:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "ctt_t"
    .end annotation
.end field

.field private dataLocation:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "_data"
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "fn"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "_id"
    .end annotation
.end field

.field private mid:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "mid"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "name"
    .end annotation
.end field

.field private seq:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "seq"
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "text"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lxg5$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lxg5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lxg5;->Companion:Lxg5$a;

    .line 8
    .line 9
    new-instance v0, Lxg5$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lxg5$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lxg5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    new-instance v0, Lzj;

    .line 17
    .line 18
    const/16 v1, 0xb

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lzj;-><init>(I)V

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
    sput-object v1, Lxg5;->logTag$delegate:Los4;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 18

    const/16 v16, 0x7fff

    const/16 v17, 0x0

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

    move-object/from16 v0, p0

    .line 18
    invoke-direct/range {v0 .. v17}, Lxg5;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lxg5;->id:Ljava/lang/Long;

    .line 4
    iput-object p2, p0, Lxg5;->mid:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Lxg5;->seq:Ljava/lang/Integer;

    .line 6
    iput-object p4, p0, Lxg5;->contentType:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lxg5;->name:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lxg5;->charset:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lxg5;->fileName:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lxg5;->contentDisposition:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lxg5;->contentId:Ljava/lang/Integer;

    .line 12
    iput-object p10, p0, Lxg5;->contentLocation:Ljava/lang/Integer;

    .line 13
    iput-object p11, p0, Lxg5;->contentStartType:Ljava/lang/Integer;

    .line 14
    iput-object p12, p0, Lxg5;->contentTypeType:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lxg5;->dataLocation:Ljava/lang/Integer;

    .line 16
    iput-object p14, p0, Lxg5;->text:Ljava/lang/String;

    .line 17
    iput-object p15, p0, Lxg5;->cachedFileName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    move-object v14, v2

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    move-object v15, v2

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    move-object/from16 p16, v2

    :goto_e
    move-object/from16 p1, p0

    move-object/from16 p2, v1

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

    goto :goto_f

    :cond_e
    move-object/from16 p16, p15

    goto :goto_e

    .line 1
    :goto_f
    invoke-direct/range {p1 .. p16}, Lxg5;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getLogTag$delegate$cp()Los4;
    .locals 1

    .line 1
    sget-object v0, Lxg5;->logTag$delegate:Los4;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lxg5;->logTag_delegate$lambda$0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic copy$default(Lxg5;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lxg5;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 1
    iget-object v2, v0, Lxg5;->id:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lxg5;->mid:Ljava/lang/Long;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lxg5;->seq:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lxg5;->contentType:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lxg5;->name:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lxg5;->charset:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lxg5;->fileName:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lxg5;->contentDisposition:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lxg5;->contentId:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lxg5;->contentLocation:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lxg5;->contentStartType:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lxg5;->contentTypeType:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lxg5;->dataLocation:Ljava/lang/Integer;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lxg5;->text:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lxg5;->cachedFileName:Ljava/lang/String;

    move-object/from16 p16, v1

    :goto_e
    move-object/from16 p1, v0

    move-object/from16 p2, v2

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

    goto :goto_f

    :cond_e
    move-object/from16 p16, p15

    goto :goto_e

    :goto_f
    invoke-virtual/range {p1 .. p16}, Lxg5;->copy(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lxg5;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lxg5;)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-static {p0}, Lxg5;->getPartInputStream$lambda$0(Lxg5;)Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final generateFileName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object p0, Lnh4;->d:Lnh4;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1, v1}, Lnh4;->i(IZZ)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method private final getPartInputStream()Ljava/io/InputStream;
    .locals 4

    .line 1
    sget-object v0, Lxg5;->Companion:Lxg5$a;

    .line 2
    .line 3
    invoke-static {v0}, Lxg5$a;->access$getLogTag(Lxg5$a;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lxq4;

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-direct {v1, p0, v2}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    const/16 p0, 0xa

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v2, v3, v1, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/io/InputStream;

    .line 22
    .line 23
    return-object p0
.end method

.method private static final getPartInputStream$lambda$0(Lxg5;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lxg5;->getPartUri()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 8
    .line 9
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method private final isPlainText()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lxg5;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const-string v1, "text/plain"

    .line 7
    .line 8
    invoke-static {p0, v1, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    return v0
.end method

.method private static final logTag_delegate$lambda$0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MmsPartItem"

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentLocation:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentStartType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentTypeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component13()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->dataLocation:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component14()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component15()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->cachedFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->mid:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->seq:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->charset:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentDisposition:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lxg5;
    .locals 16

    .line 1
    new-instance v0, Lxg5;

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    move-object/from16 v7, p7

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
    move-object/from16 v12, p12

    .line 26
    .line 27
    move-object/from16 v13, p13

    .line 28
    .line 29
    move-object/from16 v14, p14

    .line 30
    .line 31
    move-object/from16 v15, p15

    .line 32
    .line 33
    invoke-direct/range {v0 .. v15}, Lxg5;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
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
    instance-of v1, p1, Lxg5;

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
    check-cast p1, Lxg5;

    .line 12
    .line 13
    iget-object v1, p0, Lxg5;->id:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v3, p1, Lxg5;->id:Ljava/lang/Long;

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
    iget-object v1, p0, Lxg5;->mid:Ljava/lang/Long;

    .line 25
    .line 26
    iget-object v3, p1, Lxg5;->mid:Ljava/lang/Long;

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
    iget-object v1, p0, Lxg5;->seq:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v3, p1, Lxg5;->seq:Ljava/lang/Integer;

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
    iget-object v1, p0, Lxg5;->contentType:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lxg5;->contentType:Ljava/lang/String;

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
    iget-object v1, p0, Lxg5;->name:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lxg5;->name:Ljava/lang/String;

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
    iget-object v1, p0, Lxg5;->charset:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lxg5;->charset:Ljava/lang/String;

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
    iget-object v1, p0, Lxg5;->fileName:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lxg5;->fileName:Ljava/lang/String;

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
    iget-object v1, p0, Lxg5;->contentDisposition:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lxg5;->contentDisposition:Ljava/lang/String;

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
    iget-object v1, p0, Lxg5;->contentId:Ljava/lang/Integer;

    .line 102
    .line 103
    iget-object v3, p1, Lxg5;->contentId:Ljava/lang/Integer;

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
    iget-object v1, p0, Lxg5;->contentLocation:Ljava/lang/Integer;

    .line 113
    .line 114
    iget-object v3, p1, Lxg5;->contentLocation:Ljava/lang/Integer;

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
    iget-object v1, p0, Lxg5;->contentStartType:Ljava/lang/Integer;

    .line 124
    .line 125
    iget-object v3, p1, Lxg5;->contentStartType:Ljava/lang/Integer;

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
    iget-object v1, p0, Lxg5;->contentTypeType:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lxg5;->contentTypeType:Ljava/lang/String;

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
    iget-object v1, p0, Lxg5;->dataLocation:Ljava/lang/Integer;

    .line 146
    .line 147
    iget-object v3, p1, Lxg5;->dataLocation:Ljava/lang/Integer;

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
    iget-object v1, p0, Lxg5;->text:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p1, Lxg5;->text:Ljava/lang/String;

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
    iget-object p0, p0, Lxg5;->cachedFileName:Ljava/lang/String;

    .line 168
    .line 169
    iget-object p1, p1, Lxg5;->cachedFileName:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-nez p0, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    return v0
.end method

.method public final getCachedFileName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->cachedFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCharset()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->charset:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentDisposition()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentDisposition:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentId()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentLocation()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentLocation:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentStartType()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentStartType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentTypeType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->contentTypeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataLocation()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->dataLocation:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMid()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->mid:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPartUri()Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-direct {p0}, Lxg5;->isPlainText()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lxg5;->id:Ljava/lang/Long;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    sget-object p0, Lxg5;->Companion:Lxg5$a;

    .line 17
    .line 18
    invoke-static {p0}, Lxg5$a;->access$getCONTENT_URI(Lxg5$a;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    return-object v1
.end method

.method public final getSeq()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->seq:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxg5;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lxg5;->id:Ljava/lang/Long;

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
    iget-object v2, p0, Lxg5;->mid:Ljava/lang/Long;

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
    iget-object v2, p0, Lxg5;->seq:Ljava/lang/Integer;

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
    iget-object v2, p0, Lxg5;->contentType:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lxg5;->name:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lxg5;->charset:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lxg5;->fileName:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lxg5;->contentDisposition:Ljava/lang/String;

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
    iget-object v2, p0, Lxg5;->contentId:Ljava/lang/Integer;

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
    iget-object v2, p0, Lxg5;->contentLocation:Ljava/lang/Integer;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lxg5;->contentStartType:Ljava/lang/Integer;

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
    iget-object v2, p0, Lxg5;->contentTypeType:Ljava/lang/String;

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
    iget-object v2, p0, Lxg5;->dataLocation:Ljava/lang/Integer;

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
    iget-object v2, p0, Lxg5;->text:Ljava/lang/String;

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
    iget-object p0, p0, Lxg5;->cachedFileName:Ljava/lang/String;

    .line 184
    .line 185
    if-nez p0, :cond_e

    .line 186
    .line 187
    goto :goto_e

    .line 188
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    :goto_e
    add-int/2addr v0, v1

    .line 193
    return v0
.end method

.method public final isImage()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lxg5;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const-string v1, "image"

    .line 7
    .line 8
    invoke-static {p0, v1, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    return v0
.end method

.method public final isSmil()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lxg5;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "application/smil"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isText()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lxg5;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const-string v1, "text"

    .line 7
    .line 8
    invoke-static {p0, v1, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    return v0
.end method

.method public final savePartFileToCache(Lq63;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lxg5;->isPlainText()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lq63;->j()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lq63;->E(Lq63;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    :cond_2
    const/4 p2, 0x0

    .line 30
    :cond_3
    if-nez p2, :cond_4

    .line 31
    .line 32
    invoke-direct {p0}, Lxg5;->generateFileName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :cond_4
    invoke-virtual {p1, p2}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lq63;->j()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    invoke-direct {p0}, Lxg5;->generateFileName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    :goto_0
    invoke-direct {p0}, Lxg5;->getPartInputStream()Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p2, v0}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 63
    .line 64
    .line 65
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/high16 v0, 0x40000

    .line 67
    .line 68
    :try_start_1
    invoke-static {p1, v1, v0}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    .line 71
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    move-object p0, v0

    .line 80
    goto :goto_1

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    move-object p0, v0

    .line 83
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 84
    :catchall_2
    move-exception v0

    .line 85
    move-object p2, v0

    .line 86
    :try_start_5
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    :goto_1
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 91
    :catchall_3
    move-exception v0

    .line 92
    move-object p2, v0

    .line 93
    :try_start_7
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p2

    .line 97
    :cond_6
    :goto_2
    invoke-virtual {p2}, Lq63;->j()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p2}, Lq63;->A()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    const-wide/16 v2, 0x0

    .line 108
    .line 109
    cmp-long p1, v0, v2

    .line 110
    .line 111
    if-lez p1, :cond_7

    .line 112
    .line 113
    invoke-virtual {p2}, Lq63;->p()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lxg5;->cachedFileName:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 118
    .line 119
    :cond_7
    :goto_3
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    move-object p0, v0

    .line 122
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 123
    .line 124
    sget-object p1, Lxg5;->Companion:Lxg5$a;

    .line 125
    .line 126
    invoke-static {p1}, Lxg5$a;->access$getLogTag(Lxg5$a;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {p0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const-string p1, "savePartFileToCache: "

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const/4 v4, 0x4

    .line 141
    const/4 v5, 0x0

    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final setCachedFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->cachedFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCharset(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->charset:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentDisposition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->contentDisposition:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->contentId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentLocation(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->contentLocation:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentStartType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->contentStartType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentTypeType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->contentTypeType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataLocation(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->dataLocation:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setMid(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->mid:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSeq(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->seq:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxg5;->text:Ljava/lang/String;

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
    iget-object v1, v0, Lxg5;->id:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, v0, Lxg5;->mid:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, v0, Lxg5;->seq:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v4, v0, Lxg5;->contentType:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lxg5;->name:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lxg5;->charset:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lxg5;->fileName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lxg5;->contentDisposition:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lxg5;->contentId:Ljava/lang/Integer;

    .line 20
    .line 21
    iget-object v10, v0, Lxg5;->contentLocation:Ljava/lang/Integer;

    .line 22
    .line 23
    iget-object v11, v0, Lxg5;->contentStartType:Ljava/lang/Integer;

    .line 24
    .line 25
    iget-object v12, v0, Lxg5;->contentTypeType:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lxg5;->dataLocation:Ljava/lang/Integer;

    .line 28
    .line 29
    iget-object v14, v0, Lxg5;->text:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v0, v0, Lxg5;->cachedFileName:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v15, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    move-object/from16 p0, v0

    .line 36
    .line 37
    const-string v0, "MmsPartItem(id="

    .line 38
    .line 39
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", mid="

    .line 46
    .line 47
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ", seq="

    .line 54
    .line 55
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", contentType="

    .line 62
    .line 63
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ", name="

    .line 70
    .line 71
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", charset="

    .line 75
    .line 76
    const-string v1, ", fileName="

    .line 77
    .line 78
    invoke-static {v15, v5, v0, v6, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, ", contentDisposition="

    .line 82
    .line 83
    const-string v1, ", contentId="

    .line 84
    .line 85
    invoke-static {v15, v7, v0, v8, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, ", contentLocation="

    .line 92
    .line 93
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, ", contentStartType="

    .line 100
    .line 101
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, ", contentTypeType="

    .line 108
    .line 109
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, ", dataLocation="

    .line 116
    .line 117
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, ", text="

    .line 124
    .line 125
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v0, ", cachedFileName="

    .line 132
    .line 133
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, ")"

    .line 137
    .line 138
    move-object/from16 v1, p0

    .line 139
    .line 140
    invoke-static {v15, v1, v0}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lxg5;->id:Ljava/lang/Long;

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
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p2, p0, Lxg5;->mid:Ljava/lang/Long;

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
    iget-object p2, p0, Lxg5;->seq:Ljava/lang/Integer;

    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 37
    .line 38
    .line 39
    :goto_2
    iget-object p2, p0, Lxg5;->contentType:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lxg5;->name:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lxg5;->charset:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lxg5;->fileName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lxg5;->contentDisposition:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lxg5;->contentId:Ljava/lang/Integer;

    .line 65
    .line 66
    if-nez p2, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 73
    .line 74
    .line 75
    :goto_3
    iget-object p2, p0, Lxg5;->contentLocation:Ljava/lang/Integer;

    .line 76
    .line 77
    if-nez p2, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 84
    .line 85
    .line 86
    :goto_4
    iget-object p2, p0, Lxg5;->contentStartType:Ljava/lang/Integer;

    .line 87
    .line 88
    if-nez p2, :cond_5

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_5
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 95
    .line 96
    .line 97
    :goto_5
    iget-object p2, p0, Lxg5;->contentTypeType:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lxg5;->dataLocation:Ljava/lang/Integer;

    .line 103
    .line 104
    if-nez p2, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_6
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 111
    .line 112
    .line 113
    :goto_6
    iget-object p2, p0, Lxg5;->text:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lxg5;->cachedFileName:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method
