.class public final Lyx;
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
    iput p2, p0, Lyx;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lyx;->b:Ljava/lang/Object;

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
    .locals 1

    .line 1
    iget v0, p0, Lyx;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lyx;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcz3;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcz3;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    check-cast p1, Lpw5;

    .line 18
    .line 19
    sget-object p0, Lo54;->a:Lai6;

    .line 20
    .line 21
    iget-object p0, p1, Lpw5;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Ls54;

    .line 24
    .line 25
    invoke-static {p0}, Lo54;->a(Ls54;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p2, Lpw5;

    .line 34
    .line 35
    iget-object p1, p2, Lpw5;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Ls54;

    .line 38
    .line 39
    invoke-static {p1}, Lo54;->a(Ls54;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    :goto_0
    return p0

    .line 52
    :pswitch_0
    check-cast p0, Lmt3;

    .line 53
    .line 54
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/Comparable;

    .line 59
    .line 60
    invoke-interface {p0, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Ljava/lang/Comparable;

    .line 65
    .line 66
    invoke-static {p1, p0}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :pswitch_1
    check-cast p0, Ldq;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/lang/Comparable;

    .line 78
    .line 79
    invoke-virtual {p0, p2}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Ljava/lang/Comparable;

    .line 84
    .line 85
    invoke-static {p1, p0}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    return p0

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
