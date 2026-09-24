.class public final Lnv6$a;
.super Lhx2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnv6;-><init>(Leo6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Lnw6;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p2, Ljv6;

    invoke-virtual {p0, p1, p2}, Lnv6$a;->bind(Lnw6;Ljv6;)V

    return-void
.end method

.method public bind(Lnw6;Ljv6;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    invoke-virtual {p2}, Ljv6;->getTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-interface {p1, p0, v0, v1}, Lnw6;->e(IJ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljv6;->getMessageType()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-long v0, p0

    .line 20
    const/4 p0, 0x2

    .line 21
    invoke-interface {p1, p0, v0, v1}, Lnw6;->e(IJ)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    invoke-virtual {p2}, Ljv6;->getTitle()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p1, p0, v0}, Lnw6;->C(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x4

    .line 33
    invoke-virtual {p2}, Ljv6;->getMsg()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1, p0, v0}, Lnw6;->C(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljv6;->getColor()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 v0, 0x5

    .line 45
    if-nez p0, :cond_0

    .line 46
    .line 47
    invoke-interface {p1, v0}, Lnw6;->f(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p1, v0, p0}, Lnw6;->C(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    const/4 p0, 0x6

    .line 55
    invoke-virtual {p2}, Ljv6;->getId()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-interface {p1, p0, v0, v1}, Lnw6;->e(IJ)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "INSERT OR REPLACE INTO `SMessage` (`time`,`messageType`,`title`,`msg`,`color`,`id`) VALUES (?,?,?,?,?,nullif(?, 0))"

    .line 2
    .line 3
    return-object p0
.end method
