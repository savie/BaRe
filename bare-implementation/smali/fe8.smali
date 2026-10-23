.class public final Lfe8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lch5;


# static fields
.field public static final b:Lfe8;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfe8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lfe8;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lfe8;->b:Lfe8;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lfe8;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lfe8;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    check-cast p1, Loy3;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :goto_0
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :pswitch_1
    check-cast p1, Lsx3;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lbh5;
    .locals 0

    .line 1
    iget p0, p0, Lfe8;->a:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    check-cast p1, Loy3;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p1, Loy3;->a:Lyn8;

    .line 18
    .line 19
    iget-object p0, p0, Lyn8;->a:Lq63;

    .line 20
    .line 21
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 p3, 0x1

    .line 30
    if-lez p0, :cond_0

    .line 31
    .line 32
    move p2, p3

    .line 33
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p2, Lnr5;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Lvx3;

    .line 43
    .line 44
    invoke-direct {p0, p1, p3}, Lvx3;-><init>(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lbh5;

    .line 48
    .line 49
    invoke-direct {p1, p2, p0}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_1
    check-cast p1, Lsx3;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance p0, Lbh5;

    .line 62
    .line 63
    new-instance p3, Lnr5;

    .line 64
    .line 65
    invoke-virtual {p1}, Lsx3;->a()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    invoke-direct {p3, p4}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance p4, Lvx3;

    .line 73
    .line 74
    invoke-direct {p4, p1, p2}, Lvx3;-><init>(Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p3, p4}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_2
    new-instance p0, Lbh5;

    .line 82
    .line 83
    new-instance p2, Lnr5;

    .line 84
    .line 85
    invoke-direct {p2, p1}, Lnr5;-><init>(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance p3, Lvx3;

    .line 89
    .line 90
    const/4 p4, 0x2

    .line 91
    invoke-direct {p3, p1, p4}, Lvx3;-><init>(Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p2, p3}, Lbh5;-><init>(Ljo4;Lra2;)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
