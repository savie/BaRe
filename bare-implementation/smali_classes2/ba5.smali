.class public final Lba5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lea5;


# direct methods
.method public constructor <init>(Lea5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lba5;->a:Lea5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lgh;)Lni1;
    .locals 4

    .line 1
    new-instance v0, Lfl4;

    .line 2
    .line 3
    invoke-direct {v0}, Lfl4;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "a"

    .line 7
    .line 8
    const-string v2, "uq"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "xfer"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "strg"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "src"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "v"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lgh;->a:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/lang/String;

    .line 51
    .line 52
    sget-object v1, Lda5;->READ_SAFE:Lda5;

    .line 53
    .line 54
    iget-object p0, p0, Lba5;->a:Lea5;

    .line 55
    .line 56
    invoke-virtual {p0, v0, p1, v1}, Lea5;->b(Lfl4;Ljava/lang/String;Lda5;)Lqj4;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance p1, Lni1;

    .line 65
    .line 66
    const-string v0, "cstrg"

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    invoke-virtual {v0}, Lqj4;->l()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move-object v0, v1

    .line 85
    :goto_0
    const-string v2, "mstrg"

    .line 86
    .line 87
    invoke-virtual {p0, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-eqz p0, :cond_1

    .line 92
    .line 93
    invoke-virtual {p0}, Lqj4;->l()J

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :cond_1
    invoke-direct {p1, v0, v1}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 102
    .line 103
    .line 104
    return-object p1
.end method
