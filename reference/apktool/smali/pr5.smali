.class public Lpr5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpr5$c;,
        Lpr5$a;,
        Lpr5$b;,
        Lpr5$d;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "ObjectLockConfiguration"
    strict = false
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "ObjectLockEnabled"
    .end annotation
.end field

.field private b:Lpr5$d;
    .annotation runtime Lat2;
        name = "Rule"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "Enabled"

    iput-object v0, p0, Lpr5;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lkn6;Lor5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Enabled"

    .line 5
    .line 6
    iput-object v0, p0, Lpr5;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lpr5$d;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lpr5$d;-><init>(Lkn6;Lor5;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lpr5;->b:Lpr5$d;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()Lor5;
    .locals 0

    .line 1
    iget-object p0, p0, Lpr5;->b:Lpr5$d;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lpr5$d;->a()Lor5;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public b()Lkn6;
    .locals 0

    .line 1
    iget-object p0, p0, Lpr5;->b:Lpr5$d;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lpr5$d;->b()Lkn6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lpr5;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lpr5;->b:Lpr5$d;

    .line 8
    .line 9
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, ", rule="

    .line 14
    .line 15
    const-string v2, "}"

    .line 16
    .line 17
    const-string v3, "ObjectLockConfiguration{objectLockEnabled="

    .line 18
    .line 19
    invoke-static {v3, v0, v1, p0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
