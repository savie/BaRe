.class public final synthetic Lkz8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Llh6;

.field public final synthetic b:Ltf6;

.field public final synthetic c:Llh6;

.field public final synthetic d:Llh6;


# direct methods
.method public synthetic constructor <init>(Llh6;Ltf6;Llh6;Llh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkz8;->a:Llh6;

    .line 5
    .line 6
    iput-object p2, p0, Lkz8;->b:Ltf6;

    .line 7
    .line 8
    iput-object p3, p0, Lkz8;->c:Llh6;

    .line 9
    .line 10
    iput-object p4, p0, Lkz8;->d:Llh6;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/4 p2, 0x1

    .line 14
    if-ne p1, p2, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lkz8;->a:Llh6;

    .line 17
    .line 18
    iget-object p2, p1, Llh6;->a:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    const-wide/16 v3, 0x18

    .line 24
    .line 25
    cmp-long p2, v0, v3

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    iget-object p2, p0, Lkz8;->b:Ltf6;

    .line 30
    .line 31
    invoke-virtual {p2}, Ltf6;->g()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p1, Llh6;->a:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {p2}, Ltf6;->g()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lkz8;->c:Llh6;

    .line 50
    .line 51
    iput-object p1, v0, Llh6;->a:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p2}, Ltf6;->g()J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p0, p0, Lkz8;->d:Llh6;

    .line 62
    .line 63
    iput-object p1, p0, Llh6;->a:Ljava/lang/Object;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string p0, "bad zip: NTFS extra attribute tag 0x0001 size != 24"

    .line 67
    .line 68
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_1
    const-string p0, "bad zip: NTFS extra attribute tag 0x0001 repeated"

    .line 73
    .line 74
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_2
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 79
    .line 80
    return-object p0
.end method
