.class public final Lcz3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcz3;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget p0, p0, Lcz3;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {}, Lj05;->b()Ljava/util/Locale;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast p2, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 24
    .line 25
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Lj05;->b()Ljava/util/Locale;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :pswitch_0
    check-cast p1, Ljava/net/InetAddress;

    .line 46
    .line 47
    instance-of p0, p1, Ljava/net/Inet4Address;

    .line 48
    .line 49
    xor-int/lit8 p0, p0, 0x1

    .line 50
    .line 51
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p2, Ljava/net/InetAddress;

    .line 56
    .line 57
    instance-of p1, p2, Ljava/net/Inet4Address;

    .line 58
    .line 59
    xor-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0

    .line 70
    :pswitch_1
    check-cast p2, Lpw5;

    .line 71
    .line 72
    iget-object p0, p2, Lpw5;->a:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Ljava/lang/Comparable;

    .line 75
    .line 76
    check-cast p1, Lpw5;

    .line 77
    .line 78
    iget-object p1, p1, Lpw5;->a:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Ljava/lang/Comparable;

    .line 81
    .line 82
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    return p0

    .line 87
    :pswitch_2
    check-cast p1, Lji;

    .line 88
    .line 89
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p2, Lji;

    .line 94
    .line 95
    invoke-virtual {p2}, Lji;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sget-object p2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 100
    .line 101
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    return p0

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
