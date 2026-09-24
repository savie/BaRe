.class public final Lyl;
.super Lem;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lji;

.field public final c:Z

.field public final d:Ljava/util/List;

.field public final e:Lgv7;

.field public final f:Lgv7;

.field public final g:Lgv7;

.field public final h:Lgv7;


# direct methods
.method public constructor <init>(Lji;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lem;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lyl;->b:Lji;

    .line 8
    .line 9
    iput-boolean p2, p0, Lyl;->c:Z

    .line 10
    .line 11
    sget-object p1, Lxl;->ARCHIVE:Lxl;

    .line 12
    .line 13
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lyl;->d:Ljava/util/List;

    .line 18
    .line 19
    new-instance p1, Lck;

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-direct {p1, p0, p2}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lgv7;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lyl;->e:Lgv7;

    .line 31
    .line 32
    new-instance p1, Ldk;

    .line 33
    .line 34
    const/4 p2, 0x3

    .line 35
    invoke-direct {p1, p0, p2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lgv7;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lyl;->f:Lgv7;

    .line 44
    .line 45
    new-instance p1, Lek;

    .line 46
    .line 47
    const/4 p2, 0x4

    .line 48
    invoke-direct {p1, p0, p2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lgv7;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lyl;->g:Lgv7;

    .line 57
    .line 58
    new-instance p1, Lah;

    .line 59
    .line 60
    invoke-direct {p1, p0, p2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    new-instance p2, Lgv7;

    .line 64
    .line 65
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lyl;->h:Lgv7;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lyl;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-object p0, p0, Lyl;->h:Lgv7;

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
