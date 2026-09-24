.class public Loc4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loc4$e;,
        Loc4$c;,
        Loc4$b;,
        Loc4$f;,
        Loc4$d;,
        Loc4$a;
    }
.end annotation

.annotation runtime Lno6;
    name = "InputSerialization"
.end annotation


# instance fields
.field private a:Loc4$b;
    .annotation runtime Lat2;
        name = "CompressionType"
        required = false
    .end annotation
.end field

.field private b:Loc4$a;
    .annotation runtime Lat2;
        name = "CSV"
        required = false
    .end annotation
.end field

.field private c:Loc4$d;
    .annotation runtime Lat2;
        name = "JSON"
        required = false
    .end annotation
.end field

.field private d:Loc4$f;
    .annotation runtime Lat2;
        name = "Parquet"
        required = false
    .end annotation
.end field


# direct methods
.method private constructor <init>(Loc4$b;Loc4$a;Loc4$d;Loc4$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loc4;->a:Loc4$b;

    .line 5
    .line 6
    iput-object p2, p0, Loc4;->b:Loc4$a;

    .line 7
    .line 8
    iput-object p3, p0, Loc4;->c:Loc4$d;

    .line 9
    .line 10
    iput-object p4, p0, Loc4;->d:Loc4$f;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Loc4$b;ZLjava/lang/Character;Ljava/lang/Character;Loc4$c;Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;)Loc4;
    .locals 9

    .line 1
    new-instance v0, Loc4;

    .line 2
    .line 3
    new-instance v1, Loc4$a;

    .line 4
    .line 5
    move v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    invoke-direct/range {v1 .. v8}, Loc4$a;-><init>(ZLjava/lang/Character;Ljava/lang/Character;Loc4$c;Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-direct {v0, p0, v1, p1, p1}, Loc4;-><init>(Loc4$b;Loc4$a;Loc4$d;Loc4$f;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static b(Loc4$b;Loc4$e;)Loc4;
    .locals 2

    .line 1
    new-instance v0, Loc4;

    .line 2
    .line 3
    new-instance v1, Loc4$d;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Loc4$d;-><init>(Loc4$e;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1, p1}, Loc4;-><init>(Loc4$b;Loc4$a;Loc4$d;Loc4$f;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static c()Loc4;
    .locals 3

    .line 1
    new-instance v0, Loc4;

    .line 2
    .line 3
    new-instance v1, Loc4$f;

    .line 4
    .line 5
    invoke-direct {v1}, Loc4$f;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v2, v2, v2, v1}, Loc4;-><init>(Loc4$b;Loc4$a;Loc4$d;Loc4$f;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
