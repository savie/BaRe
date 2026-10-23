.class public Lpm6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpm6$h;,
        Lpm6$b;,
        Lpm6$a;,
        Lpm6$e;,
        Lpm6$d;,
        Lpm6$f;,
        Lpm6$c;,
        Lpm6$g;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "RestoreRequest"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation runtime Lat2;
        name = "Days"
        required = false
    .end annotation
.end field

.field private b:Lpm6$c;
    .annotation runtime Lat2;
        name = "GlacierJobParameters"
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Type"
        required = false
    .end annotation
.end field

.field private d:Lpm6$g;
    .annotation runtime Lat2;
        name = "Tier"
        required = false
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Description"
        required = false
    .end annotation
.end field

.field private f:Lpm6$f;
    .annotation runtime Lat2;
        name = "SelectParameters"
        required = false
    .end annotation
.end field

.field private g:Lpm6$d;
    .annotation runtime Lat2;
        name = "OutputLocation"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lpm6$c;Lpm6$g;Ljava/lang/String;Lpm6$f;Lpm6$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpm6;->a:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object p2, p0, Lpm6;->b:Lpm6$c;

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    const-string p1, "SELECT"

    .line 11
    .line 12
    iput-object p1, p0, Lpm6;->c:Ljava/lang/String;

    .line 13
    .line 14
    :cond_0
    iput-object p3, p0, Lpm6;->d:Lpm6$g;

    .line 15
    .line 16
    iput-object p4, p0, Lpm6;->e:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p5, p0, Lpm6;->f:Lpm6$f;

    .line 19
    .line 20
    iput-object p6, p0, Lpm6;->g:Lpm6$d;

    .line 21
    .line 22
    return-void
.end method
