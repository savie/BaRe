.class public final synthetic Ll96;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrt3;


# instance fields
.field public final synthetic a:Ljh6;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljh6;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll96;->a:Ljh6;

    .line 5
    .line 6
    iput-object p2, p0, Ll96;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    check-cast p3, Lp96;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p3, p2}, Lp96;->e(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p3, p2}, Lp96;->b(I)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Llh6;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance p3, Ljh6;

    .line 38
    .line 39
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljh6;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v1, Ljh6;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lp96;

    .line 53
    .line 54
    invoke-direct {v2, p1}, Lp96;-><init>([B)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lm96;

    .line 58
    .line 59
    invoke-direct {p1, p2, p3, v0, v1}, Lm96;-><init>(Llh6;Ljh6;Ljh6;Ljh6;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Lp96;->a(Lrt3;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p2, Llh6;->a:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Lpw5;

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget-object p2, p1, Lpw5;->a:Ljava/lang/Object;

    .line 72
    .line 73
    move-object v3, p2

    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    iget-object p1, p1, Lpw5;->b:Ljava/lang/Object;

    .line 77
    .line 78
    move-object v4, p1

    .line 79
    check-cast v4, [B

    .line 80
    .line 81
    new-instance v2, Li48;

    .line 82
    .line 83
    iget v5, v0, Ljh6;->a:I

    .line 84
    .line 85
    iget v6, p3, Ljh6;->a:I

    .line 86
    .line 87
    iget v7, v1, Ljh6;->a:I

    .line 88
    .line 89
    invoke-direct/range {v2 .. v7}, Li48;-><init>(Ljava/lang/String;[BIII)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Ll96;->b:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const-string p0, "Missing key data"

    .line 99
    .line 100
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 p0, 0x0

    .line 104
    return-object p0

    .line 105
    :cond_2
    invoke-virtual {p3, p2}, Lp96;->d(I)J

    .line 106
    .line 107
    .line 108
    move-result-wide p1

    .line 109
    long-to-int p1, p1

    .line 110
    iget-object p0, p0, Ll96;->a:Ljh6;

    .line 111
    .line 112
    iput p1, p0, Ljh6;->a:I

    .line 113
    .line 114
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 115
    .line 116
    return-object p0
.end method
