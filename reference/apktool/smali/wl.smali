.class public final Lwl;
.super Lem;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lq63;

.field public final c:Ljava/util/List;

.field public final d:Lgv7;

.field public final e:Lgv7;


# direct methods
.method public constructor <init>(Lq63;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lem;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwl;->b:Lq63;

    .line 5
    .line 6
    sget-object p1, Lxl;->NA:Lxl;

    .line 7
    .line 8
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lwl;->c:Ljava/util/List;

    .line 13
    .line 14
    new-instance p1, Lak;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, p0, v0}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lgv7;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lgv7;-><init>(Lbt3;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lwl;->d:Lgv7;

    .line 26
    .line 27
    new-instance p1, Lbk;

    .line 28
    .line 29
    invoke-direct {p1, p0, v0}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lgv7;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lwl;->e:Lgv7;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lwl;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-object p0, p0, Lwl;->e:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-object p0, p0, Lwl;->d:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
