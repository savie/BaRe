.class public Lpr5$d;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation runtime Lno6;
    name = "Rule"
    strict = false
.end annotation


# instance fields
.field private a:Lkn6;
    .annotation runtime Lat2;
        name = "Mode"
        required = false
    .end annotation

    .annotation runtime Lfy5;
        value = "DefaultRetention"
    .end annotation
.end field

.field private b:Lor5;
    .annotation runtime Lfy5;
        value = "DefaultRetention"
    .end annotation

    .annotation runtime Lut2;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkn6;Lor5;)V
    .locals 0
    .param p1    # Lkn6;
        .annotation runtime Lat2;
            name = "Mode"
            required = false
        .end annotation
    .end param
    .param p2    # Lor5;
        .annotation runtime Lut2;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lpr5$d;->a:Lkn6;

    .line 9
    .line 10
    iput-object p2, p0, Lpr5$d;->b:Lor5;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return-void

    .line 19
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 20
    if-nez p1, :cond_3

    .line 21
    .line 22
    const-string p1, "mode is null"

    .line 23
    .line 24
    invoke-static {p1}, Lc6;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_3
    const-string p1, "duration is null"

    .line 29
    .line 30
    invoke-static {p1}, Lc6;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method


# virtual methods
.method public a()Lor5;
    .locals 0

    .line 1
    iget-object p0, p0, Lpr5$d;->b:Lor5;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Lkn6;
    .locals 0

    .line 1
    iget-object p0, p0, Lpr5$d;->a:Lkn6;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lpr5$d;->a:Lkn6;

    .line 2
    .line 3
    invoke-static {v0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lpr5$d;->b:Lor5;

    .line 8
    .line 9
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, ", duration="

    .line 14
    .line 15
    const-string v2, "}"

    .line 16
    .line 17
    const-string v3, "Rule{mode="

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
