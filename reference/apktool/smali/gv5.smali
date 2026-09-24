.class public Lgv5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgv5$c;,
        Lgv5$b;,
        Lgv5$a;
    }
.end annotation

.annotation runtime Lno6;
    name = "OutputSerialization"
.end annotation


# instance fields
.field private a:Lgv5$a;
    .annotation runtime Lat2;
        name = "CSV"
        required = false
    .end annotation
.end field

.field private b:Lgv5$b;
    .annotation runtime Lat2;
        name = "JSON"
        required = false
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lgv5$a;Lgv5$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgv5;->a:Lgv5$a;

    .line 5
    .line 6
    iput-object p2, p0, Lgv5;->b:Lgv5$b;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;Lgv5$c;Ljava/lang/Character;)Lgv5;
    .locals 7

    .line 1
    new-instance v0, Lgv5;

    .line 2
    .line 3
    new-instance v1, Lgv5$a;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    move-object v6, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lgv5$a;-><init>(Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;Lgv5$c;Ljava/lang/Character;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-direct {v0, v1, p0}, Lgv5;-><init>(Lgv5$a;Lgv5$b;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static b(Ljava/lang/Character;)Lgv5;
    .locals 2

    .line 1
    new-instance v0, Lgv5;

    .line 2
    .line 3
    new-instance v1, Lgv5$b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lgv5$b;-><init>(Ljava/lang/Character;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lgv5;-><init>(Lgv5$a;Lgv5$b;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
