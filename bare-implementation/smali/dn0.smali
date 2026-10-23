.class public abstract Ldn0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Expression"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ExpressionType"
    .end annotation
.end field

.field private c:Loc4;
    .annotation runtime Lat2;
        name = "InputSerialization"
    .end annotation
.end field

.field private d:Lgv5;
    .annotation runtime Lat2;
        name = "OutputSerialization"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Loc4;Lgv5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SQL"

    .line 5
    .line 6
    iput-object v0, p0, Ldn0;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "Expression must not be null"

    .line 9
    .line 10
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ldn0;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "InputSerialization must not be null"

    .line 16
    .line 17
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Ldn0;->c:Loc4;

    .line 21
    .line 22
    const-string p1, "OutputSerialization must not be null"

    .line 23
    .line 24
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, Ldn0;->d:Lgv5;

    .line 28
    .line 29
    return-void
.end method
