.class public final synthetic Lty;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljh6;

.field public final synthetic c:Luy$a;

.field public final synthetic d:Lqy;

.field public final synthetic e:Lxy;

.field public final synthetic f:Luy;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljh6;Luy$a;Lqy;Lxy;Luy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lty;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lty;->b:Ljh6;

    .line 7
    .line 8
    iput-object p3, p0, Lty;->c:Luy$a;

    .line 9
    .line 10
    iput-object p4, p0, Lty;->d:Lqy;

    .line 11
    .line 12
    iput-object p5, p0, Lty;->e:Lxy;

    .line 13
    .line 14
    iput-object p6, p0, Lty;->f:Luy;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lty;->d:Lqy;

    .line 2
    .line 3
    iget-object p2, p1, Lqy;->b:Loy;

    .line 4
    .line 5
    iget-object v0, p1, Lqy;->a:Loy;

    .line 6
    .line 7
    iget-object v1, p0, Lty;->b:Ljh6;

    .line 8
    .line 9
    iget v1, v1, Ljh6;->a:I

    .line 10
    .line 11
    iget-object v2, p0, Lty;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Loy;

    .line 18
    .line 19
    sget-object v2, Lvy;->a:[I

    .line 20
    .line 21
    iget-object v3, p0, Lty;->c:Luy$a;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    aget v2, v2, v3

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x2

    .line 31
    const/4 v5, 0x1

    .line 32
    if-eq v2, v5, :cond_5

    .line 33
    .line 34
    if-ne v2, v4, :cond_4

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    invoke-static {p1, v3, v3, v5}, Lqy;->b(Lqy;Loy;Loy;I)Lqy;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-nez v0, :cond_1

    .line 44
    .line 45
    new-instance p1, Lqy;

    .line 46
    .line 47
    invoke-direct {p1, v1, v4}, Lqy;-><init>(Loy;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    if-ne v1, v0, :cond_3

    .line 52
    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance p1, Lqy;

    .line 57
    .line 58
    invoke-direct {p1, p2, v1}, Lqy;-><init>(Loy;Loy;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-static {p1, v3, v1, v5}, Lqy;->b(Lqy;Loy;Loy;I)Lqy;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-static {}, Lq;->j()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    if-nez v1, :cond_6

    .line 72
    .line 73
    new-instance p1, Lqy;

    .line 74
    .line 75
    const/4 p2, 0x3

    .line 76
    invoke-direct {p1, v3, p2}, Lqy;-><init>(Loy;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_6
    if-ne v1, p2, :cond_7

    .line 81
    .line 82
    new-instance p1, Lqy;

    .line 83
    .line 84
    invoke-direct {p1, v1, v0}, Lqy;-><init>(Loy;Loy;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_7
    invoke-static {p1, v1, v3, v4}, Lqy;->b(Lqy;Loy;Loy;I)Lqy;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_0
    iget-object p2, p0, Lty;->e:Lxy;

    .line 93
    .line 94
    invoke-static {p2, p1}, Lho6;->S(Lxy;Lqy;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lty;->f:Luy;

    .line 98
    .line 99
    invoke-virtual {p0}, Luy;->l()V

    .line 100
    .line 101
    .line 102
    return-void
.end method
