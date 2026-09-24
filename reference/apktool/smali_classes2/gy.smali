.class public final Lgy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lgy;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lgy;->b:Ljava/util/Comparator;

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
    iget v0, p0, Lgy;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lgy;->b:Ljava/util/Comparator;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Luk0;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Luk0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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
    iget-object p0, p1, Lpw5;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Ls54;

    .line 22
    .line 23
    iget-object p0, p0, Ls54;->c:Ljava/lang/String;

    .line 24
    .line 25
    check-cast p2, Lpw5;

    .line 26
    .line 27
    iget-object p1, p2, Lpw5;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ls54;

    .line 30
    .line 31
    iget-object p1, p1, Ls54;->c:Ljava/lang/String;

    .line 32
    .line 33
    sget-object p2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 34
    .line 35
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    :goto_0
    return p0

    .line 40
    :pswitch_0
    check-cast p0, Lfy;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lfy;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    check-cast p1, Lji;

    .line 50
    .line 51
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p2, Lji;

    .line 56
    .line 57
    invoke-virtual {p2}, Lji;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    :goto_1
    return p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
