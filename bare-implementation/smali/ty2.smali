.class public final Lty2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lty2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lty2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, Lty2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lty2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lux5;

    .line 11
    .line 12
    check-cast p0, Lux5;

    .line 13
    .line 14
    if-eq p1, p0, :cond_0

    .line 15
    .line 16
    move p1, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v2

    .line 19
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p2, Lux5;

    .line 24
    .line 25
    if-eq p2, p0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v2

    .line 29
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p1, p0}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :pswitch_0
    check-cast p1, Lk31;

    .line 39
    .line 40
    check-cast p2, Lk31;

    .line 41
    .line 42
    iget-object v0, p1, Lk31;->d:Lm61;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p2, Lk31;->d:Lm61;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v1, v2

    .line 52
    :goto_2
    invoke-static {v1}, Lzm5;->s(Z)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lhk5;

    .line 56
    .line 57
    iget-object v1, p1, Lk31;->d:Lm61;

    .line 58
    .line 59
    iget-object p1, p1, Lk31;->b:Lsb4;

    .line 60
    .line 61
    iget-object p1, p1, Lsb4;->a:Lqn5;

    .line 62
    .line 63
    invoke-direct {v0, v1, p1}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lhk5;

    .line 67
    .line 68
    iget-object v1, p2, Lk31;->d:Lm61;

    .line 69
    .line 70
    iget-object p2, p2, Lk31;->b:Lsb4;

    .line 71
    .line 72
    iget-object p2, p2, Lsb4;->a:Lqn5;

    .line 73
    .line 74
    invoke-direct {p1, v1, p2}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 75
    .line 76
    .line 77
    check-cast p0, Lh80;

    .line 78
    .line 79
    iget-object p0, p0, Lh80;->c:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Lnb4;

    .line 82
    .line 83
    invoke-interface {p0, v0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
